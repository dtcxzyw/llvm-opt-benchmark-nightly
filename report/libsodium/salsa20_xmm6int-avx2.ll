Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/salsa20_xmm6int-avx2?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@salsa20_encrypt_bytes:bb.a
  %i.akq = xor <4 x i32> %i.ako, %i.aki
  %i.akr = xor <4 x i32> %i.akq, %i.akp           ; 3 uses
  %i.aks = add <4 x i32> %i.akr, %i.akm           ; 2 uses
  %i.akt = shl <4 x i32> %i.aks, splat (i32 9)
  %i.aku = lshr <4 x i32> %i.aks, splat (i32 23)
  %i.akv = xor <4 x i32> %i.akt, %i.ake
  %i.akw = shufflevector <4 x i32> %i.akr, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.akx = xor <4 x i32> %i.akv, %i.aku           ; 3 uses
  %i.aky = add <4 x i32> %i.akx, %i.akr           ; 2 uses
  %i.akz = shufflevector <4 x i32> %i.akx, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ala = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aky, <4 x i32> %i.aky, <4 x i32> splat (i32 13))
  %i.alb = xor <4 x i32> %i.ala, %i.aka           ; 2 uses
  %i.alc = add <4 x i32> %i.alb, %i.akx           ; 2 uses
  %i.ald = shufflevector <4 x i32> %i.alb, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ale = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.alc, <4 x i32> %i.alc, <4 x i32> splat (i32 18))
  %i.alf = bitcast <4 x i32> %i.ale to <2 x i64>
  %i.alg = xor <2 x i64> %i.akl, %i.alf           ; 2 uses
  %i.alh = bitcast <2 x i64> %i.alg to <4 x i32>  ; 2 uses
  %i.ali = add <4 x i32> %i.akw, %i.alh           ; 2 uses
  %i.alj = shl <4 x i32> %i.ali, splat (i32 7)
  %i.alk = lshr <4 x i32> %i.ali, splat (i32 25)
  %i.all = xor <4 x i32> %i.alj, %i.ald
  %i.alm = xor <4 x i32> %i.all, %i.alk           ; 3 uses
  %i.aln = add <4 x i32> %i.alm, %i.alh           ; 2 uses
  %i.alo = shl <4 x i32> %i.aln, splat (i32 9)
  %i.alp = lshr <4 x i32> %i.aln, splat (i32 23)
  %i.alq = xor <4 x i32> %i.alo, %i.akz
  %i.alr = shufflevector <4 x i32> %i.alm, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.als = xor <4 x i32> %i.alq, %i.alp           ; 3 uses
  %i.alt = add <4 x i32> %i.als, %i.alm           ; 2 uses
  %i.alu = shufflevector <4 x i32> %i.als, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.alv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.alt, <4 x i32> %i.alt, <4 x i32> splat (i32 13))
  %i.alw = xor <4 x i32> %i.alv, %i.akw           ; 2 uses
  %i.alx = add <4 x i32> %i.alw, %i.als           ; 2 uses
  %i.aly = shufflevector <4 x i32> %i.alw, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.alz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.alx, <4 x i32> %i.alx, <4 x i32> splat (i32 18))
  %i.ama = bitcast <4 x i32> %i.alz to <2 x i64>
  %i.amb = xor <2 x i64> %i.alg, %i.ama           ; 2 uses
  %i.amc = bitcast <2 x i64> %i.amb to <4 x i32>  ; 2 uses
  %i.amd = add <4 x i32> %i.alr, %i.amc           ; 2 uses
  %i.ame = shl <4 x i32> %i.amd, splat (i32 7)
  %i.amf = lshr <4 x i32> %i.amd, splat (i32 25)
  %i.amg = xor <4 x i32> %i.ame, %i.aly
  %i.amh = xor <4 x i32> %i.amg, %i.amf           ; 3 uses
  %i.ami = add <4 x i32> %i.amh, %i.amc           ; 2 uses
  %i.amj = shl <4 x i32> %i.ami, splat (i32 9)
  %i.amk = lshr <4 x i32> %i.ami, splat (i32 23)
  %i.aml = xor <4 x i32> %i.amj, %i.alu
  %i.amm = shufflevector <4 x i32> %i.amh, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.amn = xor <4 x i32> %i.aml, %i.amk           ; 3 uses
  %i.amo = add <4 x i32> %i.amn, %i.amh           ; 2 uses
  %i.amp = shufflevector <4 x i32> %i.amn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.amq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.amo, <4 x i32> %i.amo, <4 x i32> splat (i32 13))
  %i.amr = xor <4 x i32> %i.amq, %i.alr           ; 2 uses
  %i.ams = add <4 x i32> %i.amr, %i.amn           ; 2 uses
  %i.amt = shufflevector <4 x i32> %i.amr, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.amu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ams, <4 x i32> %i.ams, <4 x i32> splat (i32 18))
  %i.amv = bitcast <4 x i32> %i.amu to <2 x i64>
  %i.amw = xor <2 x i64> %i.amb, %i.amv           ; 2 uses
  %i.amx = add nuw nsw i32 %.017141819, 4
  %i.amy = icmp samesign ult i32 %.017141819, 16
  br i1 %i.amy, label %bb.l, label %iter.check, !llvm.loop !9

