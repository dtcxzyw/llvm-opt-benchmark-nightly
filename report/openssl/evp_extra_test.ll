Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/evp_extra_test?download=true
inline.NumInlined: 34
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@__const.test_EVP_set_default_properties.test_fips_propq = private unnamed_addr constant [27 x i8] c"fips=yes,provider=fizzbang\00", align 16
@.str.109 = private unnamed_addr constant [25 x i8] c"ctx = OSSL_LIB_CTX_new()\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"md = EVP_MD_fetch(ctx, \22sha256\22, NULL)\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"EVP_set_default_properties(ctx, test_propq)\00", align 1
@.str.113 = private unnamed_addr constant [46 x i8] c"md = EVP_MD_fetch(ctx, \22sha256\22, \22-provider\22)\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"-provider\00", align 1
@.str.115 = private unnamed_addr constant [43 x i8] c"EVP_default_properties_enable_fips(ctx, 1)\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"test_fips_propq\00", align 1
@.str.117 = private unnamed_addr constant [43 x i8] c"EVP_default_properties_enable_fips(ctx, 0)\00", align 1
@.str.118 = private unnamed_addr constant [38 x i8] c"EVP_set_default_properties(ctx, NULL)\00", align 1
@.str.119 = private unnamed_addr constant [52 x i8] c"Test does not support a non-default library context\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"membio\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"mdbio\00", align 1
@.str.122 = private unnamed_addr constant [31 x i8] c"BIO_get_md_ctx(mdbio, &md_ctx)\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.124 = private unnamed_addr constant [37 x i8] c"a_md_ctx = md_ctx = EVP_MD_CTX_new()\00", align 1
@.str.125 = private unnamed_addr constant [51 x i8] c"a_md_ctx_verify = md_ctx_verify = EVP_MD_CTX_new()\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"pkey = load_example_rsa_key()\00", align 1
@.str.127 = private unnamed_addr constant [30 x i8] c"pkey = load_example_dsa_key()\00", align 1
@.str.128 = private unnamed_addr constant [31 x i8] c"pkey = load_example_hmac_key()\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.130 = private unnamed_addr constant [49 x i8] c"EVP_DigestSignInit(md_ctx, NULL, md, NULL, pkey)\00", align 1
@.str.131 = private unnamed_addr constant [51 x i8] c"EVP_DigestSignInit(md_ctx, NULL, NULL, NULL, NULL)\00", align 1
@kMsg = internal constant [4 x i8] c"\01\02\03\04", align 1
@.str.132 = private unnamed_addr constant [49 x i8] c"EVP_DigestSignUpdate(md_ctx, kMsg, sizeof(kMsg))\00", align 1
@.str.133 = private unnamed_addr constant [59 x i8] c"EVP_DigestSign(md_ctx, NULL, &sig_len, kMsg, sizeof(kMsg))\00", align 1
@.str.134 = private unnamed_addr constant [30 x i8] c"sig = OPENSSL_malloc(sig_len)\00", align 1
@.str.135 = private unnamed_addr constant [63 x i8] c"EVP_DigestSign(md_ctx, sig, &shortsig_len, kMsg, sizeof(kMsg))\00", align 1
@.str.136 = private unnamed_addr constant [58 x i8] c"EVP_DigestSign(md_ctx, sig, &sig_len, kMsg, sizeof(kMsg))\00", align 1
@.str.137 = private unnamed_addr constant [44 x i8] c"EVP_DigestSignFinal(md_ctx, NULL, &sig_len)\00", align 1
@.str.138 = private unnamed_addr constant [48 x i8] c"EVP_DigestSignFinal(md_ctx, sig, &shortsig_len)\00", align 1
@.str.139 = private unnamed_addr constant [43 x i8] c"EVP_DigestSignFinal(md_ctx, sig, &sig_len)\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"BIO_reset(mdbio)\00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"BIO_get_md_ctx(mdbio, &md_ctx_verify)\00", align 1
@.str.142 = private unnamed_addr constant [58 x i8] c"EVP_DigestVerifyInit(md_ctx_verify, NULL, md, NULL, pkey)\00", align 1
@.str.143 = private unnamed_addr constant [50 x i8] c"BIO_write_ex(mdbio, kMsg, sizeof(kMsg), &written)\00", align 1
@.str.144 = private unnamed_addr constant [58 x i8] c"EVP_DigestVerifyUpdate(md_ctx_verify, kMsg, sizeof(kMsg))\00", align 1
@.str.145 = private unnamed_addr constant [51 x i8] c"EVP_DigestVerifyFinal(md_ctx_verify, sig, sig_len)\00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"EVP_DigestSignFinal(md_ctx, NULL, &sig2_len)\00", align 1
@.str.147 = private unnamed_addr constant [32 x i8] c"sig2 = OPENSSL_malloc(sig2_len)\00", align 1
@.str.148 = private unnamed_addr constant [45 x i8] c"EVP_DigestSignFinal(md_ctx, sig2, &sig2_len)\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"sig2\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@kExampleRSAKeyDER = internal constant [608 x i8] c"0\82\02\\\02\01\00\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01\02\81\80t\88d?iE:m\C7\7F\B9\A3\C0n\EC\DC\D4Z\B52\85_\19\D4\F8\D4?<\FA\C2\F6_\EE\E6\BA\87t.\C7\0C\D4B\B8f\85\9C{$a\AA\16\11\F6\B5\B6\A4\0A\C9U.\81\A5Ga\CB%\8F\C2\15{\0E|6\9F:\DAX\86\1C[\83y\E6+\CC\E6\FA,a\F2x\80\1B\E2\F3\9D9+eW\91=q\99s\A5\C2y \8C\07O\E5\B4`\1F\99\A2\B1O\0C\EF\BCYS\00}\B1\02A\00\FC~#ep\F8\CE\D3@A\80j\1D\01\D6\01\FF\B6\1B==Y\093y\C0O\DE\96'K\18\C6\D9x\F1\F45F\E9|Bz]\9F\EFT\B8\F7\9F\C43l\F3\8C2F\87g0{\A7\AC\E3\02A\00\FC,\DF\0C\0D\88\F5\B1\92\A8\93GcU\F5\CAXC\BA\1C\E5\9E\B6\95\05\CD\B5\82\DF\EB\04S\9D\BD\C28\16\B3b\DD\A1F\DBm\97\93\9F\8A\C3\9Bd~B\E32W\19\1B\D5n\85\FA\B8\8D\02A\00\BC=\DEm\D6\97\E8\BA\9E\817\17\E5\A0d\C9\00\B7\E7\FE\F4)\D9.Ck\19 \BD\99u\E7v\F8\D3\AE\AF~\B8\EB\81\F4\9D\FE\07+\0Bc\0BZU\90q}\F1\DB\D9\B1AAh/N9\02@Z4f\D8\F5\E2\7F\18\B5\00n&\84'\14\93\FB\FC\C6\0F^'\E6\E1\E9\C0\8A\E44\DA\E9\A2Ks\BC\8C\B9\BA\13lz+Q\84\A3J\E00\10\06~\ED\17Z\14\00\C9\EF\85\EAR,\BCe\02@Q\E3\F2\83\19\9B\C4\1E/P=\DFZ\A2\18\CA_.I\AFo\CC\FAew\94\B5\A1\0A\A9\D1\8A97\F4\0B\A0\D7\82'^\AE\17\17\A1\1ET4\BFn\C4\8E\99]\08\F1-\86\9D\A5 \1B\E5\DF", align 16
@.str.152 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@kExampleDSAKeyDER = internal constant [446 x i8] c"0\82\01\BA\02\01\00\02\81\81\00\9A\05m3\CD]x\A1\BB\CB}[\8D\B4\CC\BF\03\99d\DE8x\06\15/\86&w\F3\B1\85\00\ED\FC(:BM\AB\AB\DF\BC\9C\16\D0\22P\D18\DD?d\05\9Ehz\1E\F1V\BF\1E,\C5\97*\FEz\22\DClh\B8.\06\DBA\CA\98\D8T\C7dH$\04 \BCY\E3k\EA~\FC~\C5N\D4\D8:\ED\CD]\99\B8\\\A2\8B\BB\0B\AC\E6\8E%V\22:-:VA\14\1F\1C\8FSF\13\85\02\15\00\98~\92\81\88\C7?pIT\F6v\B4\A3\9E\1DE\982\7F\02\81\80iM\EFU\FFMY,\01\FAj8\E0p\9F\9Ef\8E>\8CR\22\9D\15~<\EFLza&\E0+\81?\EB\AF58\8D\FE\EDF\FF_\03\9B\81\92\E7ovO\1D\D9\BB\89\C9>\D9\0B\F9\F4x\11Y\C0\1D\CD\0E\A1o\15\F1M\C1\C9\22\ED\8D\ADg\C5K\95\93\86\A6\AF\8A\EE\06\89/7~d\AA\F6\E7\B1Z\0A\93\95]>S\9A\DE\8A\C2\95E\81\BE\\/\C2\B2\92X\19r\80\E9y\A1\02\81\80\07\D7b\FF\DF\1A?\ED2\D4\D4\88{,c\7F\97\DCD\D4\84\A2\DD\17\16\85\13\E0\ACQ\8D)\1Bu\9A\E4\E3\8A\92i\09\03\C5h\AE^\94\FE\C9\92l\07\B4\1Edb\87\C6\A4\FD\0D_\E5\F9\1BO\85_\AE\F3\11\E5\18\D4My\9F\C4y&\04'\F0\0B\EE+\86\9F\86a\E6Q\CE\04\9B]k4C\8C\85<\F1Q\9B\08#\1B\F5~3\12\EA\AB\1F\B7-\E2_\E6\97\99\B5E\16[\C3A\02\14a\BFQ`\CF\C8\F1\8C\82\97\F2\F4\19\BA+\F3\16\BE@H", align 16
@__const.load_example_hmac_key.key = private constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@.str.154 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"md_ctx = EVP_MD_CTX_new()\00", align 1
@.str.157 = private unnamed_addr constant [61 x i8] c"EVP_DigestVerifyInit(md_ctx, NULL, EVP_sha256(), NULL, pkey)\00", align 1
@.str.158 = private unnamed_addr constant [51 x i8] c"EVP_DigestVerifyUpdate(md_ctx, kMsg, sizeof(kMsg))\00", align 1
@.str.159 = private unnamed_addr constant [62 x i8] c"EVP_DigestVerifyFinal(md_ctx, kSignature, sizeof(kSignature))\00", align 1
@kSignature = internal constant [128 x i8] c"\A5\F0\8AG]<\B3\CC\A9y\AFM\8C\AEL\14\EF\C2\0B46\DE\F4>=\BBJ`\\\C8\91(\DA\FB~\04\96~c\13\90\CE\B9\B4bz\FD\09=\C7gxT\04\EBRbn$g\B4@\FCWb\C6\F1g\C1\97\8Fj\A8\AEDF^\ABg\17S\19:\DAZ\C8\16>\86\D5\C5q/\FC#H\D9\0B\13\DD{Z%y\EF\A5{\04\EDD\F6\18U\E4\0A\E9Wy]\D7U\A7\ABE\02\97`B", align 16
@.str.160 = private unnamed_addr constant [53 x i8] c"EVP_DigestVerifyInit(md_ctx, NULL, NULL, NULL, NULL)\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"KECCAK-256\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.164 = private unnamed_addr constant [46 x i8] c"EVP_DigestSignInit(ctx, NULL, md, NULL, pkey)\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@kExampleECKeyDER = internal constant [121 x i8] c"0w\02\01\01\04 \07\0F\08rz\D4\A0J\9C\DDY\C9M\89hw\08\B5o\C9]0w\0E\E8\D1\C9\CE\0A\8B\B4j\A0\0A\06\08*\86H\CE=\03\01\07\A1D\03B\00\04\E6+i\E2\BFe\9F\97\BE/\1E\0D\94\8AL\D5\97k\B7\A9\1E\0DF\FB\DD\A9\A9\1E\9D\DC\BAZ\01\E7\D6\97\A8\0A\18\F9\C3\C4\A3\1EV\E2|\83H\DB\16\1A\1C\F5\1D~\F1\94-K\CFr\22\C1", align 16
@.str.166 = private unnamed_addr constant [69 x i8] c"pkey = EVP_PKEY_new_raw_private_key(EVP_PKEY_SIPHASH, NULL, key, 16)\00", align 1
@.str.167 = private unnamed_addr constant [28 x i8] c"mdctx = EVP_MD_CTX_create()\00", align 1
@.str.168 = private unnamed_addr constant [50 x i8] c"EVP_DigestSignInit(mdctx, &ctx, NULL, NULL, pkey)\00", align 1
@.str.169 = private unnamed_addr constant [88 x i8] c"EVP_PKEY_CTX_ctrl(ctx, -1, EVP_PKEY_OP_SIGNCTX, EVP_PKEY_CTRL_SET_DIGEST_SIZE, 8, NULL)\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.171 = private unnamed_addr constant [50 x i8] c"EVP_DigestSignInit(mdctx, NULL, NULL, NULL, NULL)\00", align 1
@.str.172 = private unnamed_addr constant [36 x i8] c"EVP_DigestSignUpdate(mdctx, buf, 8)\00", align 1
@.str.173 = private unnamed_addr constant [41 x i8] c"EVP_DigestSignFinal(mdctx, digest, &len)\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.176 = private unnamed_addr constant [52 x i8] c"sha256 = EVP_MD_fetch(testctx, \22sha256\22, testpropq)\00", align 1
@.str.177 = private unnamed_addr constant [56 x i8] c"shake256 = EVP_MD_fetch(testctx, \22shake256\22, testpropq)\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"shake256\00", align 1
@.str.179 = private unnamed_addr constant [40 x i8] c"EVP_DigestInit_ex(md_ctx, sha256, NULL)\00", align 1
@.str.180 = private unnamed_addr constant [45 x i8] c"EVP_DigestUpdate(md_ctx, kMsg, sizeof(kMsg))\00", align 1
@.str.181 = private unnamed_addr constant [34 x i8] c"EVP_DigestFinal(md_ctx, md, NULL)\00", align 1
@.str.182 = private unnamed_addr constant [27 x i8] c"EVP_MD_CTX_get0_md(md_ctx)\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.184 = private unnamed_addr constant [37 x i8] c"EVP_DigestFinal_ex(md_ctx, md, NULL)\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"EVP_DigestInit_ex(md_ctx, NULL, NULL)\00", align 1
@.str.186 = private unnamed_addr constant [42 x i8] c"EVP_DigestInit_ex(md_ctx, shake256, NULL)\00", align 1
@.str.187 = private unnamed_addr constant [43 x i8] c"EVP_DigestFinalXOF(md_ctx, md, sizeof(md))\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"md_null\00", align 1
@.str.189 = private unnamed_addr constant [41 x i8] c"EVP_DigestInit_ex(md_ctx, md_null, NULL)\00", align 1
@.str.190 = private unnamed_addr constant [36 x i8] c"EVP_DigestUpdate(md_ctx, \22test\22, 4)\00", align 1
@.str.191 = private unnamed_addr constant [46 x i8] c"EVP_DigestFinal_ex(md_ctx, md_value, &md_len)\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"md_len\00", align 1
@.str.193 = private unnamed_addr constant [52 x i8] c"mac = EVP_MAC_fetch(testctx, \22Poly1305\22, testpropq)\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"Poly1305\00", align 1
@.str.195 = private unnamed_addr constant [27 x i8] c"ctx = EVP_MAC_CTX_new(mac)\00", align 1
@.str.196 = private unnamed_addr constant [33 x i8] c"EVP_MAC_init(ctx, NULL, 0, NULL)\00", align 1
@.str.197 = private unnamed_addr constant [44 x i8] c"EVP_MAC_final(ctx, out, &outl, sizeof(out))\00", align 1
@.str.198 = private unnamed_addr constant [29 x i8] c"pkey = load_example_ec_key()\00", align 1
@.str.199 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_sign_init(ctx)\00", align 1
@.str.200 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_sign(ctx, NULL, &sig_len, tbs, sizeof(tbs))\00", align 1
@.str.201 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_sign(ctx, sig, &shortsig_len, tbs, sizeof(tbs))\00", align 1
@.str.202 = private unnamed_addr constant [52 x i8] c"EVP_PKEY_sign(ctx, sig, &sig_len, tbs, sizeof(tbs))\00", align 1
@.str.203 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_verify_init(ctx)\00", align 1
@.str.204 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_verify(ctx, sig, sig_len, tbs, sizeof(tbs))\00", align 1
@__const.test_EVP_PKEY_sign_with_app_method.tbs = private unnamed_addr constant [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@.str.205 = private unnamed_addr constant [50 x i8] c"rsa_meth = RSA_meth_dup(RSA_get_default_method())\00", align 1
@.str.206 = private unnamed_addr constant [30 x i8] c"rsa = EVP_PKEY_get1_RSA(pkey)\00", align 1
@.str.207 = private unnamed_addr constant [30 x i8] c"RSA_set_method(rsa, rsa_meth)\00", align 1
@.str.208 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_assign_RSA(pkey, rsa)\00", align 1
@.str.209 = private unnamed_addr constant [50 x i8] c"dsa_meth = DSA_meth_dup(DSA_get_default_method())\00", align 1
@.str.210 = private unnamed_addr constant [30 x i8] c"dsa = EVP_PKEY_get1_DSA(pkey)\00", align 1
@.str.211 = private unnamed_addr constant [30 x i8] c"DSA_set_method(dsa, dsa_meth)\00", align 1
@.str.212 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_assign_DSA(pkey, dsa)\00", align 1
@.str.213 = private unnamed_addr constant [60 x i8] c"pkey_ctx = EVP_PKEY_CTX_new_from_name(testctx, \22RSA\22, NULL)\00", align 1
@.str.214 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_keygen_init(pkey_ctx)\00", align 1
@.str.215 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_CTX_set_rsa_keygen_bits(pkey_ctx, 2048)\00", align 1
@.str.216 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_keygen(pkey_ctx, &rsa_key)\00", align 1
@.str.217 = private unnamed_addr constant [56 x i8] c"ecdsa_sig = EVP_SIGNATURE_fetch(testctx, \22ECDSA\22, NULL)\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"ECDSA\00", align 1
@.str.219 = private unnamed_addr constant [57 x i8] c"ctx = EVP_PKEY_CTX_new_from_pkey(testctx, rsa_key, NULL)\00", align 1
@.str.220 = private unnamed_addr constant [45 x i8] c"EVP_PKEY_sign_init_ex2(ctx, ecdsa_sig, NULL)\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@test_EVP_Enveloped.msg = internal constant [8 x i8] c"\01\02\03\04\05\06\07\08", align 1
@.str.222 = private unnamed_addr constant [59 x i8] c"type = EVP_CIPHER_fetch(testctx, \22AES-256-CBC\22, testpropq)\00", align 1
@.str.223 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.224 = private unnamed_addr constant [33 x i8] c"keypair = load_example_rsa_key()\00", align 1
@.str.225 = private unnamed_addr constant [49 x i8] c"kek = OPENSSL_zalloc(EVP_PKEY_get_size(keypair))\00", align 1
@.str.226 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.227 = private unnamed_addr constant [57 x i8] c"EVP_SealInit(ctx, type, &kek, &kek_len, iv, &keypair, 1)\00", align 1
@.str.228 = private unnamed_addr constant [67 x i8] c"EVP_SealUpdate(ctx, ciphertext, &ciphertext_len, msg, sizeof(msg))\00", align 1
@.str.229 = private unnamed_addr constant [54 x i8] c"EVP_SealFinal(ctx, ciphertext + ciphertext_len, &len)\00", align 1
@.str.230 = private unnamed_addr constant [51 x i8] c"EVP_OpenInit(ctx, type, kek, kek_len, iv, keypair)\00", align 1
@.str.231 = private unnamed_addr constant [75 x i8] c"EVP_OpenUpdate(ctx, plaintext, &plaintext_len, ciphertext, ciphertext_len)\00", align 1
@.str.232 = private unnamed_addr constant [52 x i8] c"EVP_OpenFinal(ctx, plaintext + plaintext_len, &len)\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"plaintext\00", align 1
@.str.235 = private unnamed_addr constant [53 x i8] c"pkey = d2i_AutoPrivateKey(NULL, &p, (long)input_len)\00", align 1
@.str.236 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.237 = private unnamed_addr constant [18 x i8] c"input + input_len\00", align 1
@.str.238 = private unnamed_addr constant [22 x i8] c"EVP_PKEY_get_id(pkey)\00", align 1
@.str.239 = private unnamed_addr constant [12 x i8] c"expected_id\00", align 1
@kExampleRSAKeyPKCS8 = internal constant [634 x i8] c"0\82\02v\02\01\000\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\04\82\02`0\82\02\\\02\01\00\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01\02\81\80t\88d?iE:m\C7\7F\B9\A3\C0n\EC\DC\D4Z\B52\85_\19\D4\F8\D4?<\FA\C2\F6_\EE\E6\BA\87t.\C7\0C\D4B\B8f\85\9C{$a\AA\16\11\F6\B5\B6\A4\0A\C9U.\81\A5Ga\CB%\8F\C2\15{\0E|6\9F:\DAX\86\1C[\83y\E6+\CC\E6\FA,a\F2x\80\1B\E2\F3\9D9+eW\91=q\99s\A5\C2y \8C\07O\E5\B4`\1F\99\A2\B1O\0C\EF\BCYS\00}\B1\02A\00\FC~#ep\F8\CE\D3@A\80j\1D\01\D6\01\FF\B6\1B==Y\093y\C0O\DE\96'K\18\C6\D9x\F1\F45F\E9|Bz]\9F\EFT\B8\F7\9F\C43l\F3\8C2F\87g0{\A7\AC\E3\02A\00\FC,\DF\0C\0D\88\F5\B1\92\A8\93GcU\F5\CAXC\BA\1C\E5\9E\B6\95\05\CD\B5\82\DF\EB\04S\9D\BD\C28\16\B3b\DD\A1F\DBm\97\93\9F\8A\C3\9Bd~B\E32W\19\1B\D5n\85\FA\B8\8D\02A\00\BC=\DEm\D6\97\E8\BA\9E\817\17\E5\A0d\C9\00\B7\E7\FE\F4)\D9.Ck\19 \BD\99u\E7v\F8\D3\AE\AF~\B8\EB\81\F4\9D\FE\07+\0Bc\0BZU\90q}\F1\DB\D9\B1AAh/N9\02@Z4f\D8\F5\E2\7F\18\B5\00n&\84'\14\93\FB\FC\C6\0F^'\E6\E1\E9\C0\8A\E44\DA\E9\A2Ks\BC\8C\B9\BA\13lz+Q\84\A3J\E00\10\06~\ED\17Z\14\00\C9\EF\85\EAR,\BCe\02@Q\E3\F2\83\19\9B\C4\1E/P=\DFZ\A2\18\CA_.I\AFo\CC\FAew\94\B5\A1\0A\A9\D1\8A97\F4\0B\A0\D7\82'^\AE\17\17\A1\1ET4\BFn\C4\8E\99]\08\F1-\86\9D\A5 \1B\E5\DF", align 16
@keydata = internal unnamed_addr constant [3 x { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] }] [{ ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleRSAKeyDER, i64 608, ptr @.str.151, i32 6, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleRSAKeyPKCS8, i64 634, ptr @.str.151, i32 6, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleECKeyDER, i64 121, ptr @.str.165, i32 408, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }], align 16
@.str.241 = private unnamed_addr constant [30 x i8] c"membio = BIO_new(BIO_s_mem())\00", align 1
@.str.242 = private unnamed_addr constant [65 x i8] c"i2d_PKCS8PrivateKey_bio(membio, pkey, NULL, NULL, 0, NULL, NULL)\00", align 1
@.str.243 = private unnamed_addr constant [47 x i8] c"membuf_len = BIO_get_mem_data(membio, &membuf)\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"membuf\00", align 1
@.str.245 = private unnamed_addr constant [20 x i8] c"kExampleRSAKeyPKCS8\00", align 1
@.str.246 = private unnamed_addr constant [71 x i8] c"PEM_write_bio_PKCS8PrivateKey(membio, pkey, NULL, NULL, 0, NULL, NULL)\00", align 1
@.str.247 = private unnamed_addr constant [34 x i8] c"BIO_get_mem_data(membio, &membuf)\00", align 1
@.str.248 = private unnamed_addr constant [50 x i8] c"p8inf = d2i_PKCS8_PRIV_KEY_INFO_bio(membio, NULL)\00", align 1
@.str.249 = private unnamed_addr constant [30 x i8] c"pkey2 = EVP_PKCS82PKEY(p8inf)\00", align 1
@.str.250 = private unnamed_addr constant [22 x i8] c"ERR_peek_last_error()\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"p8inf\00", align 1
@.str.252 = private unnamed_addr constant [23 x i8] c"p == input + input_len\00", align 1
@kExampleRSAKeyPKCS8_v2 = internal constant [778 x i8] c"0\82\03\06\02\01\010\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\04\82\02`0\82\02\\\02\01\00\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01\02\81\80t\88d?iE:m\C7\7F\B9\A3\C0n\EC\DC\D4Z\B52\85_\19\D4\F8\D4?<\FA\C2\F6_\EE\E6\BA\87t.\C7\0C\D4B\B8f\85\9C{$a\AA\16\11\F6\B5\B6\A4\0A\C9U.\81\A5Ga\CB%\8F\C2\15{\0E|6\9F:\DAX\86\1C[\83y\E6+\CC\E6\FA,a\F2x\80\1B\E2\F3\9D9+eW\91=q\99s\A5\C2y \8C\07O\E5\B4`\1F\99\A2\B1O\0C\EF\BCYS\00}\B1\02A\00\FC~#ep\F8\CE\D3@A\80j\1D\01\D6\01\FF\B6\1B==Y\093y\C0O\DE\96'K\18\C6\D9x\F1\F45F\E9|Bz]\9F\EFT\B8\F7\9F\C43l\F3\8C2F\87g0{\A7\AC\E3\02A\00\FC,\DF\0C\0D\88\F5\B1\92\A8\93GcU\F5\CAXC\BA\1C\E5\9E\B6\95\05\CD\B5\82\DF\EB\04S\9D\BD\C28\16\B3b\DD\A1F\DBm\97\93\9F\8A\C3\9Bd~B\E32W\19\1B\D5n\85\FA\B8\8D\02A\00\BC=\DEm\D6\97\E8\BA\9E\817\17\E5\A0d\C9\00\B7\E7\FE\F4)\D9.Ck\19 \BD\99u\E7v\F8\D3\AE\AF~\B8\EB\81\F4\9D\FE\07+\0Bc\0BZU\90q}\F1\DB\D9\B1AAh/N9\02@Z4f\D8\F5\E2\7F\18\B5\00n&\84'\14\93\FB\FC\C6\0F^'\E6\E1\E9\C0\8A\E44\DA\E9\A2Ks\BC\8C\B9\BA\13lz+Q\84\A3J\E00\10\06~\ED\17Z\14\00\C9\EF\85\EAR,\BCe\02@Q\E3\F2\83\19\9B\C4\1E/P=\DFZ\A2\18\CA_.I\AFo\CC\FAew\94\B5\A1\0A\A9\D1\8A97\F4\0B\A0\D7\82'^\AE\17\17\A1\1ET4\BFn\C4\8E\99]\08\F1-\86\9D\A5 \1B\E5\DF\81\81\8D\000\81\89\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01", align 16
@kExampleECKeyPKCS8_v2 = internal constant [206 x i8] c"0\81\CB\02\01\010\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\04m0k\02\01\01\04 \07\0F\08rz\D4\A0J\9C\DDY\C9M\89hw\08\B5o\C9]0w\0E\E8\D1\C9\CE\0A\8B\B4j\A1D\03B\00\04\E6+i\E2\BFe\9F\97\BE/\1E\0D\94\8AL\D5\97k\B7\A9\1E\0DF\FB\DD\A9\A9\1E\9D\DC\BAZ\01\E7\D6\97\A8\0A\18\F9\C3\C4\A3\1EV\E2|\83H\DB\16\1A\1C\F5\1D~\F1\94-K\CFr\22\C1\81B\00\04\E6+i\E2\BFe\9F\97\BE/\1E\0D\94\8AL\D5\97k\B7\A9\1E\0DF\FB\DD\A9\A9\1E\9D\DC\BAZ\01\E7\D6\97\A8\0A\18\F9\C3\C4\A3\1EV\E2|\83H\DB\16\1A\1C\F5\1D~\F1\94-K\CFr\22\C1", align 16
@keydata_v2 = internal unnamed_addr constant [2 x { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] }] [{ ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleRSAKeyPKCS8_v2, i64 778, ptr @.str.151, i32 6, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleECKeyPKCS8_v2, i64 206, ptr @.str.165, i32 408, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }], align 16
@kExampleBadECKeyDER = internal constant [104 x i8] c"0f\02\01\000\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\04L0J\02\01\01\04 \FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q\A1#\03!\00\00\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q", align 16
@.str.254 = private unnamed_addr constant [74 x i8] c"p8inf = d2i_PKCS8_PRIV_KEY_INFO(NULL, &derp, sizeof(kExampleBadECKeyDER))\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"derp\00", align 1
@.str.256 = private unnamed_addr constant [50 x i8] c"kExampleBadECKeyDER + sizeof(kExampleBadECKeyDER)\00", align 1
@.str.257 = private unnamed_addr constant [29 x i8] c"pkey = EVP_PKCS82PKEY(p8inf)\00", align 1
@.str.258 = private unnamed_addr constant [55 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22EC\22, NULL)\00", align 1
@.str.259 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_paramgen_init(pctx)\00", align 1
@.str.260 = private unnamed_addr constant [43 x i8] c"EVP_PKEY_CTX_set_group_name(pctx, \22P-256\22)\00", align 1
@.str.261 = private unnamed_addr constant [6 x i8] c"P-256\00", align 1
@.str.262 = private unnamed_addr constant [41 x i8] c"EVP_PKEY_CTX_set_ec_param_enc(pctx, enc)\00", align 1
@.str.263 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_paramgen(pctx, &params)\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.265 = private unnamed_addr constant [57 x i8] c"kctx = EVP_PKEY_CTX_new_from_pkey(testctx, params, NULL)\00", align 1
@.str.266 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_keygen_init(kctx)\00", align 1
@.str.267 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_keygen(kctx, &key)\00", align 1
@.str.268 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.269 = private unnamed_addr constant [87 x i8] c"evp_keymgmt_util_export(key, OSSL_KEYMGMT_SELECT_ALL, ec_export_get_encoding_cb, &enc)\00", align 1
@.str.270 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@.str.271 = private unnamed_addr constant [27 x i8] c"ec_encodings[idx].encoding\00", align 1
@.str.272 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.273 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@ec_encodings = internal unnamed_addr constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.272 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.273 }], align 16
@.str.275 = private unnamed_addr constant [65 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_EC_ENCODING)\00", align 1
@.str.276 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.277 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_get_utf8_string_ptr(p, &enc_name)\00", align 1
@__const.test_EVP_SM2.sm2_id = private unnamed_addr constant [10 x i8] c"\01\02\03\04letter", align 1
@.str.278 = private unnamed_addr constant [61 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22SM2\22, testpropq)\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"SM2\00", align 1
@.str.280 = private unnamed_addr constant [34 x i8] c"EVP_PKEY_paramgen_init(pctx) == 1\00", align 1
@.str.281 = private unnamed_addr constant [54 x i8] c"EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, NID_sm2)\00", align 1
@.str.282 = private unnamed_addr constant [37 x i8] c"EVP_PKEY_paramgen(pctx, &pkeyparams)\00", align 1
@.str.283 = private unnamed_addr constant [66 x i8] c"kctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkeyparams, testpropq)\00", align 1
@.str.284 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_keygen(kctx, &pkey)\00", align 1
@.str.285 = private unnamed_addr constant [33 x i8] c"md_ctx_verify = EVP_MD_CTX_new()\00", align 1
@.str.286 = private unnamed_addr constant [60 x i8] c"sctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.287 = private unnamed_addr constant [51 x i8] c"check_md = EVP_MD_fetch(testctx, \22sm3\22, testpropq)\00", align 1
@.str.288 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1
@.str.289 = private unnamed_addr constant [55 x i8] c"EVP_DigestSignInit(md_ctx, NULL, check_md, NULL, pkey)\00", align 1
@.str.290 = private unnamed_addr constant [51 x i8] c"EVP_PKEY_CTX_set1_id(sctx, sm2_id, sizeof(sm2_id))\00", align 1
@.str.291 = private unnamed_addr constant [64 x i8] c"EVP_DigestVerifyInit(md_ctx_verify, NULL, check_md, NULL, pkey)\00", align 1
@.str.292 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_CTX_set1_id(sctx, NULL, 0)\00", align 1
@.str.293 = private unnamed_addr constant [4 x i8] c"SM3\00", align 1
@.str.294 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.295 = private unnamed_addr constant [60 x i8] c"cctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.296 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_encrypt_init(cctx)\00", align 1
@.str.297 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_CTX_set_params(cctx, sparams)\00", align 1
@.str.298 = private unnamed_addr constant [73 x i8] c"EVP_PKEY_encrypt(cctx, ciphertext, &ctext_len_param, kMsg, sizeof(kMsg))\00", align 1
@.str.299 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_decrypt_init(cctx)\00", align 1
@.str.300 = private unnamed_addr constant [81 x i8] c"EVP_PKEY_decrypt(cctx, plaintext, &ptext_len_param, ciphertext, ctext_len_param)\00", align 1
@.str.301 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_CTX_get_params(cctx, gparams)\00", align 1
@.str.302 = private unnamed_addr constant [52 x i8] c"check_md = EVP_MD_fetch(testctx, mdname, testpropq)\00", align 1
@.str.303 = private unnamed_addr constant [34 x i8] c"EVP_MD_is_a(check_md, mdnames[i])\00", align 1
@.str.304 = private unnamed_addr constant [23 x i8] c"Fetched md %s isn't %s\00", align 1
@.str.305 = private unnamed_addr constant [32 x i8] c"ptext_len_param == sizeof(kMsg)\00", align 1
@.str.306 = private unnamed_addr constant [43 x i8] c"memcmp(plaintext, kMsg, sizeof(kMsg)) == 0\00", align 1
@.str.307 = private unnamed_addr constant [179 x i8] c"-----BEGIN PUBLIC KEY-----\0AMFkwEwYHKoZIzj0CAQYIKoEcz1UBgi0DQgAEp1KLWq1ZE2jmoAnnBJE1LBGxVr18\0AYvvqECWCpXfAQ9qUJ+UmthnUPf0iM3SaXKHe6PlLIDyNlWMWb9RUh/yU3g==\0A-----END PUBLIC KEY-----\0A\00", align 1
@.str.308 = private unnamed_addr constant [15 x i8] c"message digest\00", align 1
@.str.309 = private unnamed_addr constant [19 x i8] c"ALICE123@YAHOO.COM\00", align 1
@__const.test_EVP_SM2_verify.signature = private unnamed_addr constant [70 x i8] c"0D\02 [\DB\AB\81O\BB\8Bi\B1\05\9C\99;\B2E\06J0\15Y\84\CD\EE0`6W\87\EF\\\D0\BE\02 C\8D\1F\C7wr9\BBr\E1\FD\07X\D5\82\C8-\BA;,F$\E3P\FF\04\C7\A0q\9F\A4p", align 16
@.str.310 = private unnamed_addr constant [12 x i8] c"bio != NULL\00", align 1
@.str.311 = private unnamed_addr constant [13 x i8] c"pkey != NULL\00", align 1
@.str.312 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_is_a(pkey, \22SM2\22)\00", align 1
@.str.313 = private unnamed_addr constant [24 x i8] c"mctx = EVP_MD_CTX_new()\00", align 1
@.str.314 = private unnamed_addr constant [60 x i8] c"pctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.315 = private unnamed_addr constant [46 x i8] c"sm3 = EVP_MD_fetch(testctx, \22sm3\22, testpropq)\00", align 1
@.str.316 = private unnamed_addr constant [50 x i8] c"EVP_DigestVerifyInit(mctx, NULL, sm3, NULL, pkey)\00", align 1
@.str.317 = private unnamed_addr constant [48 x i8] c"EVP_PKEY_CTX_set1_id(pctx, id, (int)strlen(id))\00", align 1
@.str.318 = private unnamed_addr constant [47 x i8] c"EVP_DigestVerifyUpdate(mctx, msg, strlen(msg))\00", align 1
@.str.319 = private unnamed_addr constant [58 x i8] c"EVP_DigestVerifyFinal(mctx, signature, sizeof(signature))\00", align 1
@ml_kem_seed = internal constant [64 x i8] c"|\995\A0\B0v\94\AA\0Cm\10\E4\DBk\1A\DD/\D8\1A%\CC\B1H\03-\CDs\996s\7F-\86&\EDy\D4Q\14\08\00\E0;Y\B9V\F8!\0EU`g@}\13\DC\90\FA\9E\8B\87+\FB\8F", align 16
@.str.320 = private unnamed_addr constant [57 x i8] c"ml_kem_seed_to_priv(name, in, inlen, &privalloc, &inlen)\00", align 1
@.str.321 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_eq(pkey, pkey)\00", align 1
@.str.322 = private unnamed_addr constant [47 x i8] c"EVP_PKEY_get_raw_private_key(pkey, NULL, &len)\00", align 1
@.str.323 = private unnamed_addr constant [46 x i8] c"EVP_PKEY_get_raw_public_key(pkey, NULL, &len)\00", align 1
@.str.324 = private unnamed_addr constant [13 x i8] c"len == inlen\00", align 1
@.str.325 = private unnamed_addr constant [56 x i8] c"EVP_PKEY_get_raw_private_key(pkey, shortbuf, &shortlen)\00", align 1
@.str.326 = private unnamed_addr constant [55 x i8] c"EVP_PKEY_get_raw_public_key(pkey, shortbuf, &shortlen)\00", align 1
@.str.327 = private unnamed_addr constant [43 x i8] c"buf = OPENSSL_zalloc(len <= 80 ? 80 : len)\00", align 1
@.str.328 = private unnamed_addr constant [46 x i8] c"EVP_PKEY_get_raw_private_key(pkey, buf, &len)\00", align 1
@.str.329 = private unnamed_addr constant [45 x i8] c"EVP_PKEY_get_raw_public_key(pkey, buf, &len)\00", align 1
@.str.330 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.333 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.334 = private unnamed_addr constant [33 x i8] c"01234567890123456789012345678901\00", align 1
@.str.335 = private unnamed_addr constant [17 x i8] c"0123456789012345\00", align 1
@.str.336 = private unnamed_addr constant [33 x i8] c"abcdefghijklmnopqrstuvwxyzabcdef\00", align 1
@.str.337 = private unnamed_addr constant [57 x i8] c"01234567890123456789012345678901234567890123456789012345\00", align 1
@.str.338 = private unnamed_addr constant [57 x i8] c"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd\00", align 1
@.str.339 = private unnamed_addr constant [58 x i8] c"012345678901234567890123456789012345678901234567890123456\00", align 1
@.str.340 = private unnamed_addr constant [58 x i8] c"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcde\00", align 1
@ml_kem_512_pubkey = internal constant [800 x i8] c"@\08e\ED\10\B6\19\AAX\11\13\9B\C0\86\82W\82\B2\B7\12Ou|\83\AEyDD\BCx\A4x\96\AC\F1&,\815\10w\89;\FCV\F9\04I\C2\FA_nXm\D3|\0B\9BX\19\92c\8C\B7\E7\BC\BB\B9\9A\FEG\81\D8\0AP\E6\94c\FB\D9\88r,65B>'Flq\DC\C6tR|\CDr\89h\CB\CD\C0\0C\\\905\BB\0A\F2\C9\92,x\81\A4\1D\D2\87Rs\92Q1#\0Fl\A5\9E\916\B3\9F\95l\93\B3\B2\D1Ld\1B\08\9E\07\D0\A8@\C8\93\EC\D7k\BF\92\C8\05Efh\D0|b\14\91\C5\C0T\99\1AeoQ\16\19Un\B9w\82\E2z<xQ$\C7\0B\0D\AB\A6\C6$\D1\8E\0F\97\93\F9k\A9\E1Y\9B\17\B3\0D\CC\C0\B4\F3vj\07\B2;%s\09\CDv\AB\A0r\C2\B9\C9tC\94\C6\AB\9C\B6\C5J\97\B5\C5xa\A5\8D\C0\A05\19\83.\E3*\07eJ\07\0C\0C\8CN\86H\AD\DC5_'O\C6\B9*\08{?\97Q\92>D'O\85\8CI\CA\BAr\B6XQ\B3\AD\C4\896\95P\97\CA\D9U?Z&?\18D\B5*\02\0F\F7\CA\89\E8\81\A0\1B\95\D9W\A3\15<\0A^\0A\1C\CDf\B1\82\1A+\862Tn$\C7\CB\BCL\B0\88\08\CA\C3\7F}\A6\B1o\8A\CE\D0R\CD\B2VIH\F1\AB\0Fv\8A\0D2\86\CC\C7\C3t\9Cc\C7\81S\0F\A1\AEg\05B\85P\04\A6E\B5\22\88\1E\C1A+\DA\E3B\08Z\9D\D5\F8\12j\F9k\BD\B0\C1\AFi\A1Ub\CB*\15Z\10\03\09\D1\B6A\D0\8B-N\D1{\FB\F0\BC\04&_\9B\10\C1\08\F8P0\95\04\D7r\81\1B\BA\8E+\E1bI\AAs}\87\9F\C7\FB%^\E7\A6\A0\A7S\BD\93t\1Cae\8E\C0t\F6\E0\02\B0\194Wi\11<\C0\13\FFt\94\BA\83x\B1\1A\17\22`\AA\A54!\BD\E0:5X\9DW\E3\22\FE\FAA\00\A4t9&\AB}b%\8B\87\B3\1C\CB\B5\E6\B8\9C\B1\0B'\1A\A0]\99K\B5p\8B#\AB2~\CB\93\C0\F3\15hi\F0\88=\A2\06Oy^\0E*\B7\D3\C6Ma\D20?\C3\A2\9E\16\19\92<\A8\01\E5\9F\D7R\CAnvI\D3\03\C9\D2\07\88\E1!FQ\B0i\95\EB&\0C\92\9A\13D\A8I\B2\\\A0\A0\1F\1E\B5)\13hk\BAa\9E#qDd\03\1AxC\92\87\FC\A7\8FL\04v\22>\EAa\B7\F2Z|\E4,\CA\90\1B*\EA\12\98\17\89K\A3G\08#\85O>[(\D8k\A9y\E5Fq\86-\90G\0B\1Ex8\97*\81\A4\81\07\D6\AC\06\11@k!\FB\CC\E1\DBw\02\EA\9D\D6\BAn@R{\9D\C6c\F3\C9;\AD\05m\C2\85\11\F6l>\0B\92\8D\B8\87\9D\22\C5\92h\\\C7u\A6\CDWJ\C3\BC\E3\B2u\91\C8!\92\90v5\8A\22\00\B3w6_~\FB\9E@\C3\BF\0F\F0C)\86\AEK\C1\A2B\CE\99!\AA\9E\22D\88\19X]\EA0\8E\B09", align 16
@.str.341 = private unnamed_addr constant [11 x i8] c"ML-KEM-512\00", align 1
@ml_kem_768_pubkey = internal constant [1184 x i8] c"\A8\E6Q\A1\E6\85\F2$x\A8\95O\00{\C7q\1B\93\07r\C7\8F\09.\82\87\8E>\93\7F6ygS)\13\A8\D5=\FD\F4\BF\B1\F8\84gFYg\05\CF4QB\B9r\A3\F1c%\C4\0C)R\A3{%\89~^\F3_\BA\EBs\A4\AC\BE\B6\A0\B8\99B\CE\B1\95S\1C\FC\0A\07\999TH>l\BC\87\C0j\A7O\F0\CA\C5 ~S[&\0A\A9\8D\11\98\C0}\A6\05\C4\D1\10 \F6\C9\F7\BBh\BB4V\C7:\01\B7\10\BC\99\D1w9\A5\17\16\AA\01f\0C\8Bb\8B/V\02\BAe\F0~\A9\933n\89n\83\F2\C5s\1B\BF\03F\0C[l\8A\FE\CBt\8E\E3\91\E9\894\A2\C5}M\06\9FP\D8\8B0\D6\96o8\C3{\C6I\B8&4\CEw\22d\\\CDbPc6FF\D6\D6\99\DBW\B4^\B6te\E1m\E4\D4\06\A8\18\B9\EA\E1\CA\91j%\94H\97\08\A4<\EA\88\B0*L\03\D0\9BD\81\\\97\10\1C\AFPH\BB\CB$z\E26l\DC%K\A2!)\F4[;\0E\B3\99\CA\91\A3\03@(0\EC\01\DB{,\A4\80\CF5\04\09\B2\16\09K{\0C:\E3<\E1\0A\91$\E8\96Q\AB\90\1E\A2S\C8A[\D7\82_\02\BB\22\93i\AF\97 (\F2(u\EAU\AF\16\D3\BCi\F7\0C.\E8\B7_(\B4}\D3\91\F9\89\AD\E3\14r\9C3\1F\A0L\19\17\B2x\C3\EB`(hQ(!\AD\C8%\C6Ew\CE\1Ec\B1\D9dJa)H\A3H<\7F\1B\9A%\80\00\E3\01\96\94J@6'`\9Cv\C7\EAk]\E0\17d\D2Cy\11{\9E\A2\98H\DCU\\EK\CE\AE\1B\A5\CCr\C7J\B9k\9C\91\B9\10\D2k\88\B2V9\D4w\8A\E2l|aQ\A1\9Cl\D7\93\84T7$e\E4\C5\EC)$Z\CB=\B57\9D\E3\DA\BF\A6)\A7\C0J\83S\A8S\0C\95\AC\B72\BBK\B8\192\BB,\A7\A8H\CD6h\01DJ\BE#\C8;6j\87\D6\A3\CF6\09$\C0\02\BA\E9\0A\F6\\H\06\0B7R\F2\BA\DF\1A\B2r rUJPYu5\94\E6\A7\02v\1F\C9v\84\C8\C4\A7T\0Ak\07\FB\C9\DE\87\C9t\AA\88\09\D9(\C7\F4\CB\BF\80E\AE\A5\BCfx%\FD\05\A5!\F1\A4\BFS\92\10\C7\11;\C3{>X\B0\CB\FCS\C8A\CB\B07\1D\E2\E5\11\B9\89\CB|p\C0#6mx\F9\C3~\F0G\F8r\0B\E1\C7Y\A8\D9k\93\F6Z\94\11O\FA\F6\0D\9A\81y^\99\\q\15*F\91\A5\A6\02\A9\E1\F3Y\9E7\C7h\C7\BC\10\89\94\C0f\9F:\DC\95}F\B4\B6%ih\E2\90\D7\89.\A8Td\EEzu\0F9\C5\E3\15,-\FCV\D8\B0\C9$\BA\8A\95\9Ah\09eG\F6d#\C88\98*W\94\B9\E1S7q3\1A\9Ael(\82\8B\EB\91&\A6\0E\95\E8\C5\D9\06\83,w\10pUv\B1\FB\95\07&\9D\DA\F8\C9\\\E9q\9B,\A8\DD\11+\E1\0B\CC\9FJ7\BD\1B\1E\EE\B3>\CD\A7j\E9\F6\9A]K)#\A8iWg\1Da\935\BE\1CL,w\CE\87\C4\1F\98\A8\CCFd`\FA0\0A\AF[0\1F\0A\1D\09\C8\8Ee\DAM\8E\E6Oh\C0!\89\BB\B3XK\AF\F7\16\C8]\B6T\04\8A\00C3H\93\93\A0t'\CD>!~j4_l,+\13\C2{3rq\C0\B2{-\BA\A0\0D#v\00\B5\B5\94\E8\CF-\D6%\EAv\CF\0E\D8\99\12,\97\96\B4\B0\18p\04%\80I\A4w\CD\11\D6\8CI\B9\A0\E7\B0\0B\CE\8C\ACxd\CB\B3u\14\00\84tL\93\06&\94\CAy\\O@\E7\AC\C9\C5\A1\88@r\D8\C3\8D\AF\B5\01\EEA\84\DDZ\81\9E\C2N\C1e\12a\F9b\B1zr\15\AAJt\8C\15\83l8\917g\82\04\83\8Dq\95\A8[O\98\A1\B5t\C4\CDy\09\CD\1F\83>\FF\D1HUC\22\9D7H\D9\B5\CDl\17\B9\B3\B8J\EF\8B\CE\13\E6\83s6Y\C7\95B\D6\15x*q\CD\EE\E7\92\BA\B5\1B\DCK\BF\E80\8Ef1D\ED\E8I\180\AD\98\B4cOd\AB\A8\B9\C0B'&S\92\0F8\0C\1A\17\CA\87\CE\D7\AA\C4\1C\82\88\87\93\18\1Aov\E1\97\B7\B9\0E\F9\09C\BB8D\91)\11\D8U\1ETf\C5vz\B0\BCa\A1\A3\F76\16.\C0\98\A9\00\B1-\D8\FA\BB\FB?\E8\CB\1D\C4\E81_*\F0\D3/\00\17\AE\13n\19\F0(", align 16
@.str.342 = private unnamed_addr constant [11 x i8] c"ML-KEM-768\00", align 1
@ml_kem_1024_pubkey = internal constant [1568 x i8] c"Sy\11\95|\12QH\A8\7FAX\9C\B2\22\D0\D1\92)\E2\CBU\E1\A0Dy\1E|\A6\11\92\A4d`\C3\18=+\CDm\E0\8A^vQ`:\CC4\9C\A1l\BA\18\AB\B2:>\8C3\0Dt!Y\8Abx\EC~\BF\AB\CA\0E\F4\88\B2)\05Tu4\99\C0E.E8\150\99U\B8\15\0F\A1\A1\E3\938m\C1/\DB'\B3\8CgE\F2\94@\16\ECE\7F9\B1\8D`J\07\A1\AB\E0{\C8D\05\0F\FA\8A\06\FA\15JI\D8\8F\ACwTR\D6\A7\C0\E5\89\BF\B5\C3p\C2\C4\B6 \1D\DA\80\C9\AB v\EC\C0\8BDR/\DA3&\F03\80m\D2i?1\979\F4\0COB\B2J\CAp\98\FB\8F\F5\F9\AC )-\02\B5j\C7F\80\1A\CC\CC\84\86=\EE2\87\84\97\B6\948\BF\99\17v(fPH,\8D\9D\95\87\BCjU\B8\\M\7F\A7M\02ekB\1C\9E#\E0:H\D4\B7D%\C2nJ \DD\95b\A4\DA\07\93\F3\A3R\CC\C0\F1\82\17\D8h\C7\F5\00*\BEv\8B\1F\C7?\05tN|\C2\8F\104@b\C1\0E\08\EC\CC\ED<\1F}9,\01\D9y\DDq\8D\83\987Fe\A1j\98pX\\9\D5X\9AP\E138\9C\9B\9A'l\02B`\D9\FCw\11\C8\1Bc7\B5}\A3\C3v\D0\CDt\E1Lsr{'fV\B9\D8\A4\EBq\89o\F5\89\D4\B8\93\E7\11\0F;\B9H\EC\E2\91\DD\86\C0\B7F\8Ag\8Cti\80\C1*\A6\B9^+\0C\BEC1\BB$\A3:'\01S\AAG,G1#\82\CA6\\_5%\9D\02WF\FCe\95\FEclvu\10\A6\9C\1E\8A\17kyI\95\8F&\979\94\97\A2\FCsd\A1,\81\98)R9\C8&\CBP\82\08`w(.\D6(e\1F\C0Lc\9BC\85\22\A9\DE0\9B\14\B0\86\D6\E9#\C5Qb;\D7*s<\B0\DA\BCT\A9Aj\99\E7,\9F\DA\1C\B3\FB\9B\A0k\8A\DB$\22\D6\8C\AD\C5S\C9\82\02\A1vVG\8A\C0D\EF4V7\8A\BC\E9\99\1E\01A\BAy\09O\A8\F7z0\08\05\D2\D3/\FCb\BF\0C\A4UL3\0C+\B7\04-\B3Q\02\F6\8B\1A\00bX8e8\1Ct\DD\91:\F7\0B&\CF\09#\D0\C4\CB\97\16\92\22%R\A8\F4\B7\88\B4\AF\D14\1A\9D\F4\15\CF 9\00\F5\CC\F7\F6Y\88\94\9AuX\0D\04\969\851\00\85K!\F4\01\80\03P+\B1\BA\95\F5V\A5\D6|~\B5$\10\EB\A2\88\A6\D0c\\\A8\A4\F6\D6\96\D0\A0 \C8&\93\8D4\94<8\08\C7\9C\C0\07v\853!k\C1\B2\9D\A6\C8\12\EF\F34\0B\AA\8D.e4O\09\BDG\89OZ:A\18q[<P g\93'\F9\18\9F~\10\85k#\8B\B9\B0\ABL\A8Z\BFK!\F5\C7k\CC\D7\18P\B2.\04Y('j\0F.\95\1D\B0p|j\11m\C1\91\13\FAv-\C5\F2\0B\D5\D2\AB[\E7\17D\DC\9C\BD\B5\1E\A7W\96:\ACV\A9\0A\0D\80#\BE\D1\F5\CA\E8\A6M\A0G'\9B5:\09j\83[\0B+\02;j\A0H\98\923\07\9A\EBF~R/\A2zX\22\92\1E\\U\1BOSu6\E4o:j\97\E7,;\061\04\E0\9A\04\05\98\94\0D\87/m\87\1F^\F9\B45Ps\B5Gi\E4TT\E6\A0\81\95\99@\86!\ABD\13\B3U\07\B0\DFW\8C\E2\D5\11\D5 X\D5t\9D\F3\8B)\D6\CCX\87\0C\AF\92\F6\9Au\16\14\06\E7\1C_\F9$Q\A7u\22\B8\B2\96z-X\A4\9A\81f\1A\A6Z\C0\9B\08\C9\FEE\AB\C3\85\1F\99\C70\C4P\03\AC\A2\BF\0F\84$\A1\9Bt\08\A57\D5A\C1oV\82\BF\E3\A7\FA\EAVO\12\98a\1A\7F_`\92+\A1\9D\E7;\19\17\F1\852sUQ\99\A6I1\8BPw3E\C9\97F\08V\97*\CBC\FC\81\ABc!\B1\C3<+\B5\09\8B\D4\89\D6\96\A0\F7\06y\C1!8s\D0\8B\DA\D4(D\92r\16\04r\05c2\121\0E\E9\A0l\B1\00\16\C8\05P<4\1A6\D8~V\07.\AB\E271\E3J\F7\E22\8F\85\CD\B3p\CC\AF\00Q[d\C9\C5K\C87W\84G\AA\CF\AE\D5\96\9A\A3Q\E7\DAN\FA{\11\\LQ\F4\A6\99w\98P)\\\A7-x\1A\D4\1B\C6\80S+\89\E7\10\E2\18\9E\B3\C5\08\17\BA%\\tt\C9\\\A9\11\0C\C4;\8B\A8\E6\82\C7\FB{\0F\DC&\\\04\83\A6\\\A4QN\E4\B82\AA\C5\80\0C;\08\E7OV9Q\C1\FB\B2\105>\FA\1A\A8f\85k\C1\E04s;\04\85\DA\B1\D0 \C6\BFv_\F6\0B;\80\19\84\A9\0C/\E9p\BF\1D\E9p\04\A6\CFD\B4\98J\B5\82X\B4\AFq\22\1C\D1u0\A7\00\C3)Y\C9CcD\B51o\09\CC\CAp)\A20\D69\DC\B0\22\D8\BAy\BA\91\CDj\B1*\E1W\9CP\C7\BB\10\E3\03\01\A6\\\AE1\01\D4\0C{\A9'\BBU1H\D1dp$\D4\A0l\81f\D0\B0\B8\12i\B7\D5\F4\B3O\B0\22\F6\91R\F5\14\00J|hShU#C\BB`6\0F\BB\99E\ED\F4F\D3E\BD\CA\A7E\\t\BA\0AU\1E\18F \FE\F9v\88w=P\B6C<\A7\A7\AC\\\B6\B7\F6q\A1Sv\E5\A6tzb?\A7\BCf07?[\1BQ&\90\A6a7xp\A6\0Az\18\96\83\F9\B0\CF\04f\E1\F7Pv&1\C4\AB\09\F5\05\C4-\D2\863V\94rsTB\85\1E2\16\16\D4\00\98\10w{k\D4o\A7\22Da\A5\CC'@]\FB\AC\0D9\B0\02\CA\B343\F2\A8n\B8\CE\91\C14\A68o\86\0A\19\94\EBKhu\A4m\19U\81\D1s\85KS\D2)=\F3\E9\A8\22ul\D8\F2\12\B3%\CA)\B4\F9\F8\CF\BA\DF.A\86\9A\BF\BA\D1\078\AD\04\CCu+\C2\0C9GF\85\0E\0CHG\DB", align 16
@.str.343 = private unnamed_addr constant [12 x i8] c"ML-KEM-1024\00", align 1
@keys = internal unnamed_addr constant [11 x { i32, [4 x i8], ptr, ptr, ptr, i32, i32 }] [{ i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 855, [4 x i8] zeroinitializer, ptr @__const.test_empty_salt_info_HKDF.fake, ptr null, ptr null, i32 10, i32 0 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 855, [4 x i8] zeroinitializer, ptr @.str.333, ptr null, ptr null, i32 0, i32 0 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 1061, [4 x i8] zeroinitializer, ptr @.str.334, ptr null, ptr null, i32 32, i32 0 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 1062, [4 x i8] zeroinitializer, ptr @.str.335, ptr null, ptr null, i32 16, i32 0 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 1034, [4 x i8] zeroinitializer, ptr @.str.334, ptr @.str.336, ptr null, i32 32, i32 32 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 1087, [4 x i8] zeroinitializer, ptr @.str.334, ptr @.str.336, ptr null, i32 32, i32 32 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 1035, [4 x i8] zeroinitializer, ptr @.str.337, ptr @.str.338, ptr null, i32 56, i32 56 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 1088, [4 x i8] zeroinitializer, ptr @.str.339, ptr @.str.340, ptr null, i32 57, i32 57 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 0, [4 x i8] zeroinitializer, ptr @ml_kem_seed, ptr @ml_kem_512_pubkey, ptr @.str.341, i32 64, i32 800 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 0, [4 x i8] zeroinitializer, ptr @ml_kem_seed, ptr @ml_kem_768_pubkey, ptr @.str.342, i32 64, i32 1184 }, { i32, [4 x i8], ptr, ptr, ptr, i32, i32 } { i32 0, [4 x i8] zeroinitializer, ptr @ml_kem_seed, ptr @ml_kem_1024_pubkey, ptr @.str.343, i32 64, i32 1568 }], align 16
@.str.345 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_fromdata_init(ctx)\00", align 1
@.str.346 = private unnamed_addr constant [47 x i8] c"EVP_PKEY_fromdata(ctx, &pkey, selection, parr)\00", align 1
@.str.347 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_todata(pkey, OSSL_KEYMGMT_SELECT_PRIVATE_KEY, &params)\00", align 1
@.str.348 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.349 = private unnamed_addr constant [56 x i8] c"OSSL_PARAM_get_octet_string(p, (void **)ret, 0, retlen)\00", align 1
@.str.350 = private unnamed_addr constant [55 x i8] c"pkey = load_example_key(ak->keytype, input, input_len)\00", align 1
@.str.351 = private unnamed_addr constant [59 x i8] c"ctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.352 = private unnamed_addr constant [20 x i8] c"EVP_PKEY_check(ctx)\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"expected_check\00", align 1
@.str.354 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_public_check(ctx)\00", align 1
@.str.355 = private unnamed_addr constant [19 x i8] c"expected_pub_check\00", align 1
@.str.356 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_param_check(ctx)\00", align 1
@.str.357 = private unnamed_addr constant [21 x i8] c"expected_param_check\00", align 1
@kExampleBadRSAKeyDER = internal constant [1067 x i8] c"0\82\04'\02\01\00\02\82\01\01\00\A6\1A\1En{\EE\C6\89f\E7\93\EFT\12h\EA\BF\86/\DD\D2y\B8\A9n\03\C2\A3\B9\A3\E1K*\B3\F8\B4\CD\EA\BE$\A6W[\83\1F\0F\F2\D3\B7\AC~\D6\8En\1E\BF\B8s\8C\05V\E65\1F\E9\04\0B\09\86}\F1&\08\99\AD{\C8M\94\B0\0B\8B8\A0\\b\A0\AB\D3\8F\D4\09`r\1E3P\80n\22\A6wWk\9A3!f\87n!{\C7$\0E\D8\13\DF\83\DE\CD@X\1D\84\86\EB\B8\12N\D2\FA\80\1F\E4\E7\96)\B8\CC\CEfmS\CA\B9Z\D7\F6\84l-\9A\1A\14\1CN\939\BAt\ED\ED\87\87^Hu6\F0\BC4\FB)\F9\9F\96[\0B\A7T0Q)\18[}\AC\0F\D6_|\F8\98\8C\D8\86b\B3\DC\FF\0F\FFz\AF\\LaI.\C8\95\86\C4\0E\87\FC\1D\CF\8B|a\F6\D8\D0i\F6\CD\8A\8C\F6b\A2V\A9\E3\D1\CFM\A0\F6- \0A\04\B7\A2\F7\B5\99G\18V\85\87\C7\02\03\01\00\01\02\82\01\01\00\99A8\1A\D0\96z\F0\83\D5\DF\94\CE\89=\ECzR!\10\16\06\E0\EE\D2\E6\FDK{\19M\E1\C0\C0\D5\14]y\DD~\8BK\C6\CF\B0uR\A3-\B1&Fh\9C\0A\1A\F2\E1\09\ACS\85\8C6\A9\14e\EA\A0\00\CB\E3?\C4+a.k\06iw\FD8~\1D?\92\E7w\08\19\A7\9D)-\DCB\C6|\D7\D3\A8\01,\F2\D5\82W\CBU=\E7\AA\D2\0600\05\E6\F2G\86\BA\C6ad\EBO*^\07)\E0\96\B2C\FF_\1AT\16\CF\B5V\\\A0\9B\0C\FD\B3\D2\E3y\1D!\E2\D6\13\C4t\A6\F5\8E\8E\81\BB\B4\AD\8A\F0\93\0A\D8\0AB6\BC\E5&*\0D]W\13\C5N/\12\0E\EF\A7\81\1E\C3\A5\DB\C9$\EB\1A\A1\F9\F6\A1x\98\93wBE\03\E2\C9\A2\FE-w\C8\C6\AC\9B\98\89m\9A\E7ac\B7\F2\EC\D6\B1\A1n\0A\1A\FF\FDC(\C3\0C\DC\F2GO'\AA\99\04\8E\AC\E8|\01\02\04\124Vx\02\81\81\00\CAi\E5\BB:\90\82\CB\82P/)\E2vjWUEN5\18a\E0\12p\C0\AB\C7\80\A2\D4F4\03\A0\19&#\9E\EF\1A\CBu\D6\BA\81\F4~R\E5*\E8\F1Il\0F\1A\A0\F9\C6\E7\EC`\E4\CB*\B5V\E9\9C\CD\19u\92\B1f\CE\C3\D9=\11\CB\C4\09\CE\1E0\BA/``U\8D\02\DC]\AF\F7R1\17\07S 3\AD\8C\D5/Z\D0W\D7\D1\80\D6:\9B\04O5\BF\E7\D5\BC\8F\D4\81\02\81\81\00\C0\9F\F8\CD\F7?&\8A=M+\0C\01\D0\A2\B4\18\FE\F7^/\06\13\CDc\AA\12\A9$\86\E3\F3{\DA\1A<\B18\80\80\EFdd\A1\9B\FEvc\8E\83\D2\D9\B9\86\B0\E6\A6\0C~\A8\84\90\98\0C\1E\F3\14w\E0_\81\08\11\8F\A6#\C4\BA\C0\8A\E4\C6\E3\\\BE\C5\EC,\B9\D8\8CM\1A\9D\E7|\85L\0DqNr3\1B\FE\A9\17rvV\9Dt~Rg\9A\87\9A\DB0\DE\E4I(;\D2g\AF\02\81\81\00\89t\9A\8E\A7\B9\A5(\C0h\E5nc\1C\99 \8F\86\8E\12\9Ei0\FA4\D9\92\8D\DB|7\FD(\ABa\98R\7F\14\1A9\AE\FBj\03\A3\E6\BD\B6[k\E5^\9D\C6\A5\07'T\17\D0=\84\9B:\A0\D9\1E\99lc\17\AB\F1\1FI\BA\95\E3;\86\8FB\A4\89\F5\94\8F\8BF\BE\84\BAJ\BC\0D_F\EB\E8\ECC\8C\1E\AD\19i/\08\86z?}\0F\07\97\F3\9A{\B5\B2\C1\8C\95h\04\A0\81\02\81\80N\BF~\1B\CB\13au;\DBY_\B1\D4\B8\EB\9Es\B5\E7\F6\89=\1C\DA\F06\FF5\BD\1E\0Bt\E3\9E\F0\F2\F7\D7\82\B7{j\1B\0E0J\98\0E\B4\F9\81\07\E4u9\E9S\CA\BB\\\AA\93\07\0E\A8/\BA\98I0\A7\CC\1A<h\0C\E1\A4\B1\05\E6\E0%xX\147\F5\1F\E3\22\EF\A8\0E\22\A0\94:\F6\C9\13\E6\06\BF\7F\99\C6\CC\D8\C6\BE\D9.$\C7i\8C\95\BA\F6\04\B3\0A\F4\CB\F0\CE", align 16
@kExampleBad2RSAKeyDER = internal constant [29 x i8] c"0\1B\02\01\00\02\01\00\02\01\00\02\01\00\02\01\00\02\01\00\02\01\00\02\01\00\02\01\00", align 16
@kExampleECPubKeyDER = internal constant [91 x i8] c"0Y0\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\03B\00\04\BA\EB\83\FB;\B2\FF0S\DB\CE2\F2\AC\AED\0D=\13S\B8\D1hU\DEDF\05\A6\C9\D2\04\B7\E3\A2\96\C8\B2^\22\03\D7\03z\8B\13\\BI\C2\AB\86\D6\ACk\93 Vj\C6\C8\A5\0B\E5", align 16
@pExampleECParamDER = internal constant [10 x i8] c"\06\08*\86H\CE=\03\01\07", align 1
@kExampleED25519KeyDER = internal constant [48 x i8] c"0.\02\01\000\05\06\03+ep\04\22\04 \BA{\BA \1B\02u:\E8\88\FE\00\CD\8B\C6\F4\\G\09Ff\E4r\85%&^\123H\F6P", align 16
@.str.358 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@kExampleED25519PubKeyDER = internal constant [44 x i8] c"0*0\05\06\03+ep\03!\00\F5\C5\EBR>}\07\86\B2U\07E\EF[| \E8f(0<\8A\82@\97\A3\08\DCe\809)", align 16
@keycheckdata = internal unnamed_addr constant [8 x { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] }] [{ ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleRSAKeyDER, i64 608, ptr @.str.151, i32 6, i32 1, i32 1, i32 1, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleBadRSAKeyDER, i64 1067, ptr @.str.151, i32 6, i32 0, i32 1, i32 1, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleBad2RSAKeyDER, i64 29, ptr @.str.151, i32 6, i32 0, i32 0, i32 1, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleECKeyDER, i64 121, ptr @.str.165, i32 408, i32 1, i32 1, i32 1, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleECPubKeyDER, i64 91, ptr @.str.165, i32 408, i32 0, i32 1, i32 1, i32 1, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @pExampleECParamDER, i64 10, ptr @.str.165, i32 408, i32 0, i32 0, i32 1, i32 2, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleED25519KeyDER, i64 48, ptr @.str.358, i32 1087, i32 1, i32 1, i32 1, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, ptr, i32, i32, i32, i32, i32, [4 x i8] } { ptr @kExampleED25519PubKeyDER, i64 44, ptr @.str.358, i32 1087, i32 0, i32 1, i32 1, i32 1, [4 x i8] zeroinitializer }], align 16
@test_CMAC_keygen.key = internal global [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@.str.360 = private unnamed_addr constant [100 x i8] c"EVP_PKEY_CTX_ctrl(kctx, -1, EVP_PKEY_OP_KEYGEN, EVP_PKEY_CTRL_CIPHER, 0, (void *)EVP_aes_256_cbc())\00", align 1
@.str.361 = private unnamed_addr constant [101 x i8] c"EVP_PKEY_CTX_ctrl(kctx, -1, EVP_PKEY_OP_KEYGEN, EVP_PKEY_CTRL_SET_MAC_KEY, sizeof(key), (void *)key)\00", align 1
@.str.362 = private unnamed_addr constant [24 x i8] c"get_cmac_val(pkey, mac)\00", align 1
@.str.363 = private unnamed_addr constant [25 x i8] c"get_cmac_val(pkey, mac2)\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"mac2\00", align 1
@__const.get_cmac_val.msg = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.366 = private unnamed_addr constant [6 x i8] c"mdctx\00", align 1
@.str.367 = private unnamed_addr constant [73 x i8] c"EVP_DigestSignInit_ex(mdctx, NULL, NULL, testctx, testpropq, pkey, NULL)\00", align 1
@.str.368 = private unnamed_addr constant [46 x i8] c"EVP_DigestSignUpdate(mdctx, msg, sizeof(msg))\00", align 1
@.str.369 = private unnamed_addr constant [41 x i8] c"EVP_DigestSignFinal(mdctx, mac, &maclen)\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"maclen\00", align 1
@.str.371 = private unnamed_addr constant [15 x i8] c"AES_BLOCK_SIZE\00", align 1
@__const.test_HKDF.info = private unnamed_addr constant [11 x i8] c"infostring\00", align 1
@__const.test_HKDF.expected = private unnamed_addr constant [20 x i8] c"\E5\07p\7F\C6x\D6T2_~\C5{Y>\D8\03k\ED\CA", align 16
@.str.372 = private unnamed_addr constant [62 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22HKDF\22, testpropq)\00", align 1
@.str.373 = private unnamed_addr constant [5 x i8] c"HKDF\00", align 1
@.str.374 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_derive_init(pctx)\00", align 1
@.str.375 = private unnamed_addr constant [45 x i8] c"EVP_PKEY_CTX_set_hkdf_md(pctx, EVP_sha256())\00", align 1
@.str.376 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_CTX_set1_hkdf_salt(pctx, salt, sizeof(salt) - 1)\00", align 1
@.str.377 = private unnamed_addr constant [55 x i8] c"EVP_PKEY_CTX_set1_hkdf_key(pctx, key, sizeof(key) - 1)\00", align 1
@.str.378 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_CTX_add1_hkdf_info(pctx, info, sizeof(info) - 1)\00", align 1
@.str.379 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_derive(pctx, out, &outlen)\00", align 1
@.str.380 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@__const.test_emptyikm_HKDF.salt = private unnamed_addr constant [11 x i8] c"9876543210\00", align 1
@__const.test_emptyikm_HKDF.info = private unnamed_addr constant [11 x i8] c"stringinfo\00", align 1
@__const.test_emptyikm_HKDF.expected = private unnamed_addr constant [20 x i8] c"h\81\A5>[\9C{o.\EC\C8G|\FAG5f\82\150", align 16
@__const.test_empty_salt_info_HKDF.fake = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@__const.test_empty_salt_info_HKDF.key = private unnamed_addr constant [31 x i8] c"012345678901234567890123456789\00", align 16
@__const.test_empty_salt_info_HKDF.expected = private unnamed_addr constant [20 x i8] c"g\12\F9'\8A\8A:\8F},\A3j\AA\E9\B3\B9R_\E0\06", align 16
@.str.381 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_CTX_set1_hkdf_salt(pctx, fake, sizeof(fake) - 1)\00", align 1
@.str.382 = private unnamed_addr constant [3 x i8] c"xp\00", align 1
@.str.383 = private unnamed_addr constant [42 x i8] c"d2i_X509_PUBKEY(&xp, &p, (long)input_len)\00", align 1
@.str.384 = private unnamed_addr constant [21 x i8] c"X509_PUBKEY_get0(xp)\00", align 1
@kExampleBadECPubKeyDER = internal constant [91 x i8] c"0Y0\13\06\07*\86H\CE=\02\02\06\08*\86H\CE=\03\01\07\03B\00\04\BA\EB\83\FB;\B2\FF0S\DB\CE2\F2\AC\AED\0D=\13S\B8\D1hU\DEDF\05\A6\C9\D2\04\B7\E3\A2\96\C8\B2^\22\03\D7\03z\8B\13\\BI\C2\AB\86\D6\ACk\93 Vj\C6\C8\A5\0B\E5", align 16
@.str.385 = private unnamed_addr constant [47 x i8] c"xp = d2i_X509_PUBKEY(&xp, &p, (long)input_len)\00", align 1
@.str.386 = private unnamed_addr constant [29 x i8] c"X509_PUBKEY_get0(xp) == NULL\00", align 1
@.str.387 = private unnamed_addr constant [25 x i8] c"xq = X509_PUBKEY_dup(xp)\00", align 1
@.str.388 = private unnamed_addr constant [3 x i8] c"xq\00", align 1
@.str.389 = private unnamed_addr constant [21 x i8] c"X509_PUBKEY_get0(xq)\00", align 1
@.str.390 = private unnamed_addr constant [29 x i8] c"X509_PUBKEY_get0(xq) == NULL\00", align 1
@ec_public_sect163k1_validxy = internal constant [66 x i8] c"0@0\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\01\03,\00\04\02\84X\A6\D4\A05+\AE\F0\C0i\05\CF*P3\F9\E3\92y\02\D1{\9F\22\00\F0;\0E].\B7#$\F3j\D8\17eA/", align 16
@ec_public_sect163k1_badx = internal constant [66 x i8] c"0@0\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\01\03,\00\04\0A\84X\A6\D4\A05+\AE\F0\C0i\05\CF*P3\F9\E3\92\B0\02\D1{\9F\22\00\F0;\0E].\B7#$\F3j\D8\17eA/", align 16
@ec_public_sect163k1_bady = internal constant [66 x i8] c"0@0\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\01\03,\00\04\02\84X\A6\D4\A05+\AE\F0\C0i\05\CF*P3\F9\E3\92y\0A\D1{\9F\22\00\F0;\0E].\B7#$\F3j\D8\17eA\E6", align 16
@ec_der_pub_keys = internal unnamed_addr constant [3 x { ptr, i64, i32, [4 x i8] }] [{ ptr, i64, i32, [4 x i8] } { ptr @ec_public_sect163k1_validxy, i64 66, i32 1, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @ec_public_sect163k1_badx, i64 66, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @ec_public_sect163k1_bady, i64 66, i32 0, [4 x i8] zeroinitializer }], align 16
@.str.392 = private unnamed_addr constant [56 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22DSA\22, NULL)\00", align 1
@.str.393 = private unnamed_addr constant [27 x i8] c"bld = OSSL_PARAM_BLD_new()\00", align 1
@.str.394 = private unnamed_addr constant [13 x i8] c"p = BN_new()\00", align 1
@.str.395 = private unnamed_addr constant [13 x i8] c"q = BN_new()\00", align 1
@.str.396 = private unnamed_addr constant [13 x i8] c"g = BN_new()\00", align 1
@.str.397 = private unnamed_addr constant [15 x i8] c"pub = BN_new()\00", align 1
@.str.398 = private unnamed_addr constant [16 x i8] c"priv = BN_new()\00", align 1
@.str.399 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_P, p)\00", align 1
@.str.400 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_Q, q)\00", align 1
@.str.401 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.402 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_G, g)\00", align 1
@.str.403 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.404 = private unnamed_addr constant [58 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PUB_KEY, pub)\00", align 1
@.str.405 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.406 = private unnamed_addr constant [60 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PRIV_KEY, priv)\00", align 1
@.str.407 = private unnamed_addr constant [38 x i8] c"params = OSSL_PARAM_BLD_to_param(bld)\00", align 1
@.str.408 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_fromdata_init(pctx)\00", align 1
@.str.409 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_fromdata(pctx, &pkey, EVP_PKEY_KEYPAIR, params)\00", align 1
@.str.410 = private unnamed_addr constant [61 x i8] c"OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_DIGEST)\00", align 1
@.str.411 = private unnamed_addr constant [67 x i8] c"OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_ALGORITHM_ID)\00", align 1
@.str.412 = private unnamed_addr constant [13 x i8] c"algorithm-id\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.414 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_set_params(ctx, ourparams)\00", align 1
@.str.415 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_get_params(ctx, ourparams)\00", align 1
@.str.416 = private unnamed_addr constant [7 x i8] c"mdname\00", align 1
@.str.417 = private unnamed_addr constant [9 x i8] c"\22SHA512\22\00", align 1
@.str.418 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_CTX_set_signature_md(ctx, EVP_sha256())\00", align 1
@.str.419 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_get_signature_md(ctx, &md)\00", align 1
@.str.420 = private unnamed_addr constant [13 x i8] c"EVP_sha256()\00", align 1
@.str.421 = private unnamed_addr constant [75 x i8] c"EVP_DigestSignInit_ex(mdctx, NULL, \22SHA1\22, testctx, testpropq, pkey, NULL)\00", align 1
@.str.422 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.423 = private unnamed_addr constant [49 x i8] c"strcmp(params[0].key, OSSL_DIGEST_PARAM_SSL3_MS)\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"ssl3-ms\00", align 1
@.str.425 = private unnamed_addr constant [14 x i8] c"params[1].key\00", align 1
@.str.426 = private unnamed_addr constant [40 x i8] c"EVP_MD_CTX_set_params(mdctx, ourparams)\00", align 1
@.str.427 = private unnamed_addr constant [49 x i8] c"just_params = make_key_fromdata(keytype, params)\00", align 1
@.str.428 = private unnamed_addr constant [53 x i8] c"params_and_priv = make_key_fromdata(keytype, params)\00", align 1
@.str.429 = private unnamed_addr constant [52 x i8] c"params_and_pub = make_key_fromdata(keytype, params)\00", align 1
@.str.430 = private unnamed_addr constant [56 x i8] c"params_and_keypair = make_key_fromdata(keytype, params)\00", align 1
@.str.431 = private unnamed_addr constant [63 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, keytype, testpropq)\00", align 1
@.str.432 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_CTX_set_params(pctx, params)\00", align 1
@.str.433 = private unnamed_addr constant [61 x i8] c"EVP_PKEY_fromdata(pctx, &tmp_pkey, EVP_PKEY_KEYPAIR, params)\00", align 1
@.str.434 = private unnamed_addr constant [9 x i8] c"tmp_pkey\00", align 1
@.str.435 = private unnamed_addr constant [4 x i8] c"bio\00", align 1
@.str.436 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.437 = private unnamed_addr constant [56 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22RSA\22, NULL)\00", align 1
@.str.438 = private unnamed_addr constant [13 x i8] c"n = BN_new()\00", align 1
@.str.439 = private unnamed_addr constant [13 x i8] c"e = BN_new()\00", align 1
@.str.440 = private unnamed_addr constant [13 x i8] c"d = BN_new()\00", align 1
@.str.441 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_N, n)\00", align 1
@.str.442 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.443 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_E, e)\00", align 1
@.str.444 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.445 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_D, d)\00", align 1
@.str.446 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.447 = private unnamed_addr constant [29 x i8] c"key = load_example_rsa_key()\00", align 1
@.str.448 = private unnamed_addr constant [48 x i8] c"key_ctx = EVP_PKEY_CTX_new_from_pkey(0, key, 0)\00", align 1
@.str.449 = private unnamed_addr constant [9 x i8] c"pad-mode\00", align 1
@.str.450 = private unnamed_addr constant [12 x i8] c"mgf1-digest\00", align 1
@.str.451 = private unnamed_addr constant [42 x i8] c"EVP_PKEY_encrypt_init_ex(key_ctx, params)\00", align 1
@.str.452 = private unnamed_addr constant [41 x i8] c"EVP_PKEY_CTX_get_params(key_ctx, params)\00", align 1
@.str.453 = private unnamed_addr constant [7 x i8] c"oaepmd\00", align 1
@.str.454 = private unnamed_addr constant [26 x i8] c"OSSL_DIGEST_NAME_SHA2_256\00", align 1
@.str.455 = private unnamed_addr constant [7 x i8] c"mgf1md\00", align 1
@.str.456 = private unnamed_addr constant [22 x i8] c"OSSL_DIGEST_NAME_SHA1\00", align 1
@.str.457 = private unnamed_addr constant [57 x i8] c"key_ctx = EVP_PKEY_CTX_new_from_pkey(testctx, key, NULL)\00", align 1
@.str.458 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_encrypt_init(key_ctx)\00", align 1
@.str.459 = private unnamed_addr constant [62 x i8] c"EVP_PKEY_CTX_set_rsa_padding(key_ctx, RSA_PKCS1_OAEP_PADDING)\00", align 1
@.str.460 = private unnamed_addr constant [30 x i8] c"label = OPENSSL_strdup(\22foo\22)\00", align 1
@.str.461 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.462 = private unnamed_addr constant [52 x i8] c"EVP_PKEY_CTX_set0_rsa_oaep_label(key_ctx, label, 0)\00", align 1
@.str.463 = private unnamed_addr constant [51 x i8] c"EVP_PKEY_CTX_set0_rsa_oaep_label(key_ctx, NULL, 0)\00", align 1
@.str.464 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.465 = private unnamed_addr constant [31 x i8] c"Test skipped for FIPS provider\00", align 1
@.str.466 = private unnamed_addr constant [59 x i8] c"sign_ctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, NULL)\00", align 1
@.str.467 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_sign_init(sign_ctx)\00", align 1
@.str.468 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_CTX_set_rsa_padding(sign_ctx, RSA_PKCS1_PADDING)\00", align 1
@.str.469 = private unnamed_addr constant [54 x i8] c"EVP_PKEY_CTX_set_signature_md(sign_ctx, EVP_sha256())\00", align 1
@.str.470 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_sign(sign_ctx, NULL, &sig_len, digest, sizeof(digest))\00", align 1
end_hunk_0
begin_hunk_1_@test_EVP_SM2:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i64 0, ptr %i.f, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i64 0, ptr %i.h, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.j = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.k = tail call ptr @EVP_PKEY_CTX_new_from_name(ptr noundef %i.j, ptr noundef nonnull @.str.279, ptr noundef null) #8 ; 5 uses
  %i.l = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2726, ptr noundef nonnull @.str.278, ptr noundef %i.k) #8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @EVP_PKEY_paramgen_init(ptr noundef %i.k) #8
  %i.n = icmp eq i32 %i.m, 1
  %i.o = zext i1 %i.n to i32
  %i.p = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2729, ptr noundef nonnull @.str.280, i32 noundef %i.o) #8
  %.not68 = icmp eq i32 %i.p, 0
  br i1 %.not68, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ptr noundef %i.k, i32 noundef 1172) #8
  %i.r = tail call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2732, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.123, i32 noundef %i.q, i32 noundef 0) #8
  %.not69 = icmp eq i32 %i.r, 0
  br i1 %.not69, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = call i32 @EVP_PKEY_paramgen(ptr noundef %i.k, ptr noundef nonnull %i.b) #8
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2735, ptr noundef nonnull @.str.282, i32 noundef %i.u) #8
  %.not70 = icmp eq i32 %i.v, 0
  br i1 %.not70, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.y = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.w, ptr noundef %i.x, ptr noundef null) #8 ; 36 uses
  %i.z = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2739, ptr noundef nonnull @.str.283, ptr noundef %i.y) #8
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 @EVP_PKEY_keygen_init(ptr noundef %i.y) #8
  %i.ab = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2742, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.123, i32 noundef %i.aa, i32 noundef 0) #8
  %.not72 = icmp eq i32 %i.ab, 0
  br i1 %.not72, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 @EVP_PKEY_keygen(ptr noundef %i.y, ptr noundef nonnull %i.a) #8
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2745, ptr noundef nonnull @.str.284, i32 noundef %i.ae) #8
  %.not73 = icmp eq i32 %i.af, 0
  br i1 %.not73, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call ptr @EVP_MD_CTX_new() #8           ; 36 uses
  %i.ah = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2748, ptr noundef nonnull @.str.156, ptr noundef %i.ag) #8
  %.not74 = icmp eq i32 %i.ah, 0
  br i1 %.not74, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @EVP_MD_CTX_new() #8           ; 37 uses
  %i.aj = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2751, ptr noundef nonnull @.str.285, ptr noundef %i.ai) #8
  %.not75 = icmp eq i32 %i.aj, 0
  br i1 %.not75, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.am = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef null) #8 ; 34 uses
  %i.an = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2754, ptr noundef nonnull @.str.286, ptr noundef %i.am) #8
  %.not76 = icmp eq i32 %i.an, 0
  br i1 %.not76, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @EVP_MD_CTX_set_pkey_ctx(ptr noundef %i.ag, ptr noundef %i.am) #8
  call void @EVP_MD_CTX_set_pkey_ctx(ptr noundef %i.ai, ptr noundef %i.am) #8
  %i.ao = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.ap = call ptr @EVP_MD_fetch(ptr noundef %i.ao, ptr noundef nonnull @.str.288, ptr noundef null) #8 ; 20 uses
  %i.aq = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2760, ptr noundef nonnull @.str.287, ptr noundef %i.ap) #8
  %.not77 = icmp eq i32 %i.aq, 0
  br i1 %.not77, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.as = call i32 @EVP_DigestSignInit(ptr noundef %i.ag, ptr noundef null, ptr noundef %i.ap, ptr noundef null, ptr noundef %i.ar) #8
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2763, ptr noundef nonnull @.str.289, i32 noundef %i.au) #8
  %.not78 = icmp eq i32 %i.av, 0
  br i1 %.not78, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = call i32 @EVP_PKEY_CTX_set1_id(ptr noundef %i.am, ptr noundef nonnull %i.d, i32 noundef 10) #8
  %i.ax = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2766, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.123, i32 noundef %i.aw, i32 noundef 0) #8
  %.not79 = icmp eq i32 %i.ax, 0
  br i1 %.not79, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call i32 @EVP_DigestSignUpdate(ptr noundef %i.ag, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2769, ptr noundef nonnull @.str.132, i32 noundef %i.ba) #8
  %.not80 = icmp eq i32 %i.bb, 0
  br i1 %.not80, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = call i32 @EVP_DigestSignFinal(ptr noundef %i.ag, ptr noundef null, ptr noundef nonnull %i.c) #8
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2773, ptr noundef nonnull @.str.137, i32 noundef %i.be) #8
  %.not81 = icmp eq i32 %i.bf, 0
  br i1 %.not81, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !16
  %i.bh = call noalias ptr @CRYPTO_malloc(i64 noundef %i.bg, ptr noundef nonnull @.str.18, i32 noundef 2776) #8 ; 26 uses
  %i.bi = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2776, ptr noundef nonnull @.str.134, ptr noundef %i.bh) #8
  %.not82 = icmp eq i32 %i.bi, 0
  br i1 %.not82, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = call i32 @EVP_DigestSignFinal(ptr noundef %i.ag, ptr noundef %i.bh, ptr noundef nonnull %i.c) #8
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2779, ptr noundef nonnull @.str.139, i32 noundef %i.bl) #8
  %.not83 = icmp eq i32 %i.bm, 0
  br i1 %.not83, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.bo = call i32 @EVP_DigestVerifyInit(ptr noundef %i.ai, ptr noundef null, ptr noundef %i.ap, ptr noundef null, ptr noundef %i.bn) #8
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2785, ptr noundef nonnull @.str.291, i32 noundef %i.bq) #8
  %.not84 = icmp eq i32 %i.br, 0
  br i1 %.not84, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = call i32 @EVP_PKEY_CTX_set1_id(ptr noundef %i.am, ptr noundef nonnull %i.d, i32 noundef 10) #8
  %i.bt = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2788, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.123, i32 noundef %i.bs, i32 noundef 0) #8
  %.not85 = icmp eq i32 %i.bt, 0
  br i1 %.not85, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call i32 @EVP_DigestVerifyUpdate(ptr noundef %i.ai, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2791, ptr noundef nonnull @.str.144, i32 noundef %i.bw) #8
  %.not86 = icmp eq i32 %i.bx, 0
  br i1 %.not86, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = load i64, ptr %i.c, align 8, !tbaa !16
  %i.bz = call i32 @EVP_DigestVerifyFinal(ptr noundef %i.ai, ptr noundef %i.bh, i64 noundef %i.by) #8
  %i.ca = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2794, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.123, i32 noundef %i.bz, i32 noundef 0) #8
  %.not87 = icmp eq i32 %i.ca, 0
  br i1 %.not87, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.cc = call i32 @EVP_DigestVerifyInit(ptr noundef %i.ai, ptr noundef null, ptr noundef %i.ap, ptr noundef null, ptr noundef %i.cb) #8
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2803, ptr noundef nonnull @.str.291, i32 noundef %i.ce) #8
  %.not88 = icmp eq i32 %i.cf, 0
  br i1 %.not88, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = call i32 @EVP_PKEY_CTX_set1_id(ptr noundef %i.am, ptr noundef null, i32 noundef 0) #8
  %i.ch = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2806, ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.123, i32 noundef %i.cg, i32 noundef 0) #8
  %.not89 = icmp eq i32 %i.ch, 0
  br i1 %.not89, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = call i32 @EVP_DigestVerifyUpdate(ptr noundef %i.ai, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2809, ptr noundef nonnull @.str.144, i32 noundef %i.ck) #8
  %.not90 = icmp eq i32 %i.cl, 0
  br i1 %.not90, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !16
  %i.cn = call i32 @EVP_DigestVerifyFinal(ptr noundef %i.ai, ptr noundef %i.bh, i64 noundef %i.cm) #8
  %i.co = call i32 @test_int_eq(ptr noundef nonnull @.str.18, i32 noundef 2812, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.123, i32 noundef %i.cn, i32 noundef 0) #8
  %.not91 = icmp eq i32 %i.co, 0
  br i1 %.not91, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %1, ptr noundef nonnull @.str.174, ptr noundef nonnull %i.i, i64 noundef 50) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.am, %bb.z
  %.not124.a = phi i1 [ true, %bb.z ], [ false, %bb.am ] ; 2 uses
  %.057109 = phi ptr [ %i.ap, %bb.z ], [ %i.dt, %bb.am ] ; 9 uses
  %.058108 = phi ptr [ null, %bb.z ], [ %i.cr, %bb.am ]
  call void @EVP_PKEY_CTX_free(ptr noundef %.058108) #8
  %.sroa.speculated21 = select i1 %.not124.a, ptr @.str.293, ptr @.str.294 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.174, ptr noundef nonnull %.sroa.speculated21, i64 noundef 0) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.cp = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.cr = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.cp, ptr noundef %i.cq, ptr noundef null) #8 ; 21 uses
  %i.cs = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2837, ptr noundef nonnull @.str.295, ptr noundef %i.cr) #8
  %.not92 = icmp eq i32 %i.cs, 0
  br i1 %.not92, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = call i32 @EVP_PKEY_encrypt_init(ptr noundef %i.cr) #8
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2840, ptr noundef nonnull @.str.296, i32 noundef %i.cv) #8
  %.not93 = icmp eq i32 %i.cw, 0
  br i1 %.not93, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = call i32 @EVP_PKEY_CTX_set_params(ptr noundef %i.cr, ptr noundef nonnull %0) #8
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2843, ptr noundef nonnull @.str.297, i32 noundef %i.cz) #8
  %.not94 = icmp eq i32 %i.da, 0
  br i1 %.not94, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 128, ptr %i.f, align 8, !tbaa !16
  %i.db = call i32 @EVP_PKEY_encrypt(ptr noundef %i.cr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull @kMsg, i64 noundef 4) #8
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2848, ptr noundef nonnull @.str.298, i32 noundef %i.dd) #8
  %.not95 = icmp eq i32 %i.de, 0
  br i1 %.not95, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = call i32 @EVP_PKEY_decrypt_init(ptr noundef %i.cr) #8
  %i.dg = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2851, ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.123, i32 noundef %i.df, i32 noundef 0) #8
  %.not96 = icmp eq i32 %i.dg, 0
  br i1 %.not96, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = call i32 @EVP_PKEY_CTX_set_params(ptr noundef %i.cr, ptr noundef nonnull %0) #8
  %i.di = icmp ne i32 %i.dh, 0
  %i.dj = zext i1 %i.di to i32
  %i.dk = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2854, ptr noundef nonnull @.str.297, i32 noundef %i.dj) #8
  %.not97 = icmp eq i32 %i.dk, 0
  br i1 %.not97, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 8, ptr %i.h, align 8, !tbaa !16
  %i.dl = load i64, ptr %i.f, align 8, !tbaa !16
  %i.dm = call i32 @EVP_PKEY_decrypt(ptr noundef %i.cr, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, i64 noundef %i.dl) #8
  %i.dn = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2860, ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.123, i32 noundef %i.dm, i32 noundef 0) #8
  %.not98 = icmp eq i32 %i.dn, 0
  br i1 %.not98, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = call i32 @EVP_PKEY_CTX_get_params(ptr noundef %i.cr, ptr noundef nonnull %1) #8
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2863, ptr noundef nonnull @.str.301, i32 noundef %i.dq) #8
  %.not99 = icmp eq i32 %i.dr, 0
  br i1 %.not99, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @EVP_MD_free(ptr noundef %.057109) #8
  %i.ds = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.dt = call ptr @EVP_MD_fetch(ptr noundef %i.ds, ptr noundef nonnull %i.i, ptr noundef null) #8 ; 7 uses
  %i.du = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2872, ptr noundef nonnull @.str.302, ptr noundef %i.dt) #8
  %.not100 = icmp eq i32 %i.du, 0
  br i1 %.not100, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = call i32 @EVP_MD_is_a(ptr noundef %i.dt, ptr noundef nonnull %.sroa.speculated21) #8
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2874, ptr noundef nonnull @.str.303, i32 noundef %i.dx) #8
  %.not101 = icmp eq i32 %i.dy, 0
  br i1 %.not101, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.18, i32 noundef 2875, ptr noundef nonnull @.str.304, ptr noundef nonnull %i.i, ptr noundef nonnull %.sroa.speculated21) #8
  br label %.thread

