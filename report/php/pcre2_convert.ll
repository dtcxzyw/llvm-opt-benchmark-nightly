Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_convert?download=true
inline.NumInlined: 46
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@pcre2_pattern_convert_8:bb.a
convert_glob_parse_range.exit.thread.i:           ; preds = %bb.ji, %bb.fv, %bb.fb, %bb.ez, %bb.jd, %bb.ir, %bb.iq, %bb.id, %.backedge.i.i, %bb.gt, %bb.jw
  %.729.ph.i = phi ptr [ %.7.ph3642.i, %bb.jw ], [ %.2261.be.i.i, %.backedge.i.i ], [ %.3262.i.i, %bb.gt ], [ %.6.i.i, %bb.jd ], [ %.4263.i.i, %bb.id ], [ %.4263.i.i, %bb.iq ], [ %.5264.i.i, %bb.ir ], [ %.1260.i.i, %bb.fv ], [ %i.na, %bb.fb ], [ %i.bx, %bb.ji ], [ %i.bx, %bb.ez ]
  %.2.ph.i = phi i32 [ -48, %bb.jw ], [ 106, %.backedge.i.i ], [ 106, %bb.gt ], [ 106, %bb.jd ], [ 106, %bb.id ], [ -64, %bb.iq ], [ -64, %bb.ir ], [ 106, %bb.fv ], [ 106, %bb.fb ], [ -64, %bb.ji ], [ 106, %bb.ez ]
  %i.ald = ptrtoint ptr %.729.ph.i to i64
  %i.ale = sub i64 %i.ald, %i.ag
  br label %convert_glob.exit

.critedge.i:                                      ; preds = %bb.jw, %convert_glob_write.exit261.i
  %i.alf = add i64 %.pre131.i, -1
  br label %convert_glob.exit

convert_glob.exit:                                ; preds = %bb.q, %convert_glob_parse_range.exit.thread.i, %.critedge.i
  %.sink.i = phi i64 [ %i.alf, %.critedge.i ], [ %i.ale, %convert_glob_parse_range.exit.thread.i ], [ 0, %bb.q ]
  %.095.i = phi i32 [ 0, %.critedge.i ], [ %.2.ph.i, %convert_glob_parse_range.exit.thread.i ], [ -64, %bb.q ]
  store i64 %.sink.i, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %convert_posix.exit

bb.jx:                                            ; preds = %bb.o, %bb.o
  %i.alg = getelementptr i8, ptr %.170155, i64 %.168156
  %i.alh = getelementptr i8, ptr %i.alg, i64 -1   ; 18 uses
  store i64 %.077, ptr %4, align 8, !tbaa !25
  %.not277.i = icmp sgt i64 %.168156, 1
  br i1 %.not277.i, label %bb.jy, label %.thread

bb.jy:                                            ; preds = %bb.jx
  %i.ali = getelementptr inbounds nuw i8, ptr %.170155, i64 1 ; 9 uses
  store i8 40, ptr %.170155, align 1, !tbaa !35
  %.not277.1.i = icmp ult ptr %i.ali, %i.alh
  br i1 %.not277.1.i, label %bb.jz, label %.thread

bb.jz:                                            ; preds = %bb.jy
  %i.alj = getelementptr inbounds nuw i8, ptr %.170155, i64 2 ; 4 uses
  store i8 42, ptr %i.ali, align 1, !tbaa !35
  %.not277.2.i = icmp ult ptr %i.alj, %i.alh
  br i1 %.not277.2.i, label %bb.ka, label %.thread

bb.ka:                                            ; preds = %bb.jz
  %i.alk = getelementptr inbounds nuw i8, ptr %.170155, i64 3 ; 2 uses
  store i8 78, ptr %i.alj, align 1, !tbaa !35
  %.not277.3.i = icmp ult ptr %i.alk, %i.alh
  br i1 %.not277.3.i, label %bb.kb, label %.thread

bb.kb:                                            ; preds = %bb.ka
  %i.all = getelementptr inbounds nuw i8, ptr %.170155, i64 4 ; 2 uses
  store i8 85, ptr %i.alk, align 1, !tbaa !35
  %.not277.4.i = icmp ult ptr %i.all, %i.alh
  br i1 %.not277.4.i, label %bb.kc, label %.thread

bb.kc:                                            ; preds = %bb.kb
  %i.alm = getelementptr inbounds nuw i8, ptr %.170155, i64 5 ; 2 uses
  store i8 76, ptr %i.all, align 1, !tbaa !35
  %.not277.5.i = icmp ult ptr %i.alm, %i.alh
  br i1 %.not277.5.i, label %.preheader36.i, label %.thread

