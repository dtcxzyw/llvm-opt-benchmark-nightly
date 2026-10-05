Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtCsgpMJJHpo27b_12typst_bundle7export_15export_document:bb.a
  %i.alk = lshr i64 %i.akm, %i.alj
  %.sroa.0.0.i.i.i.i65.i.i = select i1 %.not.i.i.i.i64.i.i, i64 0, i64 %i.alk
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i

bb.ez:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i76
  %i.all = add i64 %i.aki, 8
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i: ; preds = %bb.ez, %bb.ey
  %i.alm = phi i64 [ %i.alh, %bb.ey ], [ %i.akd, %bb.ez ] ; 3 uses
  %i.aln = phi i64 [ %i.alg, %bb.ey ], [ %i.ake, %bb.ez ] ; 5 uses
  %i.alo = phi i64 [ %i.ali, %bb.ey ], [ %i.akf, %bb.ez ] ; 3 uses
  %i.alp = phi i64 [ %i.ald, %bb.ey ], [ %i.akg, %bb.ez ] ; 3 uses
  %i.alq = phi i64 [ %i.aki, %bb.ey ], [ %i.all, %bb.ez ] ; 6 uses
  %i.alr = phi i64 [ %.sroa.0.0.i.i.i.i65.i.i, %bb.ey ], [ %i.akr, %bb.ez ] ; 2 uses
  br i1 %i.akl, label %bb.fa, label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit69.i.i

bb.fa:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i
  %i.als = add i64 %i.akj, 16                     ; 2 uses
  %i.alt = shl i64 %i.alq, 3                      ; 2 uses
  %i.alu = and i64 %i.alt, 56
  %i.alv = shl i64 %.val1.i.i.i.i.i.i.i.i, %i.alu
  %i.alw = or i64 %i.alv, %i.alr                  ; 3 uses
  %i.alx = icmp ugt i64 %i.alq, 8
  br i1 %i.alx, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aly = xor i64 %i.alw, %i.alp                 ; 3 uses
  %i.alz = add i64 %i.alo, %i.aln                 ; 3 uses
  %i.ama = call noundef i64 @llvm.fshl.i64(i64 %i.aln, i64 %i.aln, i64 13)
  %i.amb = xor i64 %i.alz, %i.ama                 ; 3 uses
  %i.amc = call noundef i64 @llvm.fshl.i64(i64 %i.alz, i64 %i.alz, i64 32)
  %i.amd = add i64 %i.aly, %i.alm                 ; 2 uses
  %i.ame = call noundef i64 @llvm.fshl.i64(i64 %i.aly, i64 %i.aly, i64 16)
  %i.amf = xor i64 %i.amd, %i.ame                 ; 3 uses
  %i.amg = add i64 %i.amf, %i.amc                 ; 2 uses
  %i.amh = call noundef i64 @llvm.fshl.i64(i64 %i.amf, i64 %i.amf, i64 21)
  %i.ami = xor i64 %i.amh, %i.amg                 ; 2 uses
  store i64 %i.ami, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15088, !noalias !15086
  %i.amj = add i64 %i.amd, %i.amb                 ; 3 uses
  %i.amk = call noundef i64 @llvm.fshl.i64(i64 %i.amb, i64 %i.amb, i64 17)
  %i.aml = xor i64 %i.amj, %i.amk                 ; 2 uses
  store i64 %i.aml, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15088, !noalias !15086
  %i.amm = call noundef i64 @llvm.fshl.i64(i64 %i.amj, i64 %i.amj, i64 32) ; 2 uses
  store i64 %i.amm, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15088, !noalias !15086
  %i.amn = xor i64 %i.amg, %i.alw                 ; 2 uses
  store i64 %i.amn, ptr %i.at, align 8, !alias.scope !15089, !noalias !15086
  %.not.i.i.i.i.i67.i.i = icmp eq i64 %i.alq, 0
  %i.amo = sub nuw nsw i64 64, %i.alt
  %i.amp = lshr i64 %.val1.i.i.i.i.i.i.i.i, %i.amo
  %.sroa.0.0.i.i.i.i.i68.i.i = select i1 %.not.i.i.i.i.i67.i.i, i64 0, i64 %i.amp
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit69.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.amq = add i64 %i.alq, 8
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit69.i.i

