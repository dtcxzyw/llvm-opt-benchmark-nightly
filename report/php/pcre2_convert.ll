Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_convert?download=true
inline.NumInlined: 46
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@pcre2_pattern_convert_8:bb.a
convert_glob_parse_range.exit.thread.i:           ; preds = %bb.ji, %bb.fv, %bb.fb, %bb.ez, %bb.jd, %bb.ir, %bb.iq, %bb.id, %.backedge.i.i, %bb.gt, %bb.jw
  %.729.ph.i = phi ptr [ %.7.ph3642.i, %bb.jw ], [ %.2261.be.i.i, %.backedge.i.i ], [ %.3262.i.i, %bb.gt ], [ %.6.i.i, %bb.jd ], [ %.4263.i.i, %bb.id ], [ %.4263.i.i, %bb.iq ], [ %.5264.i.i, %bb.ir ], [ %.1260.i.i, %bb.fv ], [ %i.nb, %bb.fb ], [ %i.by, %bb.ji ], [ %i.by, %bb.ez ]
  %.2.ph.i = phi i32 [ -48, %bb.jw ], [ 106, %.backedge.i.i ], [ 106, %bb.gt ], [ 106, %bb.jd ], [ 106, %bb.id ], [ -64, %bb.iq ], [ -64, %bb.ir ], [ 106, %bb.fv ], [ 106, %bb.fb ], [ -64, %bb.ji ], [ 106, %bb.ez ]
  %i.ala = ptrtoint ptr %.729.ph.i to i64
  %i.alb = sub i64 %i.ala, %i.ah
  br label %convert_glob.exit

.critedge.i:                                      ; preds = %bb.jw, %convert_glob_write.exit261.i
  %i.alc = add i64 %.pre135.i, -1
  br label %convert_glob.exit

convert_glob.exit:                                ; preds = %bb.q, %convert_glob_parse_range.exit.thread.i, %.critedge.i
  %.sink.i = phi i64 [ %i.alc, %.critedge.i ], [ %i.alb, %convert_glob_parse_range.exit.thread.i ], [ 0, %bb.q ]
  %.095.i = phi i32 [ 0, %.critedge.i ], [ %.2.ph.i, %convert_glob_parse_range.exit.thread.i ], [ -64, %bb.q ]
  store i64 %.sink.i, ptr %4, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %convert_posix.exit

bb.jx:                                            ; preds = %bb.o, %bb.o
  %i.ald = getelementptr i8, ptr %.170155, i64 %.168156
  %i.ale = getelementptr i8, ptr %i.ald, i64 -1   ; 18 uses
  store i64 %.077, ptr %4, align 8, !tbaa !12
  %.not277.i = icmp sgt i64 %.168156, 1
  br i1 %.not277.i, label %bb.jy, label %.thread

bb.jy:                                            ; preds = %bb.jx
  %i.alf = getelementptr inbounds nuw i8, ptr %.170155, i64 1 ; 9 uses
  store i8 40, ptr %.170155, align 1, !tbaa !25
  %.not277.1.i = icmp ult ptr %i.alf, %i.ale
  br i1 %.not277.1.i, label %bb.jz, label %.thread

bb.jz:                                            ; preds = %bb.jy
  %i.alg = getelementptr inbounds nuw i8, ptr %.170155, i64 2 ; 4 uses
  store i8 42, ptr %i.alf, align 1, !tbaa !25
  %.not277.2.i = icmp ult ptr %i.alg, %i.ale
  br i1 %.not277.2.i, label %bb.ka, label %.thread

bb.ka:                                            ; preds = %bb.jz
  %i.alh = getelementptr inbounds nuw i8, ptr %.170155, i64 3 ; 2 uses
  store i8 78, ptr %i.alg, align 1, !tbaa !25
  %.not277.3.i = icmp ult ptr %i.alh, %i.ale
  br i1 %.not277.3.i, label %bb.kb, label %.thread

bb.kb:                                            ; preds = %bb.ka
  %i.ali = getelementptr inbounds nuw i8, ptr %.170155, i64 4 ; 2 uses
  store i8 85, ptr %i.alh, align 1, !tbaa !25
  %.not277.4.i = icmp ult ptr %i.ali, %i.ale
  br i1 %.not277.4.i, label %bb.kc, label %.thread

bb.kc:                                            ; preds = %bb.kb
  %i.alj = getelementptr inbounds nuw i8, ptr %.170155, i64 5 ; 2 uses
  store i8 76, ptr %i.ali, align 1, !tbaa !25
  %.not277.5.i = icmp ult ptr %i.alj, %i.ale
  br i1 %.not277.5.i, label %.preheader36.i, label %.thread