.preheader36.i:                                   ; preds = %bb.kc
  %i.aln = getelementptr inbounds nuw i8, ptr %.170155, i64 6 ; 2 uses
  store i8 41, ptr %i.alm, align 1, !tbaa !35
  br i1 %.not250102.i, label %._crit_edge.thread.i, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.preheader36.i, %.loopexit.i
  %.0195111.i = phi i32 [ %.2.i, %.loopexit.i ], [ 0, %.preheader36.i ]
  %.0196110.i = phi i32 [ %.2198.i, %.loopexit.i ], [ 0, %.preheader36.i ] ; 11 uses
  %.0199109.i = phi i32 [ %.5.i, %.loopexit.i ], [ 0, %.preheader36.i ] ; 13 uses
  %.0202108.i = phi i32 [ %.7.i, %.loopexit.i ], [ 0, %.preheader36.i ] ; 29 uses
  %.0208107.i = phi i64 [ %i.alr, %.loopexit.i ], [ 0, %.preheader36.i ]
  %.0209106.i = phi ptr [ %spec.select.i97, %.loopexit.i ], [ %.170155, %.preheader36.i ]
  %.1211105.i = phi ptr [ %.16.i, %.loopexit.i ], [ %i.aln, %.preheader36.i ] ; 11 uses
  %.0218104.i = phi ptr [ %.3221.i, %.loopexit.i ], [ %0, %.preheader36.i ] ; 12 uses
  %.0234103.i = phi i64 [ %.3237.i, %.loopexit.i ], [ %.077, %.preheader36.i ]
  %i.alo = ptrtoint ptr %.1211105.i to i64
  %i.alp = ptrtoint ptr %.0209106.i to i64
  %i.alq = sub i64 %i.alo, %i.alp
  %i.alr = add i64 %i.alq, %.0208107.i            ; 2 uses
  %spec.select.i97 = select i1 %.not130.i, ptr %.1211105.i, ptr %.170155 ; 27 uses
  %i.als = load i8, ptr %.0218104.i, align 1, !tbaa !35 ; 2 uses
  %i.alt = zext i8 %i.als to i32                  ; 10 uses
  %i.alu = icmp ugt i8 %i.als, -65
  %or.cond.i98 = select i1 %i.p, i1 %i.alu, i1 false
  br i1 %or.cond.i98, label %bb.kd, label %bb.km

bb.kd:                                            ; preds = %.lr.ph.i96
  %i.alv = and i32 %i.alt, 32
  %i.alw = icmp eq i32 %i.alv, 0
  %i.alx = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 1
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !35
  %i.alz = and i8 %i.aly, 63
  %i.ama = zext nneg i8 %i.alz to i32             ; 5 uses
  br i1 %i.alw, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.amb = shl nuw nsw i32 %i.alt, 6
  %i.amc = and i32 %i.amb, 1984
  %i.amd = or disjoint i32 %i.amc, %i.ama
  br label %bb.km

bb.kf:                                            ; preds = %bb.kd
  %i.ame = and i32 %i.alt, 16
  %i.amf = icmp eq i32 %i.ame, 0
  br i1 %i.amf, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.amg = shl nuw nsw i32 %i.alt, 12
  %i.amh = and i32 %i.amg, 61440
  %i.ami = shl nuw nsw i32 %i.ama, 6
  %i.amj = or disjoint i32 %i.ami, %i.amh
  %i.amk = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 2
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !35
  %i.amm = and i8 %i.aml, 63
  %i.amn = zext nneg i8 %i.amm to i32
  %i.amo = or disjoint i32 %i.amj, %i.amn
  br label %bb.km

bb.kh:                                            ; preds = %bb.kf
  %i.amp = and i32 %i.alt, 8
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.amr = shl nuw nsw i32 %i.alt, 18
  %i.ams = and i32 %i.amr, 1835008
  %i.amt = shl nuw nsw i32 %i.ama, 12
  %i.amu = or disjoint i32 %i.amt, %i.ams
  %i.amv = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 2
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !35
  %i.amx = and i8 %i.amw, 63
  %i.amy = zext nneg i8 %i.amx to i32
  %i.amz = shl nuw nsw i32 %i.amy, 6
  %i.ana = or disjoint i32 %i.amz, %i.amu
  %i.anb = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 3
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !35
  %i.and = and i8 %i.anc, 63
  %i.ane = zext nneg i8 %i.and to i32
  %i.anf = or disjoint i32 %i.ana, %i.ane
  br label %bb.km

