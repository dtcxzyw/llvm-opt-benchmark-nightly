Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/demangle?download=true
inline.NumInlined: 660
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internalL20ParseUnqualifiedNameEPNS1_5StateE:bb.a
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.bj = add nsw i32 %.val7.i, 2
  store i32 %i.bj, ptr %i.o, align 4, !tbaa !30
  store i32 %i.at, ptr %i.a, align 4, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %.not.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.163, i64 noundef 1)
  %.pre = load i32, ptr %i.bo, align 8
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit: ; preds = %bb.r, %bb.s
  %i.bq = phi i32 [ %i.bp, %bb.r ], [ %.pre, %bb.s ]
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bl, i64 %i.br
  br label %.thread69.sink.split

bb.t:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !31
  br label %.body

.thread69.sink.split:                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit, %bb.i
  %.sink93 = phi i32 [ %i.al, %bb.i ], [ %i.bq, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit ]
  %.sink = phi ptr [ %i.aj, %bb.i ], [ %i.bs, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit ]
  %i.bw = and i32 %.sink93, 65535
  %i.bx = zext nneg i32 %i.bw to i64
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef %.sink, i64 noundef %i.bx)
  br label %.thread69

.thread69:                                        ; preds = %.thread69.sink.split, %bb.m
  %i.by = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !31
  br label %bb.z

_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  store i32 %i.at, ptr %i.a, align 4, !tbaa !31
  store <4 x i32> %.sroa.0124.0.copyload, ptr %i.o, align 4
  %i.ca = add nsw i32 %i.at, -1
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread
  %storemerge.in = phi i32 [ %i.ca, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread ], [ %.pre80, %bb.d ]
  store i32 %storemerge.in, ptr %i.a, align 4, !tbaa !31
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0)
  %.pre79 = load i32, ptr %i.a, align 4, !tbaa !31 ; 6 uses
  br i1 %i.cb, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.cc = add nsw i32 %.pre79, 1                  ; 2 uses
  %i.cd = load i32, ptr %i.d, align 8, !tbaa !29  ; 3 uses
  %i.ce = load <2 x i32>, ptr %i.a, align 4, !tbaa !33
  %i.cf = add nsw i32 %i.cd, 1
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !29
  %i.cg = icmp sgt i32 %.pre79, 255
  %i.ch = icmp sgt i32 %i.cd, 131071
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i, label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %.sroa.0127.0.copyload = load <4 x i32>, ptr %i.ci, align 4
  %i.cj = add nsw <2 x i32> %i.ce, splat (i32 2)
  store <2 x i32> %i.cj, ptr %i.a, align 4, !tbaa !33
  %i.ck = icmp sgt i32 %.pre79, 254
  %i.cl = icmp sgt i32 %i.cd, 131070
  %or.cond.i.i = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val6.i.i = load ptr, ptr %0, align 8, !tbaa !26
  %.val7.i.i = load i32, ptr %i.ci, align 4, !tbaa !30 ; 2 uses
  %i.cm = sext i32 %.val7.i.i to i64
  %i.cn = getelementptr inbounds i8, ptr %.val6.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = icmp eq i8 %i.co, 76
  br i1 %i.cp, label %bb.x, label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !31
  br label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit

bb.x:                                             ; preds = %bb.w
  %i.cq = add nsw i32 %.val7.i.i, 1
  store i32 %i.cq, ptr %i.ci, align 4, !tbaa !30
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !31
  %i.cr = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0)
  br i1 %i.cr, label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72, label %._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge

._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge: ; preds = %bb.x
  %.pre.i.pre = load i32, ptr %i.a, align 4, !tbaa !31
  %i.cs = add nsw i32 %.pre.i.pre, -1
  br label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit

_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72: ; preds = %bb.x
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL18ParseDiscriminatorEPNS1_5StateE(ptr noundef nonnull %0)
  %.pre.i74 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ct = add nsw i32 %.pre.i74, -1               ; 2 uses
  store i32 %i.ct, ptr %i.a, align 4, !tbaa !31
  br label %bb.z

_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit: ; preds = %._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge, %.thread.i
  %.pre.i = phi i32 [ %i.cs, %._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge ], [ %.pre79, %.thread.i ]
  store <4 x i32> %.sroa.0127.0.copyload, ptr %i.ci, align 4
  br label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread

_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread: ; preds = %bb.u, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit
  %storemerge76 = phi i32 [ %.pre.i, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit ], [ %.pre79, %bb.u ]
  store i32 %storemerge76, ptr %i.a, align 4, !tbaa !31
  %i.cu = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL20ParseUnnamedTypeNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread
  br i1 %i.cu, label %._crit_edge, label %bb.af