.preheader36.i:                                   ; preds = %bb.kc
  %i.alk = getelementptr inbounds nuw i8, ptr %.170155, i64 6 ; 2 uses
  store i8 41, ptr %i.alj, align 1, !tbaa !25
  br i1 %.not250102.i, label %._crit_edge.thread.i, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.preheader36.i, %.loopexit.i
  %.0195111.i = phi i32 [ %.2.i, %.loopexit.i ], [ 0, %.preheader36.i ]
  %.0196110.i = phi i32 [ %.2198.i, %.loopexit.i ], [ 0, %.preheader36.i ] ; 11 uses
  %.0199109.i = phi i32 [ %.5.i, %.loopexit.i ], [ 0, %.preheader36.i ] ; 13 uses
  %.0202108.i = phi i32 [ %.7.i, %.loopexit.i ], [ 0, %.preheader36.i ] ; 29 uses
  %.0208107.i = phi i64 [ %i.alo, %.loopexit.i ], [ 0, %.preheader36.i ]
  %.0209106.i = phi ptr [ %spec.select.i97, %.loopexit.i ], [ %.170155, %.preheader36.i ]
  %.1211105.i = phi ptr [ %.16.i, %.loopexit.i ], [ %i.alk, %.preheader36.i ] ; 11 uses
  %.0218104.i = phi ptr [ %.3221.i, %.loopexit.i ], [ %0, %.preheader36.i ] ; 12 uses
  %.0234103.i = phi i64 [ %.3237.i, %.loopexit.i ], [ %.077, %.preheader36.i ]
  %i.all = ptrtoint ptr %.1211105.i to i64
  %i.alm = ptrtoint ptr %.0209106.i to i64
  %i.aln = sub i64 %i.all, %i.alm
  %i.alo = add i64 %i.aln, %.0208107.i            ; 2 uses
  %spec.select.i97 = select i1 %.not130.i, ptr %.1211105.i, ptr %.170155 ; 27 uses
  %i.alp = load i8, ptr %.0218104.i, align 1, !tbaa !25 ; 2 uses
  %i.alq = zext i8 %i.alp to i32                  ; 10 uses
  %i.alr = icmp ugt i8 %i.alp, -65
  %or.cond.i98 = select i1 %i.q, i1 %i.alr, i1 false
  br i1 %or.cond.i98, label %bb.kd, label %bb.km

bb.kd:                                            ; preds = %.lr.ph.i96
  %i.als = and i32 %i.alq, 32
  %i.alt = icmp eq i32 %i.als, 0
  %i.alu = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 1
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !25
  %i.alw = and i8 %i.alv, 63
  %i.alx = zext nneg i8 %i.alw to i32             ; 5 uses
  br i1 %i.alt, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.aly = shl nuw nsw i32 %i.alq, 6
  %i.alz = and i32 %i.aly, 1984
  %i.ama = or disjoint i32 %i.alz, %i.alx
  br label %bb.km

bb.kf:                                            ; preds = %bb.kd
  %i.amb = and i32 %i.alq, 16
  %i.amc = icmp eq i32 %i.amb, 0
  br i1 %i.amc, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.amd = shl nuw nsw i32 %i.alq, 12
  %i.ame = and i32 %i.amd, 61440
  %i.amf = shl nuw nsw i32 %i.alx, 6
  %i.amg = or disjoint i32 %i.amf, %i.ame
  %i.amh = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 2
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !25
  %i.amj = and i8 %i.ami, 63
  %i.amk = zext nneg i8 %i.amj to i32
  %i.aml = or disjoint i32 %i.amg, %i.amk
  br label %bb.km

bb.kh:                                            ; preds = %bb.kf
  %i.amm = and i32 %i.alq, 8
  %i.amn = icmp eq i32 %i.amm, 0
  br i1 %i.amn, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.amo = shl nuw nsw i32 %i.alq, 18
  %i.amp = and i32 %i.amo, 1835008
  %i.amq = shl nuw nsw i32 %i.alx, 12
  %i.amr = or disjoint i32 %i.amq, %i.amp
  %i.ams = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 2
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !25
  %i.amu = and i8 %i.amt, 63
  %i.amv = zext nneg i8 %i.amu to i32
  %i.amw = shl nuw nsw i32 %i.amv, 6
  %i.amx = or disjoint i32 %i.amw, %i.amr
  %i.amy = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 3
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !25
  %i.ana = and i8 %i.amz, 63
  %i.anb = zext nneg i8 %i.ana to i32
  %i.anc = or disjoint i32 %i.amx, %i.anb
  br label %bb.km