bb.kj:                                            ; preds = %bb.kh
  %i.ang = and i32 %i.alt, 4
  %i.anh = icmp eq i32 %i.ang, 0
  %i.ani = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 2
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !35
  %i.ank = and i8 %i.anj, 63
  %i.anl = zext nneg i8 %i.ank to i32             ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 3
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !35
  %i.ano = and i8 %i.ann, 63
  %i.anp = zext nneg i8 %i.ano to i32             ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 4
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !35
  %i.ans = and i8 %i.anr, 63
  %i.ant = zext nneg i8 %i.ans to i32             ; 2 uses
  br i1 %i.anh, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.anu = shl nuw i32 %i.alt, 24
  %i.anv = and i32 %i.anu, 50331648
  %i.anw = shl nuw nsw i32 %i.ama, 18
  %i.anx = or disjoint i32 %i.anw, %i.anv
  %i.any = shl nuw nsw i32 %i.anl, 12
  %i.anz = or disjoint i32 %i.any, %i.anx
  %i.aoa = shl nuw nsw i32 %i.anp, 6
  %i.aob = or disjoint i32 %i.anz, %i.aoa
  %i.aoc = or disjoint i32 %i.aob, %i.ant
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  %i.aod = shl i32 %i.alt, 30
  %i.aoe = and i32 %i.aod, 1073741824
  %i.aof = shl nuw nsw i32 %i.ama, 24
  %i.aog = or disjoint i32 %i.aof, %i.aoe
  %i.aoh = shl nuw nsw i32 %i.anl, 18
  %i.aoi = or disjoint i32 %i.aoh, %i.aog
  %i.aoj = shl nuw nsw i32 %i.anp, 12
  %i.aok = or disjoint i32 %i.aoi, %i.aoj
  %i.aol = shl nuw nsw i32 %i.ant, 6
  %i.aom = or disjoint i32 %i.aok, %i.aol
  %i.aon = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 5
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !35
  %i.aop = and i8 %i.aoo, 63
  %i.aoq = zext nneg i8 %i.aop to i32
  %i.aor = or disjoint i32 %i.aom, %i.aoq
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk, %bb.ki, %bb.kg, %bb.ke, %.lr.ph.i96
  %.0193.i = phi i32 [ %i.amd, %bb.ke ], [ %i.amo, %bb.kg ], [ %i.anf, %bb.ki ], [ %i.aoc, %bb.kk ], [ %i.aor, %bb.kl ], [ %i.alt, %.lr.ph.i96 ] ; 12 uses
  %.0.i = phi i64 [ 2, %bb.ke ], [ 3, %bb.kg ], [ 4, %bb.ki ], [ 5, %bb.kk ], [ 6, %bb.kl ], [ 1, %.lr.ph.i96 ] ; 6 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.0218104.i, i64 %.0.i ; 16 uses
  %i.aot = sub i64 %.0234103.i, %.0.i             ; 15 uses
  %i.aou = icmp ugt i32 %.0199109.i, 2
  br i1 %i.aou, label %bb.kn, label %bb.kw

bb.kn:                                            ; preds = %bb.km
  %i.aov = icmp eq i32 %.0193.i, 93
  br i1 %i.aov, label %.preheader.preheader.i101, label %bb.ko

.preheader.preheader.i101:                        ; preds = %bb.kn
  %.not276.i = icmp ult ptr %spec.select.i97, %i.alh
  br i1 %.not276.i, label %.loopexit.loopexit.i, label %.thread

.loopexit.loopexit.i:                             ; preds = %.preheader.preheader.i101
  store i8 93, ptr %spec.select.i97, align 1, !tbaa !35
  %.1211105.i.sroa.gep123 = getelementptr i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel125 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep123, ptr %i.ali
  br label %.loopexit.i

bb.ko:                                            ; preds = %bb.kn
  switch i32 %.0199109.i, label %.thread.thread.i [
    i32 5, label %bb.kp
    i32 3, label %.thread.i
    i32 4, label %bb.ku
  ]

bb.kp:                                            ; preds = %bb.ko
  %i.aow = icmp samesign ult i32 %.0193.i, 128
  br i1 %i.aow, label %bb.kq, label %.loopexit22.i

bb.kq:                                            ; preds = %bb.kp
  %i.aox = tail call ptr @__ctype_b_loc() #7
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !39
  %i.aoz = zext nneg i32 %.0193.i to i64
  %i.apa = getelementptr inbounds nuw [2 x i8], ptr %i.aoy, i64 %i.aoz
  %i.apb = load i16, ptr %i.apa, align 2, !tbaa !41
  %i.apc = and i16 %i.apb, 512
  %.not270.i = icmp eq i16 %i.apc, 0
  br i1 %.not270.i, label %bb.kr, label %.thread.thread.i

bb.kr:                                            ; preds = %bb.kq
  %i.apd = icmp eq i32 %.0193.i, 58
  %i.ape = icmp ne i64 %i.aot, 0
  %or.cond3.i = and i1 %i.apd, %i.ape
  br i1 %or.cond3.i, label %bb.ks, label %.thread.i

bb.ks:                                            ; preds = %bb.kr
  %i.apf = load i8, ptr %i.aos, align 1, !tbaa !35
  %i.apg = icmp eq i8 %i.apf, 93
  br i1 %i.apg, label %.preheader24.preheader.i, label %.loopexit22.i

.preheader24.preheader.i:                         ; preds = %bb.ks
  %.not272.i = icmp ult ptr %spec.select.i97, %i.alh
  br i1 %.not272.i, label %.preheader24.1.i, label %.thread