_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit69.i.i: ; preds = %bb.fc, %bb.fb, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i
  %i.amr = phi i64 [ %i.alm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i ], [ %i.amm, %bb.fb ], [ %i.alm, %bb.fc ] ; 2 uses
  %i.ams = phi i64 [ %i.aln, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i ], [ %i.aml, %bb.fb ], [ %i.aln, %bb.fc ] ; 4 uses
  %i.amt = phi i64 [ %i.alo, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i ], [ %i.amn, %bb.fb ], [ %i.alo, %bb.fc ] ; 2 uses
  %i.amu = phi i64 [ %i.alp, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i ], [ %i.ami, %bb.fb ], [ %i.alp, %bb.fc ] ; 2 uses
  %i.amv = phi i64 [ %i.alr, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i ], [ %.sroa.0.0.i.i.i.i.i68.i.i, %bb.fb ], [ %i.alw, %bb.fc ]
  %i.amw = phi i64 [ %i.alq, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i ], [ %i.alq, %bb.fb ], [ %i.amq, %bb.fc ] ; 5 uses
  %i.amx = phi i64 [ %i.akn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i66.i.i ], [ %i.als, %bb.fb ], [ %i.als, %bb.fc ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.amy, align 8, !alias.scope !15083, !noalias !15084, !noundef !19 ; 3 uses
  %i.amz = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0   ; 2 uses
  %i.ana = zext i1 %i.amz to i64                  ; 2 uses
  %i.anb = add i64 %i.amx, 8
  %i.anc = shl i64 %i.amw, 3                      ; 2 uses
  %i.and = and i64 %i.anc, 56
  %i.ane = shl nuw nsw i64 %i.ana, %i.and
  %i.anf = or i64 %i.ane, %i.amv                  ; 3 uses
  %i.ang = icmp ugt i64 %i.amw, 8
  br i1 %i.ang, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit69.i.i
  %i.anh = xor i64 %i.anf, %i.amu                 ; 3 uses
  %i.ani = add i64 %i.amt, %i.ams                 ; 3 uses
  %i.anj = call noundef i64 @llvm.fshl.i64(i64 %i.ams, i64 %i.ams, i64 13)
  %i.ank = xor i64 %i.ani, %i.anj                 ; 3 uses
  %i.anl = call noundef i64 @llvm.fshl.i64(i64 %i.ani, i64 %i.ani, i64 32)
  %i.anm = add i64 %i.anh, %i.amr                 ; 2 uses
  %i.ann = call noundef i64 @llvm.fshl.i64(i64 %i.anh, i64 %i.anh, i64 16)
  %i.ano = xor i64 %i.anm, %i.ann                 ; 3 uses
  %i.anp = add i64 %i.ano, %i.anl                 ; 2 uses
  %i.anq = call noundef i64 @llvm.fshl.i64(i64 %i.ano, i64 %i.ano, i64 21)
  %i.anr = xor i64 %i.anq, %i.anp                 ; 2 uses
  store i64 %i.anr, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15090, !noalias !15086
  %i.ans = add i64 %i.anm, %i.ank                 ; 3 uses
  %i.ant = call noundef i64 @llvm.fshl.i64(i64 %i.ank, i64 %i.ank, i64 17)
  %i.anu = xor i64 %i.ans, %i.ant                 ; 2 uses
  store i64 %i.anu, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15090, !noalias !15086
  %i.anv = call noundef i64 @llvm.fshl.i64(i64 %i.ans, i64 %i.ans, i64 32) ; 2 uses
  store i64 %i.anv, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15090, !noalias !15086
  %i.anw = xor i64 %i.anp, %i.anf                 ; 2 uses
  store i64 %i.anw, ptr %i.at, align 8, !alias.scope !15091, !noalias !15086
  %.not.i.i.i.i.i.i77 = icmp eq i64 %i.amw, 0
  %i.anx = sub nuw nsw i64 64, %i.anc
  %i.any = lshr i64 %i.ana, %i.anx
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i77, i64 0, i64 %i.any
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

bb.fe:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit69.i.i
  %i.anz = add i64 %i.amw, 8
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.fe, %bb.fd
  %i.aoa = phi i64 [ %i.anv, %bb.fd ], [ %i.amr, %bb.fe ] ; 3 uses
  %i.aob = phi i64 [ %i.anu, %bb.fd ], [ %i.ams, %bb.fe ] ; 5 uses
  %i.aoc = phi i64 [ %i.anw, %bb.fd ], [ %i.amt, %bb.fe ] ; 3 uses
  %i.aod = phi i64 [ %i.anr, %bb.fd ], [ %i.amu, %bb.fe ] ; 3 uses
  %i.aoe = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.fd ], [ %i.anf, %bb.fe ] ; 2 uses
  %i.aof = phi i64 [ %i.amw, %bb.fd ], [ %i.anz, %bb.fe ] ; 6 uses
  br i1 %i.amz, label %bb.ff, label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.ff:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.aog = add i64 %i.amx, 16                     ; 2 uses
  %i.aoh = shl i64 %i.aof, 3                      ; 2 uses
  %i.aoi = and i64 %i.aoh, 56
  %i.aoj = shl i64 %.val.i.i.i.i.i.i.i.i, %i.aoi
  %i.aok = or i64 %i.aoj, %i.aoe                  ; 3 uses
  %i.aol = icmp ugt i64 %i.aof, 8
  br i1 %i.aol, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aom = xor i64 %i.aok, %i.aod                 ; 3 uses
  %i.aon = add i64 %i.aoc, %i.aob                 ; 3 uses
  %i.aoo = call noundef i64 @llvm.fshl.i64(i64 %i.aob, i64 %i.aob, i64 13)
  %i.aop = xor i64 %i.aon, %i.aoo                 ; 3 uses
  %i.aoq = call noundef i64 @llvm.fshl.i64(i64 %i.aon, i64 %i.aon, i64 32)
  %i.aor = add i64 %i.aom, %i.aoa                 ; 2 uses
  %i.aos = call noundef i64 @llvm.fshl.i64(i64 %i.aom, i64 %i.aom, i64 16)
  %i.aot = xor i64 %i.aor, %i.aos                 ; 3 uses
  %i.aou = add i64 %i.aot, %i.aoq                 ; 2 uses
  %i.aov = call noundef i64 @llvm.fshl.i64(i64 %i.aot, i64 %i.aot, i64 21)
  %i.aow = xor i64 %i.aov, %i.aou                 ; 2 uses
  store i64 %i.aow, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15092, !noalias !15086
  %i.aox = add i64 %i.aor, %i.aop                 ; 3 uses
  %i.aoy = call noundef i64 @llvm.fshl.i64(i64 %i.aop, i64 %i.aop, i64 17)
  %i.aoz = xor i64 %i.aox, %i.aoy                 ; 2 uses
  store i64 %i.aoz, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15092, !noalias !15086
  %i.apa = call noundef i64 @llvm.fshl.i64(i64 %i.aox, i64 %i.aox, i64 32) ; 2 uses
  store i64 %i.apa, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15092, !noalias !15086
  %i.apb = xor i64 %i.aou, %i.aok                 ; 2 uses
  store i64 %i.apb, ptr %i.at, align 8, !alias.scope !15093, !noalias !15086
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aof, 0
  %i.apc = sub nuw nsw i64 64, %i.aoh
  %i.apd = lshr i64 %.val.i.i.i.i.i.i.i.i, %i.apc
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.apd
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.ape = add i64 %i.aof, 8
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.fh, %bb.fg, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.apf = phi i64 [ %i.aoa, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.apa, %bb.fg ], [ %i.aoa, %bb.fh ] ; 2 uses
  %i.apg = phi i64 [ %i.aob, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aoz, %bb.fg ], [ %i.aob, %bb.fh ] ; 4 uses
  %i.aph = phi i64 [ %i.aoc, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.apb, %bb.fg ], [ %i.aoc, %bb.fh ] ; 2 uses
  %i.api = phi i64 [ %i.aod, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aow, %bb.fg ], [ %i.aod, %bb.fh ] ; 2 uses
  %i.apj = phi i64 [ %i.aoe, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.fg ], [ %i.aok, %bb.fh ]
  %i.apk = phi i64 [ %i.aof, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aof, %bb.fg ], [ %i.ape, %bb.fh ] ; 4 uses
  %i.apl = phi i64 [ %i.anb, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aog, %bb.fg ], [ %i.aog, %bb.fh ]
  %i.apm = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, i64 16
  %i.apn = load i8, ptr %i.apm, align 8, !range !49, !alias.scope !15083, !noalias !15084, !noundef !19
  %i.apo = zext nneg i8 %i.apn to i64             ; 2 uses
  %i.app = add i64 %i.apl, 1                      ; 3 uses
  %i.apq = sub i64 8, %i.apk                      ; 2 uses
  %i.apr = shl i64 %i.apk, 3
  %i.aps = and i64 %i.apr, 56
  %i.apt = shl nuw nsw i64 %i.apo, %i.aps
  %i.apu = or i64 %i.apt, %i.apj                  ; 3 uses
  %i.apv = icmp ugt i64 %i.apq, 1
  br i1 %i.apv, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.apw = xor i64 %i.apu, %i.api                 ; 3 uses
  %i.apx = add i64 %i.aph, %i.apg                 ; 3 uses
  %i.apy = call noundef i64 @llvm.fshl.i64(i64 %i.apg, i64 %i.apg, i64 13)
  %i.apz = xor i64 %i.apx, %i.apy                 ; 3 uses
  %i.aqa = call noundef i64 @llvm.fshl.i64(i64 %i.apx, i64 %i.apx, i64 32)
  %i.aqb = add i64 %i.apw, %i.apf                 ; 2 uses
  %i.aqc = call noundef i64 @llvm.fshl.i64(i64 %i.apw, i64 %i.apw, i64 16)
  %i.aqd = xor i64 %i.aqb, %i.aqc                 ; 3 uses
  %i.aqe = add i64 %i.aqd, %i.aqa                 ; 2 uses
  %i.aqf = call noundef i64 @llvm.fshl.i64(i64 %i.aqd, i64 %i.aqd, i64 21)
  %i.aqg = xor i64 %i.aqf, %i.aqe                 ; 2 uses
  store i64 %i.aqg, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15094, !noalias !15086
  %i.aqh = add i64 %i.aqb, %i.apz                 ; 3 uses
  %i.aqi = call noundef i64 @llvm.fshl.i64(i64 %i.apz, i64 %i.apz, i64 17)
  %i.aqj = xor i64 %i.aqh, %i.aqi                 ; 2 uses
  store i64 %i.aqj, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15094, !noalias !15086
  %i.aqk = call noundef i64 @llvm.fshl.i64(i64 %i.aqh, i64 %i.aqh, i64 32) ; 2 uses
  store i64 %i.aqk, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15094, !noalias !15086
  %i.aql = xor i64 %i.aqe, %i.apu                 ; 2 uses
  store i64 %i.aql, ptr %i.at, align 8, !alias.scope !15095, !noalias !15086
  %i.aqm = add i64 %i.apk, -7
  %i.aqn = shl nuw nsw i64 %i.apq, 3
  %i.aqo = lshr i64 %i.apo, %i.aqn                ; 2 uses
  store i64 %i.aqo, ptr %.sroa.14.0..sroa_idx.i.i12, align 8, !alias.scope !15095, !noalias !15086
  br label %_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