._crit_edge:                                      ; preds = %bb.y
  %.pre78 = load i32, ptr %i.a, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72, %.thread69, %.thread, %bb.c
  %i.cv = phi i32 [ %.pre78, %._crit_edge ], [ %i.ct, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72 ], [ %i.bz, %.thread69 ], [ %.pre79, %.thread ], [ %.pre80, %bb.c ] ; 4 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 3 uses
  %i.cx = load i32, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.d, align 8, !tbaa !29
  %i.cz = icmp sgt i32 %i.cv, 255
  %i.da = icmp sgt i32 %i.cx, 131071
  %or.cond.i26 = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i26, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.z
  %i.db = add nsw i32 %i.cv, 2
  store i32 %i.db, ptr %i.a, align 4, !tbaa !31
  %i.dc = add nsw i32 %i.cx, 2
  store i32 %i.dc, ptr %i.d, align 8, !tbaa !29
  %i.dd = icmp sgt i32 %i.cv, 254
  %i.de = icmp sgt i32 %i.cx, 131070
  %or.cond.i24.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond.i24.i, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.df = getelementptr i8, ptr %0, i64 28        ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i, %.lr.ph.i
  %i.dh = phi i32 [ %i.cw, %.lr.ph.i ], [ %i.ds, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i ] ; 2 uses
  %.val6.i.i27 = load ptr, ptr %0, align 8, !tbaa !26
  %.val7.i.i28 = load i32, ptr %i.df, align 4, !tbaa !30 ; 2 uses
  %i.di = sext i32 %.val7.i.i28 to i64
  %i.dj = getelementptr inbounds i8, ptr %.val6.i.i27, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !21
  %i.dl = icmp eq i8 %i.dk, 66
  br i1 %i.dl, label %bb.ab, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dm = add nsw i32 %.val7.i.i28, 1
  store i32 %i.dm, ptr %i.df, align 4, !tbaa !30
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !31
  %.sroa.0129.0.copyload = load <4 x i32>, ptr %i.df, align 4
  %i.dn = load i32, ptr %i.dg, align 8
  %.not.i.i = icmp sgt i32 %i.dn, -1
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.275, i64 noundef 5)
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i: ; preds = %bb.ac, %bb.ab
  %i.do = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0)
  br i1 %i.do, label %bb.ad, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i: ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i
  store <4 x i32> %.sroa.0129.0.copyload, ptr %i.df, align 4
  %.pre.i29 = load i32, ptr %i.a, align 4, !tbaa !31
  br label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i
  %i.dp = load i32, ptr %i.dg, align 8
  %.not.i17.i = icmp sgt i32 %i.dp, -1
  br i1 %.not.i17.i, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.276, i64 noundef 1)
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i: ; preds = %bb.ae, %bb.ad
  %i.dq = load <2 x i32>, ptr %i.a, align 4, !tbaa !33 ; 3 uses
  %i.dr = add nsw <2 x i32> %i.dq, splat (i32 1)
  store <2 x i32> %i.dr, ptr %i.a, align 4, !tbaa !33
  %i.ds = extractelement <2 x i32> %i.dq, i64 0   ; 2 uses
  %i.dt = icmp sgt <2 x i32> %i.dq, <i32 255, i32 131071> ; 2 uses
  %1 = extractelement <2 x i1> %i.dt, i64 0
  %2 = extractelement <2 x i1> %i.dt, i64 1
  %or.cond.i.i30 = select i1 %1, i1 true, i1 %2
  br i1 %or.cond.i.i30, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit, label %bb.aa

_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit: ; preds = %bb.aa, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i, %bb.z, %.preheader.i, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i
  %i.du = phi i32 [ %i.cw, %bb.z ], [ %.pre.i29, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i ], [ %i.cw, %.preheader.i ], [ %i.dh, %bb.aa ], [ %i.ds, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i ]
  %.2.i = phi i1 [ false, %bb.z ], [ false, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i ], [ true, %.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i ], [ true, %bb.aa ]
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.a, align 4, !tbaa !31
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.af:                                            ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.dw, align 4 ; 2 uses
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !31  ; 4 uses
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !31
  %i.dz = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.d, align 8, !tbaa !29
  %i.eb = icmp sgt i32 %i.dx, 255
  %i.ec = icmp sgt i32 %i.dz, 131071
  %or.cond.i94 = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond.i94, label %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val11.i = load ptr, ptr %0, align 8, !tbaa !26
  %.val12.i = load i32, ptr %i.dw, align 4, !tbaa !30 ; 2 uses
  %i.ed = sext i32 %.val12.i to i64
  %i.ee = getelementptr inbounds i8, ptr %.val11.i, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !21
  %i.eg = icmp eq i8 %i.ef, 68
  br i1 %i.eg, label %bb.ah, label %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !21
  %i.ej = icmp eq i8 %i.ei, 67
  br i1 %i.ej, label %bb.ai, label %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread

_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread: ; preds = %bb.af, %bb.ah, %bb.ag
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !31
  br label %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ek = add nsw i32 %.val12.i, 2
  store i32 %i.ek, ptr %i.dw, align 4, !tbaa !30
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !31
  %i.el = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !2
  br i1 %i.el, label %.preheader.i31, label %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit

.preheader.i31:                                   ; preds = %bb.ai, %.preheader.i31
  %i.em = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !2
  br i1 %i.em, label %.preheader.i31, label %bb.aj, !llvm.loop !3

bb.aj:                                            ; preds = %.preheader.i31
  %i.en = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc(ptr noundef nonnull %0, i8 noundef signext 69)
  br i1 %i.en, label %bb.ar, label %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit

bb.ak:                                            ; preds = %bb.b, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread, %bb.ao
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread, %bb.ai, %bb.aj
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.dw, align 4
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !31  ; 4 uses
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !31
  %i.er = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.d, align 8, !tbaa !29
  %i.et = icmp sgt i32 %i.ep, 255
  %i.eu = icmp sgt i32 %i.er, 131071
  %or.cond.i95 = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond.i95, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread102, label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit
  %.val6.i96 = load ptr, ptr %0, align 8, !tbaa !26
  %.val7.i97 = load i32, ptr %i.dw, align 4, !tbaa !30 ; 2 uses
  %i.ev = sext i32 %.val7.i97 to i64
  %i.ew = getelementptr inbounds i8, ptr %.val6.i96, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !21
  %i.ey = icmp eq i8 %i.ex, 70
  br i1 %i.ey, label %bb.am, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread102

_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread102: ; preds = %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit, %bb.al
  store i32 %i.ep, ptr %i.a, align 4, !tbaa !31
  br label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.ez = add nsw i32 %.val7.i97, 1
  store i32 %i.ez, ptr %i.dw, align 4, !tbaa !30
  store i32 %i.ep, ptr %i.a, align 4, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fb = load i32, ptr %i.fa, align 8
  %.not.i99 = icmp sgt i32 %i.fb, -1
  br i1 %.not.i99, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit100, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.271, i64 noundef 7)
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit100

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit100: ; preds = %bb.am, %bb.an
  %i.fc = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0)
  br i1 %i.fc, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit100
  %i.fd = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL17ParseOperatorNameEPNS1_5StateEPi(ptr noundef nonnull %0, ptr noundef null)
          to label %bb.ap unwind label %bb.ak

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.fd, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread102, %bb.ap
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.dw, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit100, %bb.ap, %bb.aj, %bb.aq
  %.020 = phi i1 [ false, %bb.aq ], [ true, %bb.aj ], [ true, %bb.ap ], [ true, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit100 ]
  %.pre81 = load i32, ptr %i.a, align 4, !tbaa !31
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit, %bb.ar
  %i.fe = phi i32 [ %.pre81, %bb.ar ], [ %i.c, %bb.a ], [ %i.dv, %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit ]
  %.1 = phi i1 [ %.020, %bb.ar ], [ false, %bb.a ], [ %.2.i, %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit ]
  %i.ff = add nsw i32 %i.fe, -1
  store i32 %i.ff, ptr %i.a, align 4, !tbaa !31
  ret i1 %.1

.body:                                            ; preds = %bb.t, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.ak ], [ %i.bt, %bb.t ]
  %i.fg = load i32, ptr %i.a, align 4, !tbaa !31
  %i.fh = add nsw i32 %i.fg, -1
  store i32 %i.fh, ptr %i.a, align 4, !tbaa !31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseCallOffsetEPNS1_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 13 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 11 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !29
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 16 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.h, align 4 ; 2 uses
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  %i.j = add nsw i32 %i.d, 2                      ; 3 uses
  store i32 %i.j, ptr %i.c, align 8, !tbaa !29
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.d, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !26 ; 4 uses
  %.val7.i = load i32, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.m = sext i32 %.val7.i to i64
  %i.n = getelementptr inbounds i8, ptr %.val6.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp eq i8 %i.o, 104
  br i1 %i.p, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.val7.i, 1                  ; 4 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !30
  %i.r = icmp sgt i32 %i.d, 131069
  br i1 %i.r, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.b, 3
  %i.t = add nsw i32 %i.d, 4
  %i.u = icmp sgt i32 %i.b, 253
  %i.v = icmp eq i32 %i.d, 131069
  %or.cond.i.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.b, 4
  store i32 %i.w, ptr %i.a, align 4, !tbaa !31
  %i.x = add nsw i32 %i.d, 5                      ; 2 uses
  store i32 %i.x, ptr %i.c, align 8, !tbaa !29
  %i.y = icmp sgt i32 %i.b, 252
  %i.z = icmp sgt i32 %i.d, 131067
  %or.cond.i.i.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i.i.i, label %._crit_edge44.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = sext i32 %i.q to i64
  %i.ab = getelementptr inbounds i8, ptr %.val6.i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = icmp eq i8 %i.ac, 110
  br i1 %i.ad, label %bb.h, label %._crit_edge44.i.i
end_hunk_0