.preheader24.1.i:                                 ; preds = %.preheader24.preheader.i
  %.1211105.i.sroa.gep117 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel119 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep117, ptr %i.ali ; 2 uses
  store i8 58, ptr %spec.select.i97, align 1, !tbaa !35
  %.not272.1.i = icmp ult ptr %spec.select.i97.sroa.sel119, %i.alh
  br i1 %.not272.1.i, label %bb.kt, label %.thread

bb.kt:                                            ; preds = %.preheader24.1.i
  %.1211105.i.sroa.gep120 = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 2
  %spec.select.i97.sroa.sel122 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep120, ptr %i.alj
  store i8 93, ptr %spec.select.i97.sroa.sel119, align 1, !tbaa !35
  %i.aph = add i64 %i.aot, -1
  %i.api = getelementptr inbounds nuw i8, ptr %i.aos, i64 1
  br label %.loopexit.i, !llvm.loop !22

.thread.i:                                        ; preds = %bb.kr, %bb.ko
  %i.apj = icmp eq i32 %.0193.i, 91
  br i1 %i.apj, label %.loopexit22.i, label %.thread.thread.i

bb.ku:                                            ; preds = %bb.ko
  %i.apk = icmp eq i32 %.0193.i, 58
  br i1 %i.apk, label %.loopexit22.i, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %bb.ku, %.thread.i, %bb.kq, %bb.ko
  %.2201.i = phi i32 [ %.0199109.i, %bb.ko ], [ 5, %bb.kq ], [ 3, %.thread.i ], [ 4, %bb.ku ] ; 2 uses
  %i.apl = icmp eq i32 %.0193.i, 92
  br i1 %i.apl, label %.preheader21.preheader.i, label %.loopexit22.i

.preheader21.preheader.i:                         ; preds = %.thread.thread.i
  %.not274.i = icmp ult ptr %spec.select.i97, %i.alh
  br i1 %.not274.i, label %.loopexit22.loopexit.i, label %.thread

.loopexit22.loopexit.i:                           ; preds = %.preheader21.preheader.i
  store i8 92, ptr %spec.select.i97, align 1, !tbaa !35
  %.1211105.i.sroa.gep114 = getelementptr i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel116 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep114, ptr %i.ali
  br label %.loopexit22.i

.loopexit22.i:                                    ; preds = %.loopexit22.loopexit.i, %.thread.thread.i, %bb.ku, %.thread.i, %bb.ks, %bb.kp
  %.2201174.i = phi i32 [ %.2201.i, %.thread.thread.i ], [ %.2201.i, %.loopexit22.loopexit.i ], [ 5, %bb.ku ], [ 4, %.thread.i ], [ 3, %bb.ks ], [ 3, %bb.kp ]
  %.6216.i = phi ptr [ %spec.select.i97, %.thread.thread.i ], [ %spec.select.i97.sroa.sel116, %.loopexit22.loopexit.i ], [ %spec.select.i97, %bb.ku ], [ %spec.select.i97, %.thread.i ], [ %spec.select.i97, %bb.ks ], [ %spec.select.i97, %bb.kp ] ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %.6216.i, i64 %.0.i ; 2 uses
  %i.apn = icmp ugt ptr %i.apm, %i.alh
  br i1 %i.apn, label %.thread, label %bb.kv

bb.kv:                                            ; preds = %.loopexit22.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.6216.i, ptr noundef nonnull align 1 dereferenceable(1) %.0218104.i, i64 %.0.i, i1 false)
  br label %.loopexit.i

bb.kw:                                            ; preds = %bb.km
  %.not252.i = icmp eq i32 %.0195111.i, 0
  %i.apo = select i1 %.not252.i, i32 %.0193.i, i32 0
  switch i32 %i.apo, label %bb.lt [
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
  %.not265.i = icmp ult ptr %spec.select.i97, %i.alh
  br i1 %.not265.i, label %bb.kx, label %.thread

bb.kx:                                            ; preds = %.preheader31.preheader.i
  store i8 91, ptr %spec.select.i97, align 1, !tbaa !35
  %.1211105.i.sroa.gep108 = getelementptr i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel110 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep108, ptr %i.ali ; 3 uses
  %.not259.i = icmp eq i64 %i.aot, 0
  br i1 %.not259.i, label %.thread, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.app = load i8, ptr %i.aos, align 1, !tbaa !35 ; 2 uses
  %i.apq = icmp eq i8 %i.app, 94
  br i1 %i.apq, label %bb.kz, label %.thread2.i

bb.kz:                                            ; preds = %bb.ky
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aos, i64 1 ; 2 uses
  %i.aps = add i64 %i.aot, -1                     ; 2 uses
  %.not264.i = icmp ult ptr %spec.select.i97.sroa.sel110, %i.alh
  br i1 %.not264.i, label %bb.la, label %.thread

bb.la:                                            ; preds = %bb.kz
  store i8 94, ptr %spec.select.i97.sroa.sel110, align 1, !tbaa !35
  %.not261.i = icmp eq i64 %i.aps, 0
  br i1 %.not261.i, label %.thread, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.la
  %.1211105.i.sroa.gep111 = getelementptr i8, ptr %.1211105.i, i64 2
  %spec.select.i97.sroa.sel113 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep111, ptr %i.alj
  %.pr.i = load i8, ptr %i.apr, align 1, !tbaa !35
  br label %.thread2.i

.thread2.i:                                       ; preds = %thread-pre-split.i, %bb.ky
  %i.apt = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.app, %bb.ky ]
  %.99.i = phi ptr [ %spec.select.i97.sroa.sel113, %thread-pre-split.i ], [ %spec.select.i97.sroa.sel110, %bb.ky ] ; 4 uses
  %.12198.i = phi ptr [ %i.apr, %thread-pre-split.i ], [ %i.aos, %bb.ky ] ; 2 uses
  %.12357.i = phi i64 [ %i.aps, %thread-pre-split.i ], [ %i.aot, %bb.ky ] ; 2 uses
  %i.apu = icmp eq i8 %i.apt, 93
  br i1 %i.apu, label %bb.lb, label %.loopexit.i