bb.kj:                                            ; preds = %bb.kh
  %i.and = and i32 %i.alq, 4
  %i.ane = icmp eq i32 %i.and, 0
  %i.anf = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 2
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !25
  %i.anh = and i8 %i.ang, 63
  %i.ani = zext nneg i8 %i.anh to i32             ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 3
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !25
  %i.anl = and i8 %i.ank, 63
  %i.anm = zext nneg i8 %i.anl to i32             ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 4
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !25
  %i.anp = and i8 %i.ano, 63
  %i.anq = zext nneg i8 %i.anp to i32             ; 2 uses
  br i1 %i.ane, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.anr = shl nuw i32 %i.alq, 24
  %i.ans = and i32 %i.anr, 50331648
  %i.ant = shl nuw nsw i32 %i.alx, 18
  %i.anu = or disjoint i32 %i.ant, %i.ans
  %i.anv = shl nuw nsw i32 %i.ani, 12
  %i.anw = or disjoint i32 %i.anv, %i.anu
  %i.anx = shl nuw nsw i32 %i.anm, 6
  %i.any = or disjoint i32 %i.anw, %i.anx
  %i.anz = or disjoint i32 %i.any, %i.anq
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  %i.aoa = shl i32 %i.alq, 30
  %i.aob = and i32 %i.aoa, 1073741824
  %i.aoc = shl nuw nsw i32 %i.alx, 24
  %i.aod = or disjoint i32 %i.aoc, %i.aob
  %i.aoe = shl nuw nsw i32 %i.ani, 18
  %i.aof = or disjoint i32 %i.aoe, %i.aod
  %i.aog = shl nuw nsw i32 %i.anm, 12
  %i.aoh = or disjoint i32 %i.aof, %i.aog
  %i.aoi = shl nuw nsw i32 %i.anq, 6
  %i.aoj = or disjoint i32 %i.aoh, %i.aoi
  %i.aok = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 5
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !25
  %i.aom = and i8 %i.aol, 63
  %i.aon = zext nneg i8 %i.aom to i32
  %i.aoo = or disjoint i32 %i.aoj, %i.aon
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk, %bb.ki, %bb.kg, %bb.ke, %.lr.ph.i96
  %.0193.i = phi i32 [ %i.ama, %bb.ke ], [ %i.aml, %bb.kg ], [ %i.anc, %bb.ki ], [ %i.anz, %bb.kk ], [ %i.aoo, %bb.kl ], [ %i.alq, %.lr.ph.i96 ] ; 12 uses
  %.0.i = phi i64 [ 2, %bb.ke ], [ 3, %bb.kg ], [ 4, %bb.ki ], [ 5, %bb.kk ], [ 6, %bb.kl ], [ 1, %.lr.ph.i96 ] ; 6 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 %.0.i ; 16 uses
  %i.aoq = sub i64 %.0234103.i, %.0.i             ; 15 uses
  %i.aor = icmp ugt i32 %.0199109.i, 2
  br i1 %i.aor, label %bb.kn, label %bb.kw

bb.kn:                                            ; preds = %bb.km
  %i.aos = icmp eq i32 %.0193.i, 93
  br i1 %i.aos, label %.preheader.preheader.i101, label %bb.ko

.preheader.preheader.i101:                        ; preds = %bb.kn
  %.not276.i = icmp ult ptr %spec.select.i97, %i.ale
  br i1 %.not276.i, label %.loopexit.loopexit.i, label %.thread

.loopexit.loopexit.i:                             ; preds = %.preheader.preheader.i101
  %.1211105.i.sroa.gep123 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel125 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep123, ptr %i.alf
  store i8 93, ptr %spec.select.i97, align 1, !tbaa !25
  br label %.loopexit.i

bb.ko:                                            ; preds = %bb.kn
  switch i32 %.0199109.i, label %.thread.thread.i [
    i32 5, label %bb.kp
    i32 3, label %.thread.i
    i32 4, label %bb.ku
  ]

bb.kp:                                            ; preds = %bb.ko
  %i.aot = icmp samesign ult i32 %.0193.i, 128
  br i1 %i.aot, label %bb.kq, label %.loopexit22.i

bb.kq:                                            ; preds = %bb.kp
  %i.aou = tail call ptr @__ctype_b_loc() #7
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !34
  %i.aow = zext nneg i32 %.0193.i to i64
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.aov, i64 %i.aow
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !36
  %i.aoz = and i16 %i.aoy, 512
  %.not270.i = icmp eq i16 %i.aoz, 0
  br i1 %.not270.i, label %bb.kr, label %.thread.thread.i

bb.kr:                                            ; preds = %bb.kq
  %i.apa = icmp eq i32 %.0193.i, 58
  %i.apb = icmp ne i64 %i.aoq, 0
  %or.cond3.i = and i1 %i.apa, %i.apb
  br i1 %or.cond3.i, label %bb.ks, label %.thread.i

bb.ks:                                            ; preds = %bb.kr
  %i.apc = load i8, ptr %i.aop, align 1, !tbaa !25
  %i.apd = icmp eq i8 %i.apc, 93
  br i1 %i.apd, label %.preheader24.preheader.i, label %.loopexit22.i

.preheader24.preheader.i:                         ; preds = %bb.ks
  %.not272.i = icmp ult ptr %spec.select.i97, %i.ale
  br i1 %.not272.i, label %.preheader24.1.i, label %.thread

.preheader24.1.i:                                 ; preds = %.preheader24.preheader.i
  %.1211105.i.sroa.gep117 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel119 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep117, ptr %i.alf ; 2 uses
  store i8 58, ptr %spec.select.i97, align 1, !tbaa !25
  %.not272.1.i = icmp ult ptr %spec.select.i97.sroa.sel119, %i.ale
  br i1 %.not272.1.i, label %bb.kt, label %.thread