bb.fj:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.aqp = add i64 %i.apk, 1
  br label %_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %bb.fj, %bb.fi
  %i.aqq = phi i64 [ %i.apf, %bb.fj ], [ %i.aqk, %bb.fi ]
  %i.aqr = phi i64 [ %i.apg, %bb.fj ], [ %i.aqj, %bb.fi ]
  %i.aqs = phi i64 [ %i.aph, %bb.fj ], [ %i.aql, %bb.fi ]
  %i.aqt = phi i64 [ %i.api, %bb.fj ], [ %i.aqg, %bb.fi ]
  %i.aqu = phi i64 [ %i.apu, %bb.fj ], [ %i.aqo, %bb.fi ] ; 2 uses
  %.sink.i.i.i.i22.i.i.i.i.i.i = phi i64 [ %i.aqp, %bb.fj ], [ %i.aqm, %bb.fi ] ; 3 uses
  %i.aqv = icmp eq ptr %i.akk, %i.akb
  br i1 %i.aqv, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i76

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i: ; preds = %_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  store i64 %.sink.i.i.i.i22.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i13, align 8, !alias.scope !15095, !noalias !15086
  store i64 %i.app, ptr %.sroa.12.0..sroa_idx.i.i11, align 8, !alias.scope !15095, !noalias !15086
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i
  %i.aqw = phi i64 [ %i.ais, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i ], [ %.sroa.14.0..sroa_idx.promoted.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.aqu, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i ]
  %i.aqx = phi i64 [ %i.ait, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i ], [ %.sroa.15.0..sroa_idx.promoted.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %.sink.i.i.i.i22.i.i.i.i.i.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i ] ; 5 uses
  %i.aqy = phi i64 [ %i.ahp, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i ], [ %i.aiy, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.app, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i ] ; 3 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !15096)
  call void @llvm.experimental.noalias.scope.decl(metadata !15097)
  %i.ara = getelementptr inbounds nuw i8, ptr %2, i64 90
  %i.arb = load i8, ptr %i.ara, align 2, !range !15098, !alias.scope !15099, !noalias !15100, !noundef !19
  %i.arc = zext nneg i8 %i.arb to i64             ; 2 uses
  %i.ard = add i64 %i.aqy, 8
  %i.are = shl i64 %i.aqx, 3                      ; 2 uses
  %i.arf = and i64 %i.are, 56
  %i.arg = shl nuw nsw i64 %i.arc, %i.arf
  %i.arh = or i64 %i.arg, %i.aqw                  ; 3 uses
  %i.ari = icmp ugt i64 %i.aqx, 8
  %.promoted30.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15101, !noalias !15102 ; 4 uses
  br i1 %i.ari, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.arj = load i64, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15103, !noalias !15102, !noundef !19
  %i.ark = xor i64 %i.arj, %i.arh                 ; 3 uses
  %i.arl = load i64, ptr %i.at, align 8, !alias.scope !15104, !noalias !15102, !noundef !19
  %i.arm = add i64 %i.arl, %.promoted30.pre.i.i.i.i.i.i.i ; 3 uses
  %i.arn = call noundef i64 @llvm.fshl.i64(i64 %.promoted30.pre.i.i.i.i.i.i.i, i64 %.promoted30.pre.i.i.i.i.i.i.i, i64 13)
  %i.aro = xor i64 %i.arm, %i.arn                 ; 3 uses
  %i.arp = call noundef i64 @llvm.fshl.i64(i64 %i.arm, i64 %i.arm, i64 32)
  %i.arq = load i64, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15104, !noalias !15102, !noundef !19
  %i.arr = add i64 %i.arq, %i.ark                 ; 2 uses
  %i.ars = call noundef i64 @llvm.fshl.i64(i64 %i.ark, i64 %i.ark, i64 16)
  %i.art = xor i64 %i.arr, %i.ars                 ; 3 uses
  %i.aru = add i64 %i.art, %i.arp                 ; 2 uses
  %i.arv = call noundef i64 @llvm.fshl.i64(i64 %i.art, i64 %i.art, i64 21)
  %i.arw = xor i64 %i.arv, %i.aru                 ; 2 uses
  store i64 %i.arw, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15104, !noalias !15102
  %i.arx = add i64 %i.arr, %i.aro                 ; 3 uses
  %i.ary = call noundef i64 @llvm.fshl.i64(i64 %i.aro, i64 %i.aro, i64 17)
  %i.arz = xor i64 %i.arx, %i.ary                 ; 2 uses
  store i64 %i.arz, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15104, !noalias !15102
  %i.asa = call noundef i64 @llvm.fshl.i64(i64 %i.arx, i64 %i.arx, i64 32) ; 2 uses
  store i64 %i.asa, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15104, !noalias !15102
  %i.asb = xor i64 %i.aru, %i.arh                 ; 2 uses
  store i64 %i.asb, ptr %i.at, align 8, !alias.scope !15103, !noalias !15102
  %.not.i.i.i23.i.i.i.i.i.i = icmp eq i64 %i.aqx, 0
  %i.asc = sub nuw nsw i64 64, %i.are
  %i.asd = lshr i64 %i.arc, %i.asc
  %.sroa.0.0.i.i.i24.i.i.i.i.i.i = select i1 %.not.i.i.i23.i.i.i.i.i.i, i64 0, i64 %i.asd
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.ase = add i64 %i.aqx, 8
  %.promoted26.pre.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !15101, !noalias !15102
  %.promoted29.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15101, !noalias !15102
  %.promoted31.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15101, !noalias !15102
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %.promoted31.i.i.i.i.i.i.i = phi i64 [ %i.asa, %bb.fk ], [ %.promoted31.pre.i.i.i.i.i.i.i, %bb.fl ] ; 3 uses
  %.promoted30.i.i.i.i.i.i.i = phi i64 [ %i.arz, %bb.fk ], [ %.promoted30.pre.i.i.i.i.i.i.i, %bb.fl ] ; 5 uses
  %.promoted29.i.i.i.i.i.i.i = phi i64 [ %i.arw, %bb.fk ], [ %.promoted29.pre.i.i.i.i.i.i.i, %bb.fl ] ; 3 uses
  %.promoted26.i.i.i.i.i.i.i = phi i64 [ %i.asb, %bb.fk ], [ %.promoted26.pre.i.i.i.i.i.i.i, %bb.fl ] ; 3 uses
  %.promoted25.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i24.i.i.i.i.i.i, %bb.fk ], [ %i.arh, %bb.fl ] ; 2 uses
  %.promoted24.i.i.i.i.i.i.i = phi i64 [ %i.aqx, %bb.fk ], [ %i.ase, %bb.fl ] ; 6 uses
  %i.asf = load i8, ptr %i.aqz, align 8, !range !49, !alias.scope !15099, !noalias !15100, !noundef !19 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 89
  %i.ash = load i8, ptr %i.asg, align 1, !range !15105, !alias.scope !15099, !noalias !15100, !noundef !19
  %spec.select.i.i.i.i.i.i.i.i = call i8 @llvm.umin.i8(i8 range(i8 -1, 11) %i.ash, i8 -2) ; 2 uses
  %.not3.i.i.peel.i.peel.i.i.i.i.i = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i, -2 ; 2 uses
  br i1 %.not3.i.i.peel.i.peel.i.i.i.i.i, label %.split.i.i.peel.i.peel.i.i.i.i.i, label %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i