bb.lb:                                            ; preds = %.thread2.i
  %.not263.i = icmp ult ptr %.99.i, %i.alh
  br i1 %.not263.i, label %.loopexit.loopexit119.i, label %.thread

.loopexit.loopexit119.i:                          ; preds = %bb.lb
  %i.apv = add i64 %.12357.i, -1
  %i.apw = getelementptr inbounds nuw i8, ptr %.12198.i, i64 1
  store i8 93, ptr %.99.i, align 1, !tbaa !35
  %scevgep155.i = getelementptr i8, ptr %.99.i, i64 1
  br label %.loopexit.i

bb.lc:                                            ; preds = %bb.kw
  %i.apx = icmp eq i64 %i.aot, 0
  br i1 %i.apx, label %.thread, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  br i1 %.not.i95, label %bb.le, label %.loopexit.i

bb.le:                                            ; preds = %bb.ld
  %i.apy = load i8, ptr %i.aos, align 1, !tbaa !35 ; 3 uses
  %i.apz = icmp ult i8 %i.apy, 127
  br i1 %i.apz, label %bb.lf, label %.loopexit.i

bb.lf:                                            ; preds = %bb.le
  %i.aqa = zext nneg i8 %i.apy to i32
  %memchr.i100 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.8, i32 %i.aqa, i64 14)
  %.not254.i = icmp eq ptr %memchr.i100, null
  br i1 %.not254.i, label %.loopexit.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aqb = tail call ptr @__ctype_b_loc() #7
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !39
  %i.aqd = zext nneg i8 %i.apy to i64
  %i.aqe = getelementptr inbounds nuw [2 x i8], ptr %i.aqc, i64 %i.aqd
  %i.aqf = load i16, ptr %i.aqe, align 2, !tbaa !41
  %i.aqg = and i16 %i.aqf, 2048
  %.not255.i = icmp eq i16 %i.aqg, 0
  br i1 %.not255.i, label %.loopexit34.i, label %.preheader33.preheader.i

.preheader33.preheader.i:                         ; preds = %bb.lg
  %.not257.i = icmp ult ptr %spec.select.i97, %i.alh
  br i1 %.not257.i, label %.loopexit34.loopexit.i, label %.thread

.loopexit34.loopexit.i:                           ; preds = %.preheader33.preheader.i
  store i8 92, ptr %spec.select.i97, align 1, !tbaa !35
  %.1211105.i.sroa.gep105 = getelementptr i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel107 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep105, ptr %i.ali
  br label %.loopexit34.i

.loopexit34.i:                                    ; preds = %.loopexit34.loopexit.i, %bb.lg
  %.12.i = phi ptr [ %spec.select.i97, %bb.lg ], [ %spec.select.i97.sroa.sel107, %.loopexit34.loopexit.i ] ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.12.i, i64 1 ; 2 uses
  %i.aqi = icmp ugt ptr %i.aqh, %i.alh
  br i1 %i.aqi, label %.thread, label %bb.lh

bb.lh:                                            ; preds = %.loopexit34.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aos, i64 1
  %i.aqk = load i8, ptr %i.aos, align 1, !tbaa !35 ; 2 uses
  store i8 %i.aqk, ptr %.12.i, align 1, !tbaa !35
  %i.aql = zext i8 %i.aqk to i32
  %i.aqm = add i64 %i.aot, -1
  br label %.loopexit.i

bb.li:                                            ; preds = %bb.kw
  %i.aqn = icmp eq i32 %.0202108.i, 0
  %or.cond5.i = select i1 %.not.i95, i1 true, i1 %i.aqn
  br i1 %or.cond5.i, label %bb.lv, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aqo = add i32 %.0202108.i, -1
  br label %bb.lm

bb.lk:                                            ; preds = %bb.kw
  %i.aqp = add i32 %.0202108.i, 1
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.kw, %bb.kw, %bb.kw, %bb.kw, %bb.kw
  %.1203.i = phi i32 [ %i.aqp, %bb.lk ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.kw ] ; 2 uses
  br i1 %.not.i95, label %bb.lv, label %bb.lm