bb.kt:                                            ; preds = %.preheader24.1.i
  %.1211105.i.sroa.gep120 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 2
  %spec.select.i97.sroa.sel122 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep120, ptr %i.alg
  store i8 93, ptr %spec.select.i97.sroa.sel119, align 1, !tbaa !25
  %i.ape = add i64 %i.aoq, -1
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aop, i64 1
  br label %.loopexit.i, !llvm.loop !40

.thread.i:                                        ; preds = %bb.kr, %bb.ko
  %i.apg = icmp eq i32 %.0193.i, 91
  br i1 %i.apg, label %.loopexit22.i, label %.thread.thread.i

bb.ku:                                            ; preds = %bb.ko
  %i.aph = icmp eq i32 %.0193.i, 58
  br i1 %i.aph, label %.loopexit22.i, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %bb.ku, %.thread.i, %bb.kq, %bb.ko
  %.2201.i = phi i32 [ %.0199109.i, %bb.ko ], [ 5, %bb.kq ], [ 3, %.thread.i ], [ 4, %bb.ku ] ; 2 uses
  %i.api = icmp eq i32 %.0193.i, 92
  br i1 %i.api, label %.preheader21.preheader.i, label %.loopexit22.i

.preheader21.preheader.i:                         ; preds = %.thread.thread.i
  %.not274.i = icmp ult ptr %spec.select.i97, %i.ale
  br i1 %.not274.i, label %.loopexit22.loopexit.i, label %.thread

.loopexit22.loopexit.i:                           ; preds = %.preheader21.preheader.i
  %.1211105.i.sroa.gep114 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel116 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep114, ptr %i.alf
  store i8 92, ptr %spec.select.i97, align 1, !tbaa !25
  br label %.loopexit22.i

.loopexit22.i:                                    ; preds = %.loopexit22.loopexit.i, %.thread.thread.i, %bb.ku, %.thread.i, %bb.ks, %bb.kp
  %.2201174.i = phi i32 [ %.2201.i, %.thread.thread.i ], [ %.2201.i, %.loopexit22.loopexit.i ], [ 5, %bb.ku ], [ 4, %.thread.i ], [ 3, %bb.ks ], [ 3, %bb.kp ]
  %.6216.i = phi ptr [ %spec.select.i97, %.thread.thread.i ], [ %spec.select.i97.sroa.sel116, %.loopexit22.loopexit.i ], [ %spec.select.i97, %bb.ku ], [ %spec.select.i97, %.thread.i ], [ %spec.select.i97, %bb.ks ], [ %spec.select.i97, %bb.kp ] ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.6216.i, i64 %.0.i ; 2 uses
  %i.apk = icmp ugt ptr %i.apj, %i.ale
  br i1 %i.apk, label %.thread, label %bb.kv

bb.kv:                                            ; preds = %.loopexit22.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.6216.i, ptr noundef nonnull align 1 dereferenceable(1) %.0218104.i, i64 %.0.i, i1 false)
  br label %.loopexit.i

bb.kw:                                            ; preds = %bb.km
  %.not252.i = icmp eq i32 %.0195111.i, 0
  %i.apl = select i1 %.not252.i, i32 %.0193.i, i32 0
  switch i32 %i.apl, label %bb.lt [
    i32 91, label %.preheader31.preheader.i
    i32 92, label %bb.lc
    i32 41, label %bb.li
    i32 40, label %bb.lk
    i32 63, label %bb.ll
    i32 43, label %bb.ll
    i32 123, label %bb.ll
    i32 125, label %bb.ll
    i32 124, label %bb.ll
    i32 46, label %bb.lm
    i32 36, label %bb.lm
    i32 42, label %bb.lo
    i32 94, label %bb.lr
  ]

.preheader31.preheader.i:                         ; preds = %bb.kw
  %.not265.i = icmp ult ptr %spec.select.i97, %i.ale
  br i1 %.not265.i, label %bb.kx, label %.thread

bb.kx:                                            ; preds = %.preheader31.preheader.i
  %.1211105.i.sroa.gep108 = getelementptr i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel110 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep108, ptr %i.alf ; 3 uses
  store i8 91, ptr %spec.select.i97, align 1, !tbaa !25
  %.not259.i = icmp eq i64 %i.aoq, 0
  br i1 %.not259.i, label %.thread, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.apm = load i8, ptr %i.aop, align 1, !tbaa !25 ; 2 uses
  %i.apn = icmp eq i8 %i.apm, 94
  br i1 %i.apn, label %bb.kz, label %.thread2.i

bb.kz:                                            ; preds = %bb.ky
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aop, i64 1 ; 2 uses
  %i.app = add i64 %i.aoq, -1                     ; 2 uses
  %.not264.i = icmp ult ptr %spec.select.i97.sroa.sel110, %i.ale
  br i1 %.not264.i, label %bb.la, label %.thread