.split.i.i.peel.i.peel.i.i.i.i.i:                 ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i.i.i = icmp eq i8 %i.asf, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_RINvXs3_Cs8jFhWeO2DFb_9typst_pdfNtB6_12PdfStandardsNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i

_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i: ; preds = %.split.i.i.peel.i.peel.i.i.i.i.i, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i
  %.lcssa.i.peel.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i ], [ -1, %.split.i.i.peel.i.peel.i.i.i.i.i ] ; 2 uses
  %i.asi = icmp eq i8 %.lcssa.i.peel.i.i.i.i.i, -1 ; 2 uses
  %i.asj = zext i1 %i.asi to i64                  ; 2 uses
  %i.ask = add i64 %i.aqy, 16
  %i.asl = shl i64 %.promoted24.i.i.i.i.i.i.i, 3  ; 2 uses
  %i.asm = and i64 %i.asl, 56
  %i.asn = shl nuw nsw i64 %i.asj, %i.asm
  %i.aso = or i64 %i.asn, %.promoted25.i.i.i.i.i.i.i ; 3 uses
  %i.asp = icmp ugt i64 %.promoted24.i.i.i.i.i.i.i, 8
  br i1 %i.asp, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i
  %i.asq = xor i64 %i.aso, %.promoted29.i.i.i.i.i.i.i ; 3 uses
  %i.asr = add i64 %.promoted26.i.i.i.i.i.i.i, %.promoted30.i.i.i.i.i.i.i ; 3 uses
  %i.ass = call noundef i64 @llvm.fshl.i64(i64 %.promoted30.i.i.i.i.i.i.i, i64 %.promoted30.i.i.i.i.i.i.i, i64 13)
  %i.ast = xor i64 %i.asr, %i.ass                 ; 3 uses
  %i.asu = call noundef i64 @llvm.fshl.i64(i64 %i.asr, i64 %i.asr, i64 32)
  %i.asv = add i64 %i.asq, %.promoted31.i.i.i.i.i.i.i ; 2 uses
  %i.asw = call noundef i64 @llvm.fshl.i64(i64 %i.asq, i64 %i.asq, i64 16)
  %i.asx = xor i64 %i.asv, %i.asw                 ; 3 uses
  %i.asy = add i64 %i.asx, %i.asu                 ; 2 uses
  %i.asz = call noundef i64 @llvm.fshl.i64(i64 %i.asx, i64 %i.asx, i64 21)
  %i.ata = xor i64 %i.asz, %i.asy                 ; 2 uses
  store i64 %i.ata, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15106, !noalias !15102
  %i.atb = add i64 %i.asv, %i.ast                 ; 3 uses
  %i.atc = call noundef i64 @llvm.fshl.i64(i64 %i.ast, i64 %i.ast, i64 17)
  %i.atd = xor i64 %i.atb, %i.atc                 ; 2 uses
  store i64 %i.atd, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15106, !noalias !15102
  %i.ate = call noundef i64 @llvm.fshl.i64(i64 %i.atb, i64 %i.atb, i64 32) ; 2 uses
  store i64 %i.ate, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15106, !noalias !15102
  %i.atf = xor i64 %i.asy, %i.aso                 ; 2 uses
  store i64 %i.atf, ptr %i.at, align 8, !alias.scope !15107, !noalias !15102
  %.not.i.i.i.i26.i.peel.i.i.i.i.i = icmp eq i64 %.promoted24.i.i.i.i.i.i.i, 0
  %i.atg = sub nuw nsw i64 64, %i.asl
  %i.ath = lshr i64 %i.asj, %i.atg
  %.sroa.0.0.i.i.i.i27.i.peel.i.i.i.i.i = select i1 %.not.i.i.i.i26.i.peel.i.i.i.i.i, i64 0, i64 %i.ath
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i