bb.lm:                                            ; preds = %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.ll, %bb.lj, %bb.kw, %bb.kw
  %.3205.i = phi i32 [ %i.aqo, %bb.lj ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.lp ], [ %.0202108.i, %bb.lq ], [ %.0202108.i, %bb.lr ], [ %.1203.i, %bb.ll ], [ %.0202108.i, %bb.kw ], [ %.0202108.i, %bb.ls ]
  %.3.i = phi i32 [ %.0199109.i, %bb.lj ], [ 2, %bb.kw ], [ %.0199109.i, %bb.lp ], [ 2, %bb.lq ], [ %.0199109.i, %bb.lr ], [ 2, %bb.ll ], [ 2, %bb.kw ], [ 1, %bb.ls ]
  %.1211105.i.sroa.gep = getelementptr inbounds nuw i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel = select i1 %.not130.i, ptr %.1211105.i.sroa.gep, ptr %i.ali ; 2 uses
  %i.aqq = icmp ugt ptr %spec.select.i97.sroa.sel, %i.alh
  br i1 %i.aqq, label %.thread, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.aqr = trunc i32 %.0193.i to i8
  store i8 %i.aqr, ptr %spec.select.i97, align 1, !tbaa !35
  br label %.loopexit.i

bb.lo:                                            ; preds = %bb.kw
  %.not253.i = icmp eq i32 %.0196110.i, 42
  br i1 %.not253.i, label %.loopexit.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  br i1 %.not.i95, label %bb.lq, label %bb.lm

bb.lq:                                            ; preds = %bb.lp
  %i.aqs = icmp ne i32 %.0199109.i, 2
  %i.aqt = icmp eq i32 %.0196110.i, 40
  %or.cond7.i = select i1 %i.aqs, i1 true, i1 %i.aqt
  br i1 %or.cond7.i, label %bb.lv, label %bb.lm

bb.lr:                                            ; preds = %bb.kw
  br i1 %.not.i95, label %bb.ls, label %bb.lm

bb.ls:                                            ; preds = %bb.lr
  %i.aqu = icmp eq i32 %.0199109.i, 0
  %i.aqv = icmp eq i32 %.0196110.i, 40
  %or.cond9.i = select i1 %i.aqu, i1 true, i1 %i.aqv
  br i1 %or.cond9.i, label %bb.lm, label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.kw
  %i.aqw = icmp samesign ult i32 %.0193.i, 128
  br i1 %i.aqw, label %bb.lu, label %.loopexit26.i

bb.lu:                                            ; preds = %bb.lt
  %memchr266.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %.0193.i, i64 15)
  %.not267.i = icmp eq ptr %memchr266.i, null
  br i1 %.not267.i, label %.loopexit26.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lq, %bb.ll, %bb.li
  %.4206.i = phi i32 [ %.0202108.i, %bb.lu ], [ %.0202108.i, %bb.li ], [ %.1203.i, %bb.ll ], [ %.0202108.i, %bb.lq ]
  %.not269.i = icmp ult ptr %spec.select.i97, %i.alh
  br i1 %.not269.i, label %.loopexit26.loopexit.i, label %.thread

.loopexit26.loopexit.i:                           ; preds = %bb.lv
  store i8 92, ptr %spec.select.i97, align 1, !tbaa !35
  %.1211105.i.sroa.gep102 = getelementptr i8, ptr %.1211105.i, i64 1
  %spec.select.i97.sroa.sel104 = select i1 %.not130.i, ptr %.1211105.i.sroa.gep102, ptr %i.ali
  br label %.loopexit26.i

.loopexit26.i:                                    ; preds = %.loopexit26.loopexit.i, %bb.lu, %bb.lt
  %.14.i = phi ptr [ %spec.select.i97, %bb.lt ], [ %spec.select.i97, %bb.lu ], [ %spec.select.i97.sroa.sel104, %.loopexit26.loopexit.i ] ; 2 uses
  %.5207.i = phi i32 [ %.0202108.i, %bb.lt ], [ %.0202108.i, %bb.lu ], [ %.4206.i, %.loopexit26.loopexit.i ]
  %i.aqx = getelementptr inbounds nuw i8, ptr %.14.i, i64 %.0.i ; 2 uses
  %i.aqy = icmp ugt ptr %i.aqx, %i.alh
  br i1 %i.aqy, label %.thread, label %bb.lw

