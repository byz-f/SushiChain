# Copyright © 2017-2018 The SushiChain Core developers
#
# See the LICENSE file at the top-level directory of this distribution
# for licensing information.
#
# Unless otherwise agreed in a custom licensing agreement with the SushiChain Core developers,
# no part of this software, including this file, may be copied, modified,
# propagated, or distributed except according to the terms contained in the
# LICENSE file.
#
# Removal or modification of this copyright notice is prohibited.

module ::Sushi::Core::Block
  alias Chain = Array(SlowBlock | FastBlock)

  enum BlockKind
    SLOW
    FAST

    def to_json(builder : JSON::Builder)
      builder.string(to_s)
    end
  end
end