bb.la:                                            ; preds = %bb.kz
  store i8 94, ptr %spec.select.i97.sroa.sel110, align 1, !tbaa !25
  %.not261.i = icmp eq i64 %i.app, 0
  br i1 %.not261.i, label %.thread, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.la
  %.1211105.i.sroa.gep111 = getelementptr i8, ptr %.1211105.i, i64 2
  %spec.select.i97.sroa.sel113 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep111, ptr %i.alg
  %.pr.i = load i8, ptr %i.apo, align 1, !tbaa !25
  br label %.thread2.i

.thread2.i:                                       ; preds = %thread-pre-split.i, %bb.ky
  %i.apq = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.apm, %bb.ky ]
  %.99.i = phi ptr [ %spec.select.i97.sroa.sel113, %thread-pre-split.i ], [ %spec.select.i97.sroa.sel110, %bb.ky ] ; 4 uses
  %.12198.i = phi ptr [ %i.apo, %thread-pre-split.i ], [ %i.aop, %bb.ky ] ; 2 uses
  %.12357.i = phi i64 [ %i.app, %thread-pre-split.i ], [ %i.aoq, %bb.ky ] ; 2 uses
  %i.apr = icmp eq i8 %i.apq, 93
  br i1 %i.apr, label %bb.lb, label %.loopexit.i

bb.lb:                                            ; preds = %.thread2.i
  %.not263.i = icmp ult ptr %.99.i, %i.ale
  br i1 %.not263.i, label %.loopexit.loopexit119.i, label %.thread

.loopexit.loopexit119.i:                          ; preds = %bb.lb
  %i.aps = add i64 %.12357.i, -1
  %i.apt = getelementptr inbounds nuw i8, ptr %.12198.i, i64 1
  %7 = getelementptr inbounds nuw i8, ptr %.99.i, i64 1
  store i8 93, ptr %.99.i, align 1, !tbaa !25
  br label %.loopexit.i

bb.lc:                                            ; preds = %bb.kw
  %i.apu = icmp eq i64 %i.aoq, 0
  br i1 %i.apu, label %.thread, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  br i1 %.not.i95, label %bb.le, label %.loopexit.i

bb.le:                                            ; preds = %bb.ld
  %i.apv = load i8, ptr %i.aop, align 1, !tbaa !25 ; 3 uses
  %i.apw = icmp ult i8 %i.apv, 127
  br i1 %i.apw, label %bb.lf, label %.loopexit.i

bb.lf:                                            ; preds = %bb.le
  %i.apx = zext nneg i8 %i.apv to i32
  %memchr.i100 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.8, i32 %i.apx, i64 14)
  %.not254.i = icmp eq ptr %memchr.i100, null
  br i1 %.not254.i, label %.loopexit.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.apy = tail call ptr @__ctype_b_loc() #7
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !34
  %i.aqa = zext nneg i8 %i.apv to i64
  %i.aqb = getelementptr inbounds nuw [2 x i8], ptr %i.apz, i64 %i.aqa
  %i.aqc = load i16, ptr %i.aqb, align 2, !tbaa !36
  %i.aqd = and i16 %i.aqc, 2048
  %.not255.i = icmp eq i16 %i.aqd, 0
  br i1 %.not255.i, label %.loopexit34.i, label %.preheader33.preheader.i

.preheader33.preheader.i:                         ; preds = %bb.lg
  %.not257.i = icmp ult ptr %spec.select.i97, %i.ale
  br i1 %.not257.i, label %.loopexit34.loopexit.i, label %.thread

.loopexit34.loopexit.i:                           ; preds = %.preheader33.preheader.i
  %.1211105.i.sroa.gep105 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel107 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep105, ptr %i.alf
  store i8 92, ptr %spec.select.i97, align 1, !tbaa !25
  br label %.loopexit34.i

.loopexit34.i:                                    ; preds = %.loopexit34.loopexit.i, %bb.lg
  %.12.i = phi ptr [ %spec.select.i97, %bb.lg ], [ %spec.select.i97.sroa.sel107, %.loopexit34.loopexit.i ] ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.12.i, i64 1 ; 2 uses
  %i.aqf = icmp ugt ptr %i.aqe, %i.ale
  br i1 %i.aqf, label %.thread, label %bb.lh

bb.lh:                                            ; preds = %.loopexit34.i
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aop, i64 1
  %i.aqh = load i8, ptr %i.aop, align 1, !tbaa !25 ; 2 uses
  store i8 %i.aqh, ptr %.12.i, align 1, !tbaa !25
  %i.aqi = zext i8 %i.aqh to i32
  %i.aqj = add i64 %i.aoq, -1
  br label %.loopexit.i

bb.li:                                            ; preds = %bb.kw
  %i.aqk = icmp eq i32 %.0202108.i, 0
  %or.cond5.i = select i1 %.not.i95, i1 true, i1 %i.aqk
  br i1 %or.cond5.i, label %bb.lv, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aql = add i32 %.0202108.i, -1
  br label %bb.lm