bb.lw:                                            ; preds = %.loopexit26.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.14.i, ptr noundef nonnull align 1 dereferenceable(1) %.0218104.i, i64 %.0.i, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.lw, %bb.lo, %bb.ln, %bb.lh, %bb.lf, %bb.le, %bb.ld, %.loopexit.loopexit119.i, %.thread2.i, %bb.kv, %bb.kt, %.loopexit.loopexit.i
  %.3237.i = phi i64 [ %i.aot, %bb.lo ], [ %i.aot, %bb.kv ], [ %i.aot, %bb.lw ], [ %i.aot, %.loopexit.loopexit.i ], [ %.12357.i, %.thread2.i ], [ %i.aph, %bb.kt ], [ %i.aot, %bb.lf ], [ %i.apv, %.loopexit.loopexit119.i ], [ %i.aot, %bb.le ], [ %i.aqm, %bb.lh ], [ %i.aot, %bb.ld ], [ %i.aot, %bb.ln ] ; 2 uses
  %.3221.i = phi ptr [ %i.aos, %bb.lo ], [ %i.aos, %bb.kv ], [ %i.aos, %bb.lw ], [ %i.aos, %.loopexit.loopexit.i ], [ %.12198.i, %.thread2.i ], [ %i.api, %bb.kt ], [ %i.aos, %bb.lf ], [ %i.apw, %.loopexit.loopexit119.i ], [ %i.aos, %bb.le ], [ %i.aqj, %bb.lh ], [ %i.aos, %bb.ld ], [ %i.aos, %bb.ln ]
  %.16.i = phi ptr [ %spec.select.i97, %bb.lo ], [ %i.apm, %bb.kv ], [ %i.aqx, %bb.lw ], [ %spec.select.i97.sroa.sel125, %.loopexit.loopexit.i ], [ %.99.i, %.thread2.i ], [ %spec.select.i97.sroa.sel122, %bb.kt ], [ %spec.select.i97, %bb.lf ], [ %scevgep155.i, %.loopexit.loopexit119.i ], [ %spec.select.i97, %bb.le ], [ %i.aqh, %bb.lh ], [ %spec.select.i97, %bb.ld ], [ %spec.select.i97.sroa.sel, %bb.ln ] ; 2 uses
  %.7.i = phi i32 [ %.0202108.i, %bb.lo ], [ %.0202108.i, %bb.kv ], [ %.5207.i, %bb.lw ], [ %.0202108.i, %.loopexit.loopexit.i ], [ %.0202108.i, %.thread2.i ], [ %.0202108.i, %bb.kt ], [ %.0202108.i, %bb.lf ], [ %.0202108.i, %.loopexit.loopexit119.i ], [ %.0202108.i, %bb.le ], [ %.0202108.i, %bb.lh ], [ %.0202108.i, %bb.ld ], [ %.3205.i, %bb.ln ]
  %.5.i = phi i32 [ %.0199109.i, %bb.lo ], [ %.2201174.i, %bb.kv ], [ 2, %bb.lw ], [ 2, %.loopexit.loopexit.i ], [ 3, %.thread2.i ], [ 3, %bb.kt ], [ %.0199109.i, %bb.lf ], [ 3, %.loopexit.loopexit119.i ], [ %.0199109.i, %bb.le ], [ %.0199109.i, %bb.lh ], [ %.0199109.i, %bb.ld ], [ %.3.i, %bb.ln ] ; 2 uses
  %.2198.i = phi i32 [ 42, %bb.lo ], [ %.0196110.i, %bb.kv ], [ 255, %bb.lw ], [ %.0196110.i, %.loopexit.loopexit.i ], [ %.0196110.i, %.thread2.i ], [ %.0196110.i, %bb.kt ], [ %.0196110.i, %bb.lf ], [ %.0196110.i, %.loopexit.loopexit119.i ], [ %.0196110.i, %bb.le ], [ %i.aql, %bb.lh ], [ %.0196110.i, %bb.ld ], [ %.0193.i, %bb.ln ]
  %.2.i = phi i32 [ 0, %bb.lo ], [ 0, %bb.kv ], [ 0, %bb.lw ], [ 0, %.loopexit.loopexit.i ], [ 0, %.thread2.i ], [ 0, %bb.kt ], [ 1, %bb.lf ], [ 0, %.loopexit.loopexit119.i ], [ 1, %bb.le ], [ 0, %bb.lh ], [ 1, %bb.ld ], [ 0, %bb.ln ]
  %.not250.i = icmp eq i64 %.3237.i, 0
  br i1 %.not250.i, label %._crit_edge.i99, label %.lr.ph.i96

._crit_edge.i99:                                  ; preds = %.loopexit.i
  %i.aqz = icmp ugt i32 %.5.i, 2
  br i1 %i.aqz, label %.thread, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i99, %.preheader36.i
  %.0208.lcssa191.i = phi i64 [ %i.alr, %._crit_edge.i99 ], [ 0, %.preheader36.i ]
  %.0209.lcssa190.i = phi ptr [ %spec.select.i97, %._crit_edge.i99 ], [ %.170155, %.preheader36.i ]
  %.1211.lcssa189.i = phi ptr [ %.16.i, %._crit_edge.i99 ], [ %i.aln, %.preheader36.i ] ; 2 uses
  %i.ara = ptrtoint ptr %.1211.lcssa189.i to i64
  %i.arb = ptrtoint ptr %.0209.lcssa190.i to i64
  %i.arc = sub i64 %.0208.lcssa191.i, %i.arb
  %i.ard = add i64 %i.arc, %i.ara
  store i64 %i.ard, ptr %4, align 8, !tbaa !25
  store i8 0, ptr %.1211.lcssa189.i, align 1, !tbaa !35
  br label %convert_posix.exit