iter.check:                                       ; preds = %bb.l
  %i.amz = bitcast <2 x i64> %i.amw to <4 x i32>
  %i.ana = bitcast <2 x i64> %i.ajo to <4 x i32>
  %i.anb = add <4 x i32> %i.amz, %i.ana           ; 3 uses
  %i.anc = add <4 x i32> %i.amm, %i.ajq           ; 2 uses
  %i.and = add <4 x i32> %i.amp, %i.ajs           ; 3 uses
  %i.ane = add <4 x i32> %i.amt, %i.aju           ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ang = shufflevector <4 x i32> %i.and, <4 x i32> %i.ane, <8 x i32> <i32 0, i32 5, i32 poison, i32 poison, i32 poison, i32 1, i32 6, i32 poison>
  %i.anh = shufflevector <4 x i32> %i.anb, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ani = shufflevector <8 x i32> %i.ang, <8 x i32> %i.anh, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 5, i32 6, i32 poison>
  %i.anj = shufflevector <4 x i32> %i.anc, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ank = shufflevector <8 x i32> %i.ani, <8 x i32> %i.anj, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 8, i32 5, i32 6, i32 poison>
  %i.anl = shufflevector <4 x i32> %i.anb, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anm = shufflevector <8 x i32> %i.ank, <8 x i32> %i.anl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i32> %i.anm, ptr %i.anf, align 16
  %i.ann = shufflevector <4 x i32> %i.anb, <4 x i32> %i.anc, <8 x i32> <i32 0, i32 5, i32 poison, i32 poison, i32 poison, i32 1, i32 6, i32 poison>
  %i.ano = shufflevector <4 x i32> %i.and, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anp = shufflevector <8 x i32> %i.ann, <8 x i32> %i.ano, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 5, i32 6, i32 poison>
  %i.anq = shufflevector <4 x i32> %i.ane, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anr = shufflevector <8 x i32> %i.anp, <8 x i32> %i.anq, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 8, i32 5, i32 6, i32 poison>
  %i.ans = shufflevector <4 x i32> %i.and, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ant = shufflevector <8 x i32> %i.anr, <8 x i32> %i.ans, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i32> %i.ant, ptr %i.a, align 16
  %min.iters.check = icmp samesign ult i64 %.41713.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.anu = sub i64 %.4.lcssa1970, %.41708.lcssa1971
  %diff.check = icmp ugt i64 %i.anu, -16
  %i.anv = sub i64 %i.b, %.41708.lcssa1971
  %diff.check1972 = icmp ugt i64 %i.anv, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1972
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1973 = icmp samesign ult i64 %.41713.lcssa, 16
  br i1 %min.iters.check1973, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.anw = and i64 %.41713.lcssa, 12
  %n.vec = and i64 %.41713.lcssa, 48              ; 5 uses
  %i.anx = getelementptr i8, ptr %.4.lcssa, i64 8
  %wide.load = load <8 x i8>, ptr %.4.lcssa, align 1
  %wide.load1974 = load <8 x i8>, ptr %i.anx, align 1
  %i.any = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load1975 = load <8 x i8>, ptr %i.a, align 16
  %wide.load1976 = load <8 x i8>, ptr %i.any, align 8
  %i.anz = xor <8 x i8> %wide.load1975, %wide.load
  %i.aoa = xor <8 x i8> %wide.load1976, %wide.load1974
  %i.aob = getelementptr i8, ptr %.41708.lcssa, i64 8
  store <8 x i8> %i.anz, ptr %.41708.lcssa, align 1
  store <8 x i8> %i.aoa, ptr %i.aob, align 1
  %i.aoc = icmp eq i64 %n.vec, 16
  br i1 %i.aoc, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.aod = getelementptr i8, ptr %.4.lcssa, i64 16
  %i.aoe = getelementptr i8, ptr %.4.lcssa, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.aod, align 1
  %wide.load1974.1 = load <8 x i8>, ptr %i.aoe, align 1
  %i.aof = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aog = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.load1975.1 = load <8 x i8>, ptr %i.aof, align 16
  %wide.load1976.1 = load <8 x i8>, ptr %i.aog, align 8
  %i.aoh = xor <8 x i8> %wide.load1975.1, %wide.load.1
  %i.aoi = xor <8 x i8> %wide.load1976.1, %wide.load1974.1
  %i.aoj = getelementptr i8, ptr %.41708.lcssa, i64 16
  %i.aok = getelementptr i8, ptr %.41708.lcssa, i64 24
  store <8 x i8> %i.aoh, ptr %i.aoj, align 1
  store <8 x i8> %i.aoi, ptr %i.aok, align 1
  %i.aol = icmp eq i64 %n.vec, 32
  br i1 %i.aol, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.aom = getelementptr i8, ptr %.4.lcssa, i64 32
  %i.aon = getelementptr i8, ptr %.4.lcssa, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.aom, align 1
  %wide.load1974.2 = load <8 x i8>, ptr %i.aon, align 1
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aop = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.load1975.2 = load <8 x i8>, ptr %i.aoo, align 16
  %wide.load1976.2 = load <8 x i8>, ptr %i.aop, align 8
  %i.aoq = xor <8 x i8> %wide.load1975.2, %wide.load.2
  %i.aor = xor <8 x i8> %wide.load1976.2, %wide.load1974.2
  %i.aos = getelementptr i8, ptr %.41708.lcssa, i64 32
  %i.aot = getelementptr i8, ptr %.41708.lcssa, i64 40
  store <8 x i8> %i.aoq, ptr %i.aos, align 1
  store <8 x i8> %i.aor, ptr %i.aot, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.41713.lcssa, %n.vec
  br i1 %cmp.n, label %.loopexit1983, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.anw, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1977 = and i64 %.41713.lcssa, 60          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1978 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1981, %vec.epilog.vector.body ] ; 4 uses
  %i.aou = getelementptr i8, ptr %.4.lcssa, i64 %index1978
  %wide.load1979 = load <4 x i8>, ptr %i.aou, align 1
  %i.aov = getelementptr i8, ptr %i.a, i64 %index1978
  %wide.load1980 = load <4 x i8>, ptr %i.aov, align 4
  %i.aow = xor <4 x i8> %wide.load1980, %wide.load1979
  %i.aox = getelementptr i8, ptr %.41708.lcssa, i64 %index1978
  store <4 x i8> %i.aow, ptr %i.aox, align 1
  %index.next1981 = add nuw i64 %index1978, 4     ; 2 uses
  %i.aoy = icmp eq i64 %index.next1981, %n.vec1977
  br i1 %i.aoy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1982 = icmp eq i64 %.41713.lcssa, %n.vec1977
  br i1 %cmp.n1982, label %.loopexit1983, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1977, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.41713.lcssa, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aoz = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.prol
  %i.apa = load i8, ptr %i.aoz, align 1
  %i.apb = getelementptr i8, ptr %i.a, i64 %indvars.iv.prol
  %i.apc = load i8, ptr %i.apb, align 1
  %i.apd = xor i8 %i.apc, %i.apa
  %i.ape = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.prol
  store i8 %i.apd, ptr %i.ape, align 1
  %indvars.iv.next.prol = add nuw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.apf = sub nsw i64 %indvars.iv.ph, %.41713.lcssa
  %i.apg = icmp ugt i64 %i.apf, -4
  br i1 %i.apg, label %.loopexit1983, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.aph = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv
  %i.api = load i8, ptr %i.aph, align 1
  %i.apj = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.apk = load i8, ptr %i.apj, align 1
  %i.apl = xor i8 %i.apk, %i.api
  %i.apm = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv
  store i8 %i.apl, ptr %i.apm, align 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.apn = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next
  %i.apo = load i8, ptr %i.apn, align 1
  %i.app = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  %i.apq = load i8, ptr %i.app, align 1
  %i.apr = xor i8 %i.apq, %i.apo
  %i.aps = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.next
  store i8 %i.apr, ptr %i.aps, align 1
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 3 uses
  %i.apt = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.1
  %i.apu = load i8, ptr %i.apt, align 1
  %i.apv = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  %i.apw = load i8, ptr %i.apv, align 1
  %i.apx = xor i8 %i.apw, %i.apu
  %i.apy = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.next.1
  store i8 %i.apx, ptr %i.apy, align 1
  %indvars.iv.next.2 = add nuw i64 %indvars.iv, 3 ; 3 uses
  %i.apz = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.2
  %i.aqa = load i8, ptr %i.apz, align 1
  %i.aqb = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.2
  %i.aqc = load i8, ptr %i.aqb, align 1
  %i.aqd = xor i8 %i.aqc, %i.aqa
  %i.aqe = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.next.2
  store i8 %i.aqd, ptr %i.aqe, align 1
  %indvars.iv.next.3 = add nuw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.41713.lcssa
  br i1 %exitcond.not.3, label %.loopexit1983, label %vec.epilog.scalar.ph, !llvm.loop !12

.loopexit1983:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.loopexit1983
  ret void
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind ssp uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !13}
!5 = distinct !{!5, !13}
!6 = distinct !{!6, !13}
!7 = distinct !{!7, !13}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = distinct !{!10, !13, !15, !16}
!11 = distinct !{!11, !17}
!12 = distinct !{!12, !13, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