bb.lk:                                            ; preds = %bb.kw
  %i.aqm = add i32 %.0202108.i, 1
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.kw, %bb.kw, %bb.kw, %bb.kw, %bb.kw
  %.1203.i = phi i32 [ %i.aqm, %bb.lk ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ] ; 2 uses
  br i1 %.not.i95, label %bb.lv, label %bb.lm

bb.lm:                                            ; preds = %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.ll, %bb.lj, %bb.kw, %bb.kw
  %.3205.i = phi i32 [ %i.aql, %bb.lj ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.lp ], [ %.0202108.i, %bb.lq ], [ %.0202108.i, %bb.lr ], [ %.1203.i, %bb.ll ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.ls ]
  %.3.i = phi i32 [ %.0199109.i, %bb.lj ], [ 2, %bb.kw ], [ %.0199109.i, %bb.lp ], [ 2, %bb.lq ], [ %.0199109.i, %bb.lr ], [ 2, %bb.ll ], [ 2, %bb.kw ], [ 1, %bb.ls ]
  %.1211105.i.sroa.gep = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel = select i1 %.not130.i, ptr %.1211105.i.sroa.gep, ptr %i.alf ; 2 uses
  %i.aqn = icmp ugt ptr %spec.select.i97.sroa.sel, %i.ale
  br i1 %i.aqn, label %.thread, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.aqo = trunc i32 %.0193.i to i8
  store i8 %i.aqo, ptr %spec.select.i97, align 1, !tbaa !25
  br label %.loopexit.i

bb.lo:                                            ; preds = %bb.kw
  %.not253.i = icmp eq i32 %.0196110.i, 42
  br i1 %.not253.i, label %.loopexit.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  br i1 %.not.i95, label %bb.lq, label %bb.lm

bb.lq:                                            ; preds = %bb.lp
  %i.aqp = icmp ne i32 %.0199109.i, 2
  %i.aqq = icmp eq i32 %.0196110.i, 40
  %or.cond7.i = select i1 %i.aqp, i1 true, i1 %i.aqq
  br i1 %or.cond7.i, label %bb.lv, label %bb.lm

bb.lr:                                            ; preds = %bb.kw
  br i1 %.not.i95, label %bb.ls, label %bb.lm

bb.ls:                                            ; preds = %bb.lr
  %i.aqr = icmp eq i32 %.0199109.i, 0
  %i.aqs = icmp eq i32 %.0196110.i, 40
  %or.cond9.i = select i1 %i.aqr, i1 true, i1 %i.aqs
  br i1 %or.cond9.i, label %bb.lm, label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.kw
  %i.aqt = icmp samesign ult i32 %.0193.i, 128
  br i1 %i.aqt, label %bb.lu, label %.loopexit26.i

bb.lu:                                            ; preds = %bb.lt
  %memchr266.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %.0193.i, i64 15)
  %.not267.i = icmp eq ptr %memchr266.i, null
  br i1 %.not267.i, label %.loopexit26.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lq, %bb.ll, %bb.li
  %.4206.i = phi i32 [ %.0202108.i, %bb.lu ], [ %.0202108.i, %bb.li ], [ %.1203.i, %bb.ll ], [ %.0202108.i, %bb.lq ]
  %.not269.i = icmp ult ptr %spec.select.i97, %i.ale
  br i1 %.not269.i, label %.loopexit26.loopexit.i, label %.thread

.loopexit26.loopexit.i:                           ; preds = %bb.lv
  %.1211105.i.sroa.gep102 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel104 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep102, ptr %i.alf
  store i8 92, ptr %spec.select.i97, align 1, !tbaa !25
  br label %.loopexit26.i

.loopexit26.i:                                    ; preds = %.loopexit26.loopexit.i, %bb.lu, %bb.lt
  %.14.i = phi ptr [ %spec.select.i97, %bb.lt ], [ %spec.select.i97, %bb.lu ], [ %spec.select.i97.sroa.sel104, %.loopexit26.loopexit.i ] ; 2 uses
  %.5207.i = phi i32 [ %.0202108.i, %bb.lt ], [ %.0202108.i, %bb.lu ], [ %.4206.i, %.loopexit26.loopexit.i ]
  %i.aqu = getelementptr inbounds nuw i8, ptr %.14.i, i64 %.0.i ; 2 uses
  %i.aqv = icmp ugt ptr %i.aqu, %i.ale
  br i1 %i.aqv, label %.thread, label %bb.lw