bb.lx:                                            ; preds = %bb.o
  store i64 0, ptr %4, align 8, !tbaa !25
  br label %.thread

convert_posix.exit:                               ; preds = %._crit_edge.thread.i, %convert_glob.exit
  %.072 = phi i32 [ %.095.i, %convert_glob.exit ], [ 0, %._crit_edge.thread.i ] ; 2 uses
  %i.are = icmp ne i32 %.072, 0
  %or.cond6 = or i1 %.not88, %i.are
  br i1 %or.cond6, label %.thread, label %bb.ly

bb.ly:                                            ; preds = %convert_posix.exit
  %i.arf = load ptr, ptr %3, align 8, !tbaa !27
  %.not90 = icmp eq ptr %i.arf, null
  br i1 %.not90, label %bb.lz, label %.thread

bb.lz:                                            ; preds = %bb.ly
  %i.arg = load i64, ptr %4, align 8, !tbaa !25
  %i.arh = shl i64 %i.arg, 3
  %i.ari = add i64 %i.arh, 32
  %i.arj = call ptr @_pcre2_memctl_malloc_8(i64 noundef %i.ari, ptr noundef nonnull %spec.store.select) #6 ; 2 uses
  %i.ark = icmp eq ptr %i.arj, null
  br i1 %i.ark, label %.thread, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 24 ; 2 uses
  store ptr %i.arl, ptr %3, align 8, !tbaa !27
  %i.arm = load i64, ptr %4, align 8, !tbaa !25
  %i.arn = add i64 %i.arm, 1
  br i1 %i.ai, label %bb.m, label %.thread, !llvm.loop !23

.thread:                                          ; preds = %bb.kb, %bb.kc, %bb.jy, %bb.jz, %bb.jx, %bb.ka, %._crit_edge.i99, %bb.lz, %bb.ly, %convert_posix.exit, %bb.ma, %bb.kz, %bb.lv, %bb.lb, %.preheader.preheader.i101, %.preheader21.preheader.i, %.preheader24.preheader.i, %.preheader31.preheader.i, %.preheader33.preheader.i, %bb.lc, %.preheader24.1.i, %.loopexit22.i, %bb.lm, %.loopexit34.i, %.loopexit26.i, %bb.kx, %bb.la, %bb.lx, %bb.h, %bb.a, %bb.c
  %.4 = phi i32 [ %i.k, %bb.h ], [ -34, %bb.c ], [ -48, %bb.kz ], [ -51, %bb.a ], [ -44, %bb.lx ], [ 106, %bb.la ], [ 106, %bb.kx ], [ -48, %.loopexit26.i ], [ -48, %.loopexit34.i ], [ -48, %bb.lm ], [ -48, %.loopexit22.i ], [ -48, %.preheader24.1.i ], [ 101, %bb.lc ], [ -48, %.preheader33.preheader.i ], [ -48, %.preheader31.preheader.i ], [ -48, %.preheader24.preheader.i ], [ -48, %.preheader21.preheader.i ], [ -48, %.preheader.preheader.i101 ], [ -48, %bb.lb ], [ -48, %bb.lv ], [ -48, %bb.jx ], [ -48, %bb.jz ], [ -48, %bb.jy ], [ -48, %bb.kc ], [ -48, %bb.kb ], [ 106, %._crit_edge.i99 ], [ -48, %bb.ka ], [ %.072, %convert_posix.exit ], [ 0, %bb.ly ], [ -48, %bb.lz ], [ -44, %bb.ma ]
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
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"pcre2_memctl", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = distinct !{!14, !36}
!15 = distinct !{!15, !36}
!16 = distinct !{!16, !36}
!17 = distinct !{!17, !36, !37}
!18 = distinct !{!18, !36}
!19 = distinct !{!19, !36}
!20 = distinct !{!20, !36}
!21 = distinct !{!21, !36, !37}
!22 = distinct !{!22, !36}
!23 = distinct !{!23, !36}
!24 = !{!"long", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 omnipotent char", !12, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"pcre2_real_convert_context_8", !13, i64 0, !9, i64 24, !9, i64 28}
!29 = !{!28, !9, i64 24}
!30 = !{!28, !9, i64 28}
!31 = !{!"pcre2_output_context", !26, i64 0, !26, i64 8, !24, i64 16, !8, i64 24}
!32 = !{!31, !26, i64 0}
!33 = !{!31, !26, i64 8}
!34 = !{!31, !24, i64 16}
!35 = !{!8, !8, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unswitch.partial.disable"}
!38 = !{!"p1 short", !12, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"short", !8, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!13, !12, i64 8}
!43 = !{!13, !12, i64 16}
end_hunk_0