bb.al:                                            ; preds = %bb.aj
  %i.dz = load i64, ptr %i.h, align 8, !tbaa !16
  %i.ea = icmp eq i64 %i.dz, 4
  %i.eb = zext i1 %i.ea to i32
  %i.ec = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2879, ptr noundef nonnull @.str.305, i32 noundef %i.eb) #8
  %.not102 = icmp eq i32 %i.ec, 0
  br i1 %.not102, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = load i32, ptr %i.g, align 1
  %i.ee = icmp ne i32 %i.ed, 67305985
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2882, ptr noundef nonnull @.str.306, i32 noundef %i.eh) #8
  %.not124 = icmp ne i32 %i.ei, 0                 ; 2 uses
  %brmerge.not = and i1 %.not124, %.not124.a
  br i1 %brmerge.not, label %bb.aa, label %.thread.loopexit.split.loop.exit

.thread.loopexit.split.loop.exit:                 ; preds = %bb.am
  %.mux.le = zext i1 %.not124 to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split.loop.exit, %bb.aa, %bb.al, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.ak, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.066 = phi i32 [ 0, %bb.ak ], [ 0, %bb.a ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.mux.le, %.thread.loopexit.split.loop.exit ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  %.065 = phi ptr [ %i.y, %bb.ak ], [ null, %bb.a ], [ %i.y, %bb.y ], [ %i.y, %bb.x ], [ %i.y, %bb.w ], [ %i.y, %bb.v ], [ %i.y, %bb.u ], [ %i.y, %bb.t ], [ %i.y, %bb.s ], [ %i.y, %bb.r ], [ %i.y, %bb.q ], [ %i.y, %bb.p ], [ %i.y, %bb.o ], [ %i.y, %bb.n ], [ %i.y, %bb.m ], [ %i.y, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ %i.y, %bb.h ], [ %i.y, %bb.g ], [ %i.y, %bb.f ], [ %i.y, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.y, %bb.ab ], [ %i.y, %bb.ac ], [ %i.y, %bb.ad ], [ %i.y, %bb.ae ], [ %i.y, %bb.af ], [ %i.y, %bb.ag ], [ %i.y, %bb.ah ], [ %i.y, %bb.ai ], [ %i.y, %bb.al ], [ %i.y, %bb.aa ], [ %i.y, %.thread.loopexit.split.loop.exit ]
  %.064 = phi ptr [ %i.am, %bb.ak ], [ null, %bb.a ], [ %i.am, %bb.y ], [ %i.am, %bb.x ], [ %i.am, %bb.w ], [ %i.am, %bb.v ], [ %i.am, %bb.u ], [ %i.am, %bb.t ], [ %i.am, %bb.s ], [ %i.am, %bb.r ], [ %i.am, %bb.q ], [ %i.am, %bb.p ], [ %i.am, %bb.o ], [ %i.am, %bb.n ], [ %i.am, %bb.m ], [ %i.am, %bb.l ], [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.am, %bb.ab ], [ %i.am, %bb.ac ], [ %i.am, %bb.ad ], [ %i.am, %bb.ae ], [ %i.am, %bb.af ], [ %i.am, %bb.ag ], [ %i.am, %bb.ah ], [ %i.am, %bb.ai ], [ %i.am, %bb.al ], [ %i.am, %bb.aa ], [ %i.am, %.thread.loopexit.split.loop.exit ]
  %.063 = phi ptr [ %i.bh, %bb.ak ], [ null, %bb.a ], [ %i.bh, %bb.y ], [ %i.bh, %bb.x ], [ %i.bh, %bb.w ], [ %i.bh, %bb.v ], [ %i.bh, %bb.u ], [ %i.bh, %bb.t ], [ %i.bh, %bb.s ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ], [ %i.bh, %bb.p ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.bh, %bb.ab ], [ %i.bh, %bb.ac ], [ %i.bh, %bb.ad ], [ %i.bh, %bb.ae ], [ %i.bh, %bb.af ], [ %i.bh, %bb.ag ], [ %i.bh, %bb.ah ], [ %i.bh, %bb.ai ], [ %i.bh, %bb.al ], [ %i.bh, %bb.aa ], [ %i.bh, %.thread.loopexit.split.loop.exit ]
  %.062 = phi ptr [ %i.ag, %bb.ak ], [ null, %bb.a ], [ %i.ag, %bb.y ], [ %i.ag, %bb.x ], [ %i.ag, %bb.w ], [ %i.ag, %bb.v ], [ %i.ag, %bb.u ], [ %i.ag, %bb.t ], [ %i.ag, %bb.s ], [ %i.ag, %bb.r ], [ %i.ag, %bb.q ], [ %i.ag, %bb.p ], [ %i.ag, %bb.o ], [ %i.ag, %bb.n ], [ %i.ag, %bb.m ], [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.ag, %bb.ab ], [ %i.ag, %bb.ac ], [ %i.ag, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ag, %bb.af ], [ %i.ag, %bb.ag ], [ %i.ag, %bb.ah ], [ %i.ag, %bb.ai ], [ %i.ag, %bb.al ], [ %i.ag, %bb.aa ], [ %i.ag, %.thread.loopexit.split.loop.exit ]
  %.061 = phi ptr [ %i.ai, %bb.ak ], [ null, %bb.a ], [ %i.ai, %bb.y ], [ %i.ai, %bb.x ], [ %i.ai, %bb.w ], [ %i.ai, %bb.v ], [ %i.ai, %bb.u ], [ %i.ai, %bb.t ], [ %i.ai, %bb.s ], [ %i.ai, %bb.r ], [ %i.ai, %bb.q ], [ %i.ai, %bb.p ], [ %i.ai, %bb.o ], [ %i.ai, %bb.n ], [ %i.ai, %bb.m ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.ai, %bb.ab ], [ %i.ai, %bb.ac ], [ %i.ai, %bb.ad ], [ %i.ai, %bb.ae ], [ %i.ai, %bb.af ], [ %i.ai, %bb.ag ], [ %i.ai, %bb.ah ], [ %i.ai, %bb.ai ], [ %i.ai, %bb.al ], [ %i.ai, %bb.aa ], [ %i.ai, %.thread.loopexit.split.loop.exit ]
  %.260 = phi ptr [ %i.cr, %bb.ak ], [ null, %bb.a ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.cr, %bb.ab ], [ %i.cr, %bb.ac ], [ %i.cr, %bb.ad ], [ %i.cr, %bb.ae ], [ %i.cr, %bb.af ], [ %i.cr, %bb.ag ], [ %i.cr, %bb.ah ], [ %i.cr, %bb.ai ], [ %i.cr, %bb.al ], [ %i.cr, %bb.aa ], [ %i.cr, %.thread.loopexit.split.loop.exit ]
  %.2 = phi ptr [ %i.dt, %bb.ak ], [ null, %bb.a ], [ %i.ap, %bb.y ], [ %i.ap, %bb.x ], [ %i.ap, %bb.w ], [ %i.ap, %bb.v ], [ %i.ap, %bb.u ], [ %i.ap, %bb.t ], [ %i.ap, %bb.s ], [ %i.ap, %bb.r ], [ %i.ap, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.dt, %.thread.loopexit.split.loop.exit ], [ %.057109, %bb.ad ], [ %.057109, %bb.ae ], [ %.057109, %bb.af ], [ %.057109, %bb.ag ], [ %.057109, %bb.ah ], [ %i.dt, %bb.ai ], [ %i.dt, %bb.al ], [ %.057109, %bb.aa ], [ %.057109, %bb.ac ], [ %.057109, %bb.ab ]
  call void @EVP_PKEY_CTX_free(ptr noundef %i.k) #8
  call void @EVP_PKEY_CTX_free(ptr noundef %.065) #8
  call void @EVP_PKEY_CTX_free(ptr noundef %.064) #8
  call void @EVP_PKEY_CTX_free(ptr noundef %.260) #8
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !20
  call void @EVP_PKEY_free(ptr noundef %i.ej) #8
  %i.ek = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @EVP_PKEY_free(ptr noundef %i.ek) #8
  call void @EVP_MD_CTX_free(ptr noundef %.062) #8
  call void @EVP_MD_CTX_free(ptr noundef %.061) #8
  call void @EVP_MD_free(ptr noundef %.2) #8
  call void @CRYPTO_free(ptr noundef %.063, ptr noundef nonnull @.str.18, i32 noundef 2897) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_EVP_SM2_verify() #1 {
bb.a:
  %i.a = alloca [70 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(70) %i.a, ptr noundef nonnull align 16 dereferenceable(70) @__const.test_EVP_SM2_verify.signature, i64 70, i1 false)
  %i.b = tail call ptr @BIO_new_mem_buf(ptr noundef nonnull @.str.307, i32 noundef 178) #8 ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  %i.e = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2652, ptr noundef nonnull @.str.310, i32 noundef %i.d) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.g = tail call ptr @PEM_read_bio_PUBKEY_ex(ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.f, ptr noundef null) #8 ; 13 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  %i.j = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2656, ptr noundef nonnull @.str.311, i32 noundef %i.i) #8
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @EVP_PKEY_is_a(ptr noundef %i.g, ptr noundef nonnull @.str.279) #8
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2659, ptr noundef nonnull @.str.312, i32 noundef %i.m) #8
  %.not29 = icmp eq i32 %i.n, 0
  br i1 %.not29, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @EVP_MD_CTX_new() #8       ; 12 uses
  %i.p = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2662, ptr noundef nonnull @.str.313, ptr noundef %i.o) #8
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.r = tail call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.q, ptr noundef %i.g, ptr noundef null) #8 ; 9 uses
  %i.s = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2665, ptr noundef nonnull @.str.314, ptr noundef %i.r) #8
  %.not31 = icmp eq i32 %i.s, 0
  br i1 %.not31, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @EVP_MD_CTX_set_pkey_ctx(ptr noundef %i.o, ptr noundef %i.r) #8
  %i.t = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.u = tail call ptr @EVP_MD_fetch(ptr noundef %i.t, ptr noundef nonnull @.str.288, ptr noundef null) #8 ; 7 uses
  %i.v = tail call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 2670, ptr noundef nonnull @.str.315, ptr noundef %i.u) #8
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @EVP_DigestVerifyInit(ptr noundef %i.o, ptr noundef null, ptr noundef %i.u, ptr noundef null, ptr noundef %i.g) #8
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2673, ptr noundef nonnull @.str.316, i32 noundef %i.y) #8
  %.not33 = icmp eq i32 %i.z, 0
  br i1 %.not33, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i32 @EVP_PKEY_CTX_set1_id(ptr noundef %i.r, ptr noundef nonnull @.str.309, i32 noundef 18) #8
  %i.ab = tail call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2676, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.123, i32 noundef %i.aa, i32 noundef 0) #8
  %.not34 = icmp eq i32 %i.ab, 0
  br i1 %.not34, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @EVP_DigestVerifyUpdate(ptr noundef %i.o, ptr noundef nonnull @.str.308, i64 noundef 14) #8
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = tail call i32 @test_true(ptr noundef nonnull @.str.18, i32 noundef 2679, ptr noundef nonnull @.str.318, i32 noundef %i.ae) #8
  %.not35 = icmp eq i32 %i.af, 0
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @EVP_DigestVerifyFinal(ptr noundef %i.o, ptr noundef nonnull %i.a, i64 noundef 70) #8
  %i.ah = call i32 @test_int_gt(ptr noundef nonnull @.str.18, i32 noundef 2682, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.123, i32 noundef %i.ag, i32 noundef 0) #8
  %.not36 = icmp ne i32 %i.ah, 0
  %spec.select = zext i1 %.not36 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.026 = phi ptr [ null, %bb.a ], [ %i.g, %bb.j ], [ %i.g, %bb.i ], [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.025 = phi ptr [ null, %bb.a ], [ %i.o, %bb.j ], [ %i.o, %bb.i ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %.024 = phi ptr [ null, %bb.a ], [ %i.r, %bb.j ], [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %.0 = phi ptr [ null, %bb.a ], [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.u, %bb.h ], [ %i.u, %bb.g ], [ %i.u, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.ai = call i32 @BIO_free(ptr noundef %i.b) #8 ; 0 uses
  call void @EVP_PKEY_free(ptr noundef %.026) #8
  call void @EVP_PKEY_CTX_free(ptr noundef %.024) #8
  call void @EVP_MD_CTX_free(ptr noundef %.025) #8
  call void @EVP_MD_free(ptr noundef %.0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_set_get_raw_keys(i32 noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr @nullprov, align 8, !tbaa !14
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %0, i32 noundef 0, i32 noundef 0)
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %0, i32 noundef 0, i32 noundef 1)
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @nullprov, align 8, !tbaa !14
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %0, i32 noundef 1, i32 noundef 0)
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %0, i32 noundef 1, i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.g = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.f, %bb.f ]
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_EVP_PKEY_check(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [48 x i8], ptr @keycheckdata, i64 %i.d ; 6 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.n = load i32, ptr %i.m, align 16, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !18
  store i64 %i.h, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.q = load ptr, ptr @testctx, align 8, !tbaa !12
  %i.r = call ptr @OSSL_DECODER_CTX_new_for_pkey(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.152, ptr noundef null, ptr noundef %i.p, i32 noundef 0, ptr noundef %i.q, ptr noundef null) #8 ; 2 uses
  %i.s = call i32 @OSSL_DECODER_from_data(ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 0 uses
  call void @OSSL_DECODER_CTX_free(ptr noundef %i.r) #8
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = call i32 @test_ptr(ptr noundef nonnull @.str.18, i32 noundef 3431, ptr noundef nonnull @.str.350, ptr noundef %i.t) #8
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = shl nuw i64 1, %i.d
  %i.w = and i64 %i.v, 79
  %.not24 = icmp eq i64 %i.w, 0
  br i1 %.not24, label %bb.d, label %bb.c

end_hunk_1