bb.lw:                                            ; preds = %.loopexit26.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.14.i, ptr noundef nonnull align 1 dereferenceable(1) %.0218104.i, i64 %.0.i, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.lw, %bb.lo, %bb.ln, %bb.lh, %bb.lf, %bb.le, %bb.ld, %.loopexit.loopexit119.i, %.thread2.i, %bb.kv, %bb.kt, %.loopexit.loopexit.i
  %.3237.i = phi i64 [ %i.aoq, %bb.lo ], [ %i.aoq, %bb.kv ], [ %i.aoq, %bb.lw ], [ %i.aoq, %.loopexit.loopexit.i ], [ %.12357.i, %.thread2.i ], [ %i.ape, %bb.kt ], [ %i.aoq, %bb.lf ], [ %i.aps, %.loopexit.loopexit119.i ], [ %i.aoq, %bb.le ], [ %i.aqj, %bb.lh ], [ %i.aoq, %bb.ld ], [ %i.aoq, %bb.ln ] ; 2 uses
  %.3221.i = phi ptr [ %i.aop, %bb.lo ], [ %i.aop, %bb.kv ], [ %i.aop, %bb.lw ], [ %i.aop, %.loopexit.loopexit.i ], [ %.12198.i, %.thread2.i ], [ %i.apf, %bb.kt ], [ %i.aop, %bb.lf ], [ %i.apt, %.loopexit.loopexit119.i ], [ %i.aop, %bb.le ], [ %i.aqg, %bb.lh ], [ %i.aop, %bb.ld ], [ %i.aop, %bb.ln ]
  %.16.i = phi ptr [ %spec.select.i97, %bb.lo ], [ %i.apj, %bb.kv ], [ %i.aqu, %bb.lw ], [ %spec.select.i97.sroa.sel125, %.loopexit.loopexit.i ], [ %.99.i, %.thread2.i ], [ %spec.select.i97.sroa.sel122, %bb.kt ], [ %spec.select.i97, %bb.lf ], [ %7, %.loopexit.loopexit119.i ], [ %spec.select.i97, %bb.le ], [ %i.aqe, %bb.lh ], [ %spec.select.i97, %bb.ld ], [ %spec.select.i97.sroa.sel, %bb.ln ] ; 2 uses
  %.7.i = phi i32 [ %.0202108.i, %bb.lo ], [ %.0202108.i, %bb.kv ], [ %.5207.i, %bb.lw ], [ %.0202108.i, %.loopexit.loopexit.i ], [ %.0202108.i, %.thread2.i ], [ %.0202108.i, %bb.kt ], [ %.0202108.i, %bb.lf ], [ %.0202108.i, %.loopexit.loopexit119.i ], [ %.0202108.i, %bb.le ], [ %.0202108.i, %bb.lh ], [ %.0202108.i, %bb.ld ], [ %.3205.i, %bb.ln ]
  %.5.i = phi i32 [ %.0199109.i, %bb.lo ], [ %.2201174.i, %bb.kv ], [ 2, %bb.lw ], [ 2, %.loopexit.loopexit.i ], [ 3, %.thread2.i ], [ 3, %bb.kt ], [ %.0199109.i, %bb.lf ], [ 3, %.loopexit.loopexit119.i ], [ %.0199109.i, %bb.le ], [ %.0199109.i, %bb.lh ], [ %.0199109.i, %bb.ld ], [ %.3.i, %bb.ln ] ; 2 uses
  %.2198.i = phi i32 [ 42, %bb.lo ], [ %.0196110.i, %bb.kv ], [ 255, %bb.lw ], [ %.0196110.i, %.loopexit.loopexit.i ], [ %.0196110.i, %.thread2.i ], [ %.0196110.i, %bb.kt ], [ %.0196110.i, %bb.lf ], [ %.0196110.i, %.loopexit.loopexit119.i ], [ %.0196110.i, %bb.le ], [ %i.aqi, %bb.lh ], [ %.0196110.i, %bb.ld ], [ %.0193.i, %bb.ln ]
  %.2.i = phi i32 [ 0, %bb.lo ], [ 0, %bb.kv ], [ 0, %bb.lw ], [ 0, %.loopexit.loopexit.i ], [ 0, %.thread2.i ], [ 0, %bb.kt ], [ 1, %bb.lf ], [ 0, %.loopexit.loopexit119.i ], [ 1, %bb.le ], [ 0, %bb.lh ], [ 1, %bb.ld ], [ 0, %bb.ln ]
  %.not250.i = icmp eq i64 %.3237.i, 0
  br i1 %.not250.i, label %._crit_edge.i99, label %.lr.ph.i96

._crit_edge.i99:                                  ; preds = %.loopexit.i
  %i.aqw = icmp ugt i32 %.5.i, 2
  br i1 %i.aqw, label %.thread, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i99, %.preheader36.i
  %.0208.lcssa191.i = phi i64 [ %i.alo, %._crit_edge.i99 ], [ 0, %.preheader36.i ]
  %.0209.lcssa190.i = phi ptr [ %spec.select.i97, %._crit_edge.i99 ], [ %.170155, %.preheader36.i ]
  %.1211.lcssa189.i = phi ptr [ %.16.i, %._crit_edge.i99 ], [ %i.alk, %.preheader36.i ] ; 2 uses
  %i.aqx = ptrtoint ptr %.1211.lcssa189.i to i64
  %i.aqy = ptrtoint ptr %.0209.lcssa190.i to i64
  %i.aqz = sub i64 %.0208.lcssa191.i, %i.aqy
  %i.ara = add i64 %i.aqz, %i.aqx
  store i64 %i.ara, ptr %4, align 8, !tbaa !12
  store i8 0, ptr %.1211.lcssa189.i, align 1, !tbaa !25
  br label %convert_posix.exit