bb.fn:                                            ; preds = %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i
  %i.ati = add i64 %.promoted24.i.i.i.i.i.i.i, 8
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i: ; preds = %bb.fn, %bb.fm
  %i.atj = phi i64 [ %.promoted31.i.i.i.i.i.i.i, %bb.fn ], [ %i.ate, %bb.fm ] ; 3 uses
  %i.atk = phi i64 [ %.promoted30.i.i.i.i.i.i.i, %bb.fn ], [ %i.atd, %bb.fm ] ; 5 uses
  %i.atl = phi i64 [ %.promoted29.i.i.i.i.i.i.i, %bb.fn ], [ %i.ata, %bb.fm ] ; 3 uses
  %i.atm = phi i64 [ %.promoted26.i.i.i.i.i.i.i, %bb.fn ], [ %i.atf, %bb.fm ] ; 3 uses
  %i.atn = phi i64 [ %i.aso, %bb.fn ], [ %.sroa.0.0.i.i.i.i27.i.peel.i.i.i.i.i, %bb.fm ] ; 2 uses
  %i.ato = phi i64 [ %i.ati, %bb.fn ], [ %.promoted24.i.i.i.i.i.i.i, %bb.fm ] ; 6 uses
  br i1 %i.asi, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i
  %i.atp = zext nneg i8 %.lcssa.i.peel.i.i.i.i.i to i64 ; 2 uses
  %i.atq = add i64 %i.aqy, 24                     ; 2 uses
  %i.atr = shl i64 %i.ato, 3                      ; 2 uses
  %i.ats = and i64 %i.atr, 56
  %i.att = shl nuw nsw i64 %i.atp, %i.ats
  %i.atu = or i64 %i.att, %i.atn                  ; 3 uses
  %i.atv = icmp ugt i64 %i.ato, 8
  br i1 %i.atv, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.atw = xor i64 %i.atu, %i.atl                 ; 3 uses
  %i.atx = add i64 %i.atm, %i.atk                 ; 3 uses
  %i.aty = call noundef i64 @llvm.fshl.i64(i64 %i.atk, i64 %i.atk, i64 13)
  %i.atz = xor i64 %i.atx, %i.aty                 ; 3 uses
  %i.aua = call noundef i64 @llvm.fshl.i64(i64 %i.atx, i64 %i.atx, i64 32)
  %i.aub = add i64 %i.atw, %i.atj                 ; 2 uses
  %i.auc = call noundef i64 @llvm.fshl.i64(i64 %i.atw, i64 %i.atw, i64 16)
  %i.aud = xor i64 %i.aub, %i.auc                 ; 3 uses
  %i.aue = add i64 %i.aud, %i.aua                 ; 2 uses
  %i.auf = call noundef i64 @llvm.fshl.i64(i64 %i.aud, i64 %i.aud, i64 21)
  %i.aug = xor i64 %i.auf, %i.aue                 ; 2 uses
  store i64 %i.aug, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15108, !noalias !15102
  %i.auh = add i64 %i.aub, %i.atz                 ; 3 uses
  %i.aui = call noundef i64 @llvm.fshl.i64(i64 %i.atz, i64 %i.atz, i64 17)
  %i.auj = xor i64 %i.auh, %i.aui                 ; 2 uses
  store i64 %i.auj, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15108, !noalias !15102
  %i.auk = call noundef i64 @llvm.fshl.i64(i64 %i.auh, i64 %i.auh, i64 32) ; 2 uses
  store i64 %i.auk, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15108, !noalias !15102
  %i.aul = xor i64 %i.aue, %i.atu                 ; 2 uses
  store i64 %i.aul, ptr %i.at, align 8, !alias.scope !15109, !noalias !15102
  %.not.i.i.i6.i.i.peel.i.i.i.i.i = icmp eq i64 %i.ato, 0
  %i.aum = sub nuw nsw i64 64, %i.atr
  %i.aun = lshr i64 %i.atp, %i.aum
  %.sroa.0.0.i.i.i7.i.i.peel.i.i.i.i.i = select i1 %.not.i.i.i6.i.i.peel.i.i.i.i.i, i64 0, i64 %i.aun
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.auo = add i64 %i.ato, 8                      ; 2 uses
  store i64 %i.auo, ptr %.sroa.15.0..sroa_idx.i.i13, align 8, !alias.scope !15109, !noalias !15102
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i: ; preds = %bb.fq, %bb.fp, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i
  %i.aup = phi i64 [ %i.atj, %bb.fq ], [ %i.auk, %bb.fp ], [ %i.atj, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 3 uses
  %i.auq = phi i64 [ %i.atk, %bb.fq ], [ %i.auj, %bb.fp ], [ %i.atk, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 5 uses
  %i.aur = phi i64 [ %i.atl, %bb.fq ], [ %i.aug, %bb.fp ], [ %i.atl, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 3 uses
  %i.aus = phi i64 [ %i.atm, %bb.fq ], [ %i.aul, %bb.fp ], [ %i.atm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 3 uses
  %i.aut = phi i64 [ %i.atu, %bb.fq ], [ %.sroa.0.0.i.i.i7.i.i.peel.i.i.i.i.i, %bb.fp ], [ %i.atn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 2 uses
  %i.auu = phi i64 [ %i.auo, %bb.fq ], [ %i.ato, %bb.fp ], [ %i.ato, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 5 uses
  %i.auv = phi i64 [ %i.atq, %bb.fq ], [ %i.atq, %bb.fp ], [ %i.ask, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 2 uses
  %.not3.i.i.peel.i.i.i.i.i.i = icmp eq i8 %i.asf, 0
  %or.cond.i.i.i.i.i = or i1 %.not3.i.i.peel.i.i.i.i.i.i, %.not3.i.i.peel.i.peel.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RINvXs3_Cs8jFhWeO2DFb_9typst_pdfNtB6_12PdfStandardsNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i
  %i.auw = add i64 %i.auv, 8                      ; 2 uses
  %i.aux = shl i64 %i.auu, 3                      ; 2 uses
  %i.auy = and i64 %i.aux, 56
  %i.auz = shl nuw nsw i64 1, %i.auy
  %i.ava = or i64 %i.auz, %i.aut                  ; 3 uses
  %i.avb = icmp ugt i64 %i.auu, 8
  br i1 %i.avb, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  %i.avc = xor i64 %i.ava, %i.aur                 ; 3 uses
  %i.avd = add i64 %i.aus, %i.auq                 ; 3 uses
  %i.ave = call noundef i64 @llvm.fshl.i64(i64 %i.auq, i64 %i.auq, i64 13)
  %i.avf = xor i64 %i.avd, %i.ave                 ; 3 uses
  %i.avg = call noundef i64 @llvm.fshl.i64(i64 %i.avd, i64 %i.avd, i64 32)
  %i.avh = add i64 %i.avc, %i.aup                 ; 2 uses
  %i.avi = call noundef i64 @llvm.fshl.i64(i64 %i.avc, i64 %i.avc, i64 16)
  %i.avj = xor i64 %i.avh, %i.avi                 ; 3 uses
end_hunk_0