bb.lx:                                            ; preds = %bb.o
  store i64 0, ptr %4, align 8, !tbaa !12
  br label %.thread

convert_posix.exit:                               ; preds = %._crit_edge.thread.i, %convert_glob.exit
  %.072 = phi i32 [ %.095.i, %convert_glob.exit ], [ 0, %._crit_edge.thread.i ] ; 2 uses
  %i.arb = icmp ne i32 %.072, 0
  %or.cond6 = or i1 %.not88, %i.arb
  br i1 %or.cond6, label %.thread, label %bb.ly

bb.ly:                                            ; preds = %convert_posix.exit
  %i.arc = load ptr, ptr %3, align 8, !tbaa !14
  %.not90 = icmp eq ptr %i.arc, null
  br i1 %.not90, label %bb.lz, label %.thread

bb.lz:                                            ; preds = %bb.ly
  %i.ard = load i64, ptr %4, align 8, !tbaa !12
  %i.are = shl i64 %i.ard, 3
  %i.arf = add i64 %i.are, 32
  %i.arg = call ptr @_pcre2_memctl_malloc_8(i64 noundef %i.arf, ptr noundef nonnull %spec.store.select) #6 ; 2 uses
  %i.arh = icmp eq ptr %i.arg, null
  br i1 %i.arh, label %.thread, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arg, i64 24 ; 2 uses
  store ptr %i.ari, ptr %3, align 8, !tbaa !14
  %i.arj = load i64, ptr %4, align 8, !tbaa !12
  %i.ark = add i64 %i.arj, 1
  br i1 %i.aj, label %bb.m, label %.thread, !llvm.loop !41

.thread:                                          ; preds = %bb.kb, %bb.kc, %bb.jy, %bb.jz, %bb.jx, %bb.ka, %._crit_edge.i99, %bb.lz, %bb.ly, %convert_posix.exit, %bb.ma, %bb.kz, %bb.lv, %bb.lb, %.preheader.preheader.i101, %.preheader21.preheader.i, %.preheader24.preheader.i, %.preheader31.preheader.i, %.preheader33.preheader.i, %bb.lc, %.preheader24.1.i, %.loopexit22.i, %bb.lm, %.loopexit34.i, %.loopexit26.i, %bb.kx, %bb.la, %bb.lx, %bb.h, %bb.a, %bb.c
  %.4 = phi i32 [ %i.l, %bb.h ], [ -34, %bb.c ], [ -48, %bb.kz ], [ -51, %bb.a ], [ -44, %bb.lx ], [ 106, %bb.la ], [ 106, %bb.kx ], [ -48, %.loopexit26.i ], [ -48, %.loopexit34.i ], [ -48, %bb.lm ], [ -48, %.loopexit22.i ], [ -48, %.preheader24.1.i ], [ 101, %bb.lc ], [ -48, %.preheader33.preheader.i ], [ -48, %.preheader31.preheader.i ], [ -48, %.preheader24.preheader.i ], [ -48, %.preheader21.preheader.i ], [ -48, %.preheader.preheader.i101 ], [ -48, %bb.lb ], [ -48, %bb.lv ], [ -48, %bb.jx ], [ -48, %bb.jz ], [ -48, %bb.jy ], [ -48, %bb.kc ], [ -48, %bb.kb ], [ 106, %._crit_edge.i99 ], [ -48, %bb.ka ], [ %.072, %convert_posix.exit ], [ 0, %bb.ly ], [ -48, %bb.lz ], [ -44, %bb.ma ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @_pcre2_strlen_8(ptr noundef) local_unnamed_addr #2

declare i32 @_pcre2_valid_utf_8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_pcre2_memctl_malloc_8(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pcre2_converted_pattern_free_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  tail call void %i.c(ptr noundef nonnull %i.a, ptr noundef %i.e) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!18, !9, i64 24}
!18 = !{!"pcre2_real_convert_context_8", !19, i64 0, !9, i64 24, !9, i64 28}
!19 = !{!"pcre2_memctl", !16, i64 0, !16, i64 8, !16, i64 16}
!20 = !{!18, !9, i64 28}
!21 = !{!22, !15, i64 0}
!22 = !{!"pcre2_output_context", !15, i64 0, !15, i64 8, !13, i64 16, !10, i64 24}
!23 = !{!22, !15, i64 8}
!24 = !{!22, !13, i64 16}
!25 = !{!10, !10, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27, !31}
!31 = !{!"llvm.loop.unswitch.partial.disable"}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 short", !16, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !10, i64 0}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27, !31}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = !{!19, !16, i64 8}
!43 = !{!19, !16, i64 16}
end_hunk_0
