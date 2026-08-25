Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Win64EH?download=true
begin_hunk_0_@_ZN4llvm7Win64EH18decodeUnwindInfoV3ENS_8ArrayRefIhEE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.as = icmp eq i8 %i.aa, 0
  br i1 %i.as, label %_ZN4llvm5ErrorD2Ev.exit92, label %.thread237

_ZN4llvm5ErrorD2Ev.exit92:                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @_ZN4llvm17createStringErrorIJhEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %14, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %i.ab)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8
  %i.av = or i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.aw = load ptr, ptr %14, align 8, !tbaa !15, !noalias !157
  store ptr %i.aw, ptr %0, align 8, !tbaa !18, !alias.scope !157
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %.not84168.not = icmp eq i8 %i.ae, 0
  br i1 %.not84168.not, label %._crit_edge, label %.lr.ph.split.us.preheader

.thread237:                                       ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw i16 %i.az, 8
  %i.bb = or disjoint i16 %i.ba, %i.x
  store i16 %i.bb, ptr %i.y, align 2, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %.not84168.not239 = icmp eq i8 %i.ae, 0
  br i1 %.not84168.not239, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread237
  %i.bc = icmp eq i8 %i.aa, 1
  br i1 %i.bc, label %_ZN4llvm5ErrorD2Ev.exit93, label %.lr.ph

.lr.ph.split.us.preheader:                        ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.ak to i64
  %exitcond.not259 = icmp eq i8 %i.aa, 0
  br i1 %exitcond.not259, label %_ZN4llvm5ErrorD2Ev.exit94, label %.lr.ph261

.lr.ph.split.us:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit.us
  %exitcond.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4llvm5ErrorD2Ev.exit94, label %.lr.ph261, !llvm.loop !160

.lr.ph261:                                        ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv200260 = phi i64 [ %indvars.iv.next201, %.lr.ph.split.us ], [ 4, %.lr.ph.split.us.preheader ] ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200260, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv200260
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19
  %i.bf = zext i8 %i.be to i16                    ; 2 uses
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !129 ; 2 uses
  %i.bh = load i64, ptr %i.l, align 8, !tbaa !130
  %.not.i95.us = icmp ult i64 %i.bg, %i.bh
  br i1 %.not.i95.us, label %bb.g, label %bb.f, !prof !162

bb.f:                                             ; preds = %.lr.ph261
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i16 noundef zeroext %i.bf)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit.us

bb.g:                                             ; preds = %.lr.ph261
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !127
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bg
  store i16 %i.bf, ptr %i.bj, align 1
  %i.bk = load i64, ptr %i.k, align 8, !tbaa !129
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.k, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit.us

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit.us: ; preds = %bb.g, %bb.f
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !11
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !11
  %i.bo = load i8, ptr %i.af, align 1, !tbaa !152
  %i.bp = zext i8 %i.bo to i32
  %.not84.us = icmp ult i32 %i.bn, %i.bp
  br i1 %.not84.us, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !160

.lr.ph.split:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next258, 2 ; 2 uses
  %i.bq = icmp samesign ugt i64 %indvars.iv.next, %i.al
  br i1 %i.bq, label %_ZN4llvm5ErrorD2Ev.exit93, label %.lr.ph, !llvm.loop !160

_ZN4llvm5ErrorD2Ev.exit93:                        ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @_ZN4llvm17createStringErrorIJjEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %15, ptr noundef nonnull @.str.48, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = or i8 %i.bs, 1
  store i8 %i.bt, ptr %i.br, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.bu = load ptr, ptr %15, align 8, !tbaa !15, !noalias !163
  store ptr %i.bu, ptr %0, align 8, !tbaa !18, !alias.scope !163
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv.next258 = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 7, %.lr.ph.split.preheader ] ; 3 uses
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.lr.ph.split ], [ 5, %.lr.ph.split.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv257
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.bv, align 1 ; 2 uses
  %i.bw = load i64, ptr %i.k, align 8, !tbaa !129 ; 2 uses
  %i.bx = load i64, ptr %i.l, align 8, !tbaa !130
  %.not.i = icmp ult i64 %i.bw, %i.bx
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !162

bb.h:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i16 noundef zeroext %.0.copyload.i.i.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

bb.i:                                             ; preds = %.lr.ph
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !127
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.bw
  store i16 %.0.copyload.i.i.i.i.i.i, ptr %i.bz, align 1
  %i.ca = load i64, ptr %i.k, align 8, !tbaa !129
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.k, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

_ZN4llvm5ErrorD2Ev.exit94:                        ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  call void @_ZN4llvm17createStringErrorIJjEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %16, ptr noundef nonnull @.str.48, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = or i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cc, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.cf = load ptr, ptr %16, align 8, !tbaa !15, !noalias !166
  store ptr %i.cf, ptr %0, align 8, !tbaa !18, !alias.scope !166
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.j

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit: ; preds = %bb.i, %bb.h
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !11
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  store i32 %i.ch, ptr %i.b, align 4, !tbaa !11
  %i.ci = load i8, ptr %i.af, align 1, !tbaa !152
  %i.cj = zext i8 %i.ci to i32
  %.not84 = icmp ult i32 %i.ch, %i.cj
  br i1 %.not84, label %.lr.ph.split, label %._crit_edge.loopexit189, !llvm.loop !160

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit94, %_ZN4llvm5ErrorD2Ev.exit93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.am

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit.us
  %i.ck = trunc nuw nsw i64 %indvars.iv.next201 to i32
  br label %._crit_edge

._crit_edge.loopexit189:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit
  %i.cl = trunc nuw nsw i64 %indvars.iv.next258 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread237, %._crit_edge.loopexit189, %._crit_edge.loopexit, %bb.e
  %.1.lcssa = phi i32 [ 4, %bb.e ], [ %i.ck, %._crit_edge.loopexit ], [ %i.cl, %._crit_edge.loopexit189 ], [ 5, %.thread237 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.cm = load i8, ptr %i.ah, align 4, !tbaa !153
  %.not = icmp eq i8 %i.cm, 0
  br i1 %.not, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 2 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.dd = ptrtoint ptr %7 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.4.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dl = ptrtoint ptr %3 to i64
  %i.dm = ptrtoint ptr %17 to i64                 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph185, %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7
  %.3183 = phi i32 [ %.1.lcssa, %.lr.ph185 ], [ %.10.jt7, %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7 ] ; 8 uses
  %.069182 = phi i32 [ 0, %.lr.ph185 ], [ %i.eg, %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7 ]
  %.072181 = phi i32 [ -1, %.lr.ph185 ], [ %.476.jt7, %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7 ] ; 4 uses
  %storemerge85180 = phi i32 [ 0, %.lr.ph185 ], [ %i.jv, %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !127
  store i64 0, ptr %i.cp, align 8, !tbaa !129
  store i64 8, ptr %i.cq, align 8, !tbaa !130
  %.not86 = icmp ult i32 %.3183, %i.ak
  br i1 %.not86, label %bb.l, label %_ZN4llvm5ErrorD2Ev.exit97

_ZN4llvm5ErrorD2Ev.exit97:                        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @_ZN4llvm17createStringErrorIJjEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %18, ptr noundef nonnull @.str.49, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.dn = load i8, ptr %i.cr, align 8
  %i.do = or i8 %i.dn, 1
  store i8 %i.do, ptr %i.cr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.dp = load ptr, ptr %18, align 8, !tbaa !15, !noalias !169
  store ptr %i.dp, ptr %0, align 8, !tbaa !18, !alias.scope !169
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %.thread.jt1

bb.l:                                             ; preds = %bb.k
  %i.dq = zext nneg i32 %.3183 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !19  ; 3 uses
  %i.dt = and i8 %i.ds, 7
  store i8 %i.dt, ptr %17, align 8, !tbaa !172
  %i.du = lshr i8 %i.ds, 3                        ; 2 uses
  store i8 %i.du, ptr %i.cs, align 1, !tbaa !174
  %i.dv = add nuw nsw i32 %.3183, 3               ; 4 uses
  %i.dw = icmp ugt i32 %i.dv, %i.ak
  br i1 %i.dw, label %_ZN4llvm5ErrorD2Ev.exit98, label %bb.m

_ZN4llvm5ErrorD2Ev.exit98:                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @_ZN4llvm17createStringErrorIJjEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %19, ptr noundef nonnull @.str.50, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.dx = load i8, ptr %i.cr, align 8
  %i.dy = or i8 %i.dx, 1
  store i8 %i.dy, ptr %i.cr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.dz = load ptr, ptr %19, align 8, !tbaa !15, !noalias !175
  store ptr %i.dz, ptr %0, align 8, !tbaa !18, !alias.scope !175
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.thread.jt1

bb.m:                                             ; preds = %bb.l
  %i.ea = sext i32 %.3183 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %.0.copyload.i.i.i.i.i.i99 = load i16, ptr %i.ec, align 1
  %i.ed = icmp eq i32 %storemerge85180, 0
  %i.ee = sext i16 %.0.copyload.i.i.i.i.i.i99 to i32
  %i.ef = select i1 %i.ed, i32 0, i32 %.069182
  %i.eg = add nsw i32 %i.ef, %i.ee                ; 2 uses
  store i32 %i.eg, ptr %i.ct, align 8, !tbaa !178
  %i.eh = icmp eq i8 %i.du, 0
  br i1 %i.eh, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ei = icmp sgt i32 %.072181, -1
  br i1 %i.ei, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ej = zext nneg i32 %.072181 to i64
  %i.ek = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.el = getelementptr inbounds nuw [56 x i8], ptr %i.ek, i64 %i.ej ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.en = load <2 x i16>, ptr %i.em, align 2, !tbaa !179
  store <2 x i16> %i.en, ptr %i.cv, align 2, !tbaa !179
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = icmp eq ptr %17, %i.el
  br i1 %i.ep, label %_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !129 ; 5 uses
  %.not.i.i.not = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.not, label %.sink.split.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = icmp ugt i64 %i.er, 8
  br i1 %i.es, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.thread

_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i:           ; preds = %bb.q
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull %i.co, i64 noundef %i.er, i64 noundef 2) #15
  %.pre = load i64, ptr %i.eq, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.pre, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.thread

_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.thread:    ; preds = %bb.q, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i
  %i.et = phi i64 [ %.pre, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i ], [ %i.er, %bb.q ]
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !127
  %i.ev = load ptr, ptr %i.cn, align 8, !tbaa !127
  %gepdiff.i.i = shl nsw i64 %i.et, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr align 2 %i.eu, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.p, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.thread, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i
  store i64 %i.er, ptr %i.cp, align 8, !tbaa !129
  br label %_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit

bb.r:                                             ; preds = %bb.n
  store i16 0, ptr %i.cu, align 4, !tbaa !180
  store i16 0, ptr %i.cv, align 2, !tbaa !181
  br label %_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit

_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit:        ; preds = %.sink.split.i.i, %bb.o, %bb.r
  %i.ew = load i32, ptr %i.o, align 8, !tbaa !133 ; 2 uses
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %i.ez = load i32, ptr %i.p, align 4, !tbaa !134
  %.not.i.i.not.i = icmp ult i32 %i.ew, %i.ez
  %.pre3.i = load ptr, ptr %i.m, align 8, !tbaa !131 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i, label %bb.s, !prof !162

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr %.pre3.i, i64 %i.ex
  %i.fb = icmp uge ptr %17, %.pre3.i
  %i.fc = icmp ult ptr %17, %i.fa
  %spec.select.i.i.i.i.i = and i1 %i.fb, %i.fc
  br i1 %spec.select.i.i.i.i.i, label %bb.t, label %.critedge.i.i.i, !prof !182

bb.t:                                             ; preds = %bb.s
  %i.fd = ptrtoint ptr %.pre3.i to i64
  %i.fe = sub i64 %i.dm, %i.fd
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.ey)
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !131 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.fe
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.ey)
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !131
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i: ; preds = %.critedge.i.i.i, %bb.t, %_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit
  %i.fh = phi ptr [ %.pre3.i, %_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit ], [ %i.ff, %bb.t ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %17, %_ZN4llvm11SmallVectorItLj8EEaSERKS1_.exit ], [ %i.fg, %bb.t ], [ %17, %.critedge.i.i.i ] ; 3 uses
  %i.fi = load i32, ptr %i.o, align 8, !tbaa !133
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [56 x i8], ptr %i.fh, i64 %i.fj ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fk, ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i.i, i64 12, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !127
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i64 0, ptr %i.fn, align 8, !tbaa !129
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store i64 8, ptr %i.fo, align 8, !tbaa !130
  %i.fp = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !129
  %.not.i.i.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i.i.i, label %.thread.jt7, label %.thread.jt7.sink.split

bb.u:                                             ; preds = %bb.m
  %i.fr = add nuw nsw i32 %.3183, 5               ; 4 uses
  %i.fs = icmp ugt i32 %i.fr, %i.ak
  br i1 %i.fs, label %_ZN4llvm5ErrorD2Ev.exit100, label %bb.v

_ZN4llvm5ErrorD2Ev.exit100:                       ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  call void @_ZN4llvm17createStringErrorIJjEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %20, ptr noundef nonnull @.str.51, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.ft = load i8, ptr %i.cr, align 8
  %i.fu = or i8 %i.ft, 1
  store i8 %i.fu, ptr %i.cr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.fv = load ptr, ptr %20, align 8, !tbaa !15, !noalias !183
  store ptr %i.fv, ptr %0, align 8, !tbaa !18, !alias.scope !183
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %.thread.jt1

bb.v:                                             ; preds = %bb.u
  %i.fw = and i8 %i.ds, 2
  %.not160 = icmp eq i8 %i.fw, 0
  %i.fx = zext nneg i32 %i.dv to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fx
  %.0.copyload.i.i.i.i.i.i101 = load i16, ptr %i.fy, align 1
  store i16 %.0.copyload.i.i.i.i.i.i101, ptr %i.cu, align 4, !tbaa !180
  br i1 %.not160, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fz = add nuw nsw i32 %.3183, 7               ; 2 uses
  %i.ga = icmp ugt i32 %i.fz, %i.ak
  br i1 %i.ga, label %_ZN4llvm5ErrorD2Ev.exit102, label %.lr.ph174.split.preheader

_ZN4llvm5ErrorD2Ev.exit102:                       ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @_ZN4llvm17createStringErrorIJjEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %21, ptr noundef nonnull @.str.52, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.gb = load i8, ptr %i.cr, align 8
  %i.gc = or i8 %i.gb, 1
  store i8 %i.gc, ptr %i.cr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.gd = load ptr, ptr %21, align 8, !tbaa !15, !noalias !186
  store ptr %i.gd, ptr %0, align 8, !tbaa !18, !alias.scope !186
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %.thread.jt1

bb.x:                                             ; preds = %bb.v
  %.not87 = icmp ult i32 %i.fr, %i.ak
  br i1 %.not87, label %.lr.ph174.split.us.preheader, label %_ZN4llvm5ErrorD2Ev.exit104

_ZN4llvm5ErrorD2Ev.exit104:                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @_ZN4llvm17createStringErrorIJjEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %22, ptr noundef nonnull @.str.52, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.ge = load i8, ptr %i.cr, align 8
  %i.gf = or i8 %i.ge, 1
  store i8 %i.gf, ptr %i.cr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.gg = load ptr, ptr %22, align 8, !tbaa !15, !noalias !189
  store ptr %i.gg, ptr %0, align 8, !tbaa !18, !alias.scope !189
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %.thread.jt1

.lr.ph174.split.preheader:                        ; preds = %bb.w
  %i.gh = zext nneg i32 %i.fr to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  %.0.copyload.i.i.i.i.i.i103 = load i16, ptr %i.gi, align 1
  store i16 %.0.copyload.i.i.i.i.i.i103, ptr %i.cv, align 2, !tbaa !181
  %i.gj = add i32 %.3183, 9                       ; 2 uses
  %i.gk = icmp ugt i32 %i.gj, %i.ak
  br i1 %i.gk, label %.lr.ph174.split.preheader._crit_edge, label %.lr.ph264

.lr.ph174.split.us.preheader:                     ; preds = %bb.x
  %i.gl = add nuw nsw i32 %.3183, 6               ; 3 uses
  %i.gm = zext nneg i32 %i.fr to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !19
  %i.gp = zext i8 %i.go to i16
  store i16 %i.gp, ptr %i.cv, align 2, !tbaa !181
  %i.gq = call i32 @llvm.usub.sat.i32(i32 %i.ak, i32 %i.gl) ; 2 uses
  %exitcond207.not266.not = icmp ugt i32 %i.ak, %i.gl
  br i1 %exitcond207.not266.not, label %.lr.ph269, label %.split.us

.lr.ph269:                                        ; preds = %.lr.ph174.split.us.preheader
  %i.gr = zext nneg i32 %i.gl to i64
  br label %bb.y

.lr.ph174.split.us:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108.us
  %exitcond207.not = icmp eq i32 %i.hb, %i.gq
  br i1 %exitcond207.not, label %.split.us, label %bb.y, !llvm.loop !192

bb.y:                                             ; preds = %.lr.ph269, %.lr.ph174.split.us
  %storemerge88171.us268 = phi i32 [ 0, %.lr.ph269 ], [ %i.hb, %.lr.ph174.split.us ]
  %indvars.iv203267 = phi i64 [ %i.gr, %.lr.ph269 ], [ %indvars.iv.next204, %.lr.ph174.split.us ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203267, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv203267
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !19
  %i.gu = zext i8 %i.gt to i16                    ; 2 uses
  %i.gv = load i64, ptr %i.cp, align 8, !tbaa !129 ; 2 uses
  %i.gw = load i64, ptr %i.cq, align 8, !tbaa !130
  %.not.i110.us = icmp ult i64 %i.gv, %i.gw
  br i1 %.not.i110.us, label %bb.aa, label %bb.z, !prof !162

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i16 noundef zeroext %i.gu)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108.us

bb.aa:                                            ; preds = %bb.y
  %i.gx = load ptr, ptr %i.cn, align 8, !tbaa !127
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.gv
  store i16 %i.gu, ptr %i.gy, align 1
  %i.gz = load i64, ptr %i.cp, align 8, !tbaa !129
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.cp, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108.us

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108.us: ; preds = %bb.aa, %bb.z
  %i.hb = add nuw nsw i32 %storemerge88171.us268, 1 ; 3 uses
  %i.hc = load i8, ptr %i.cs, align 1, !tbaa !174
  %i.hd = zext i8 %i.hc to i32
  %.not90.us = icmp samesign ult i32 %i.hb, %i.hd
  br i1 %.not90.us, label %.lr.ph174.split.us, label %._crit_edge175.loopexit, !llvm.loop !192

.split.us:                                        ; preds = %.lr.ph174.split.us.preheader, %.lr.ph174.split.us
  %i.he = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #15, !noalias !193 ; 2 uses
  %i.hf = extractvalue { i32, ptr } %i.he, 0
  %i.hg = extractvalue { i32, ptr } %i.he, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !196
  store ptr %i.de, ptr %5, align 8, !tbaa !34, !noalias !196
  store i64 0, ptr %i.df, align 8, !tbaa !36, !noalias !196
  store i8 0, ptr %i.de, align 8, !tbaa !19, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !196
  store i32 0, ptr %i.dg, align 8, !tbaa !39, !noalias !196
  store i8 0, ptr %i.dh, align 8, !tbaa !44, !noalias !196
  store i32 1, ptr %i.di, align 4, !tbaa !45, !noalias !196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false), !noalias !196
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !46, !noalias !196
  store ptr %5, ptr %i.dk, align 8, !tbaa !48, !noalias !196
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #15, !noalias !196
  %i.hh = load i32, ptr %i.c, align 4, !tbaa !11, !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !196
  store ptr @.str.53, ptr %4, align 8, !noalias !196
  store i32 %i.gq, ptr %.sroa.4.0..sroa_idx.i124, align 8, !noalias !196
  store i32 %i.hh, ptr %.sroa.5.0..sroa_idx.i125, align 4, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !196
  store ptr %4, ptr %3, align 8, !tbaa !202, !noalias !196
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.dl) #15, !noalias !196 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !196
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !196
  %i.hj = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16, !noalias !204 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 %i.hf, ptr %i.hg, i1 noundef zeroext true) #15, !noalias !204
  %i.hk = load ptr, ptr %5, align 8, !tbaa !60, !noalias !196 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.de
  br i1 %i.hl, label %_ZN4llvm5ErrorD2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126

.lr.ph174.split:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108
  %i.hm = add i32 %i.ia, 2                        ; 2 uses
  %i.hn = icmp ugt i32 %i.hm, %i.ak
  br i1 %i.hn, label %.lr.ph174.split.preheader._crit_edge, label %.lr.ph264, !llvm.loop !192

.lr.ph174.split.preheader._crit_edge:             ; preds = %.lr.ph174.split.preheader, %.lr.ph174.split
  %storemerge88171.lcssa = phi i32 [ %i.in, %.lr.ph174.split ], [ 0, %.lr.ph174.split.preheader ]
  %i.ho = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #15, !noalias !209 ; 2 uses
  %i.hp = extractvalue { i32, ptr } %i.ho, 0
  %i.hq = extractvalue { i32, ptr } %i.ho, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !212
  store ptr %i.cw, ptr %9, align 8, !tbaa !34, !noalias !212
  store i64 0, ptr %i.cx, align 8, !tbaa !36, !noalias !212
  store i8 0, ptr %i.cw, align 8, !tbaa !19, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !212
  store i32 0, ptr %i.cy, align 8, !tbaa !39, !noalias !212
  store i8 0, ptr %i.cz, align 8, !tbaa !44, !noalias !212
  store i32 1, ptr %i.da, align 4, !tbaa !45, !noalias !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false), !noalias !212
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %10, align 8, !tbaa !46, !noalias !212
  store ptr %9, ptr %i.dc, align 8, !tbaa !48, !noalias !212
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef null, i64 noundef 0, i32 noundef 0) #15, !noalias !212
  %i.hr = load i32, ptr %i.c, align 4, !tbaa !11, !noalias !215
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !212
  store ptr @.str.53, ptr %8, align 8, !noalias !212
  store i32 %storemerge88171.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !212
  store i32 %i.hr, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !212
  store ptr %8, ptr %7, align 8, !tbaa !202, !noalias !212
  %i.hs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.dd) #15, !noalias !212 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !212
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #15, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !212
  %i.ht = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16, !noalias !218 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 %i.hp, ptr %i.hq, i1 noundef zeroext true) #15, !noalias !218
  %i.hu = load ptr, ptr %9, align 8, !tbaa !60, !noalias !212 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.cw
  br i1 %i.hv, label %_ZN4llvm5ErrorD2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph174.split.preheader._crit_edge
  %i.hw = load i64, ptr %i.cw, align 8, !tbaa !19, !noalias !212
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #17, !noalias !212
  br label %_ZN4llvm5ErrorD2Ev.exit105

_ZN4llvm5ErrorD2Ev.exit105:                       ; preds = %.lr.ph174.split.preheader._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !212
  %i.hy = load i8, ptr %i.cr, align 8
  %i.hz = or i8 %i.hy, 1
  store i8 %i.hz, ptr %i.cr, align 8
  store ptr %i.ht, ptr %0, align 8, !tbaa !18, !alias.scope !223
  br label %.thread.jt1

.lr.ph264:                                        ; preds = %.lr.ph174.split.preheader, %.lr.ph174.split
  %i.ia = phi i32 [ %i.hm, %.lr.ph174.split ], [ %i.gj, %.lr.ph174.split.preheader ] ; 3 uses
  %storemerge88171263 = phi i32 [ %i.in, %.lr.ph174.split ], [ 0, %.lr.ph174.split.preheader ]
  %.5172262 = phi i32 [ %i.ia, %.lr.ph174.split ], [ %i.fz, %.lr.ph174.split.preheader ]
  %i.ib = zext i32 %.5172262 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.ib
  %.0.copyload.i.i.i.i.i.i106 = load i16, ptr %i.ic, align 1 ; 2 uses
  %i.id = load i64, ptr %i.cp, align 8, !tbaa !129 ; 2 uses
  %i.ie = load i64, ptr %i.cq, align 8, !tbaa !130
  %.not.i107 = icmp ult i64 %i.id, %i.ie
  br i1 %.not.i107, label %bb.ac, label %bb.ab, !prof !162

bb.ab:                                            ; preds = %.lr.ph264
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i16 noundef zeroext %.0.copyload.i.i.i.i.i.i106)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108

bb.ac:                                            ; preds = %.lr.ph264
  %i.if = load ptr, ptr %i.cn, align 8, !tbaa !127
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.id
  store i16 %.0.copyload.i.i.i.i.i.i106, ptr %i.ig, align 1
  %i.ih = load i64, ptr %i.cp, align 8, !tbaa !129
  %i.ii = add i64 %i.ih, 1
  store i64 %i.ii, ptr %i.cp, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126: ; preds = %.split.us
  %i.ij = load i64, ptr %i.de, align 8, !tbaa !19, !noalias !196
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ik) #17, !noalias !196
  br label %_ZN4llvm5ErrorD2Ev.exit109

_ZN4llvm5ErrorD2Ev.exit109:                       ; preds = %.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !196
  %i.il = load i8, ptr %i.cr, align 8
  %i.im = or i8 %i.il, 1
  store i8 %i.im, ptr %i.cr, align 8
  store ptr %i.hj, ptr %0, align 8, !tbaa !18, !alias.scope !226
  br label %.thread.jt1

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108: ; preds = %bb.ac, %bb.ab
  %i.in = add nuw nsw i32 %storemerge88171263, 1  ; 3 uses
  %i.io = load i8, ptr %i.cs, align 1, !tbaa !174
  %i.ip = zext i8 %i.io to i32
  %.not90 = icmp samesign ult i32 %i.in, %i.ip
  br i1 %.not90, label %.lr.ph174.split, label %._crit_edge175, !llvm.loop !192

._crit_edge175.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108.us
  %i.iq = trunc nuw i64 %indvars.iv.next204 to i32
  br label %._crit_edge175

._crit_edge175:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108, %._crit_edge175.loopexit
  %.5.lcssa = phi i32 [ %i.iq, %._crit_edge175.loopexit ], [ %i.ia, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit108 ] ; 2 uses
  %i.ir = load i32, ptr %i.o, align 8, !tbaa !133 ; 4 uses
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %i.iu = load i32, ptr %i.p, align 4, !tbaa !134
  %.not.i.i.not.i112 = icmp ult i32 %i.ir, %i.iu
  %.pre3.i113 = load ptr, ptr %i.m, align 8, !tbaa !131 ; 4 uses
  br i1 %.not.i.i.not.i112, label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117, label %bb.ad, !prof !162

bb.ad:                                            ; preds = %._crit_edge175
  %i.iv = getelementptr inbounds nuw [56 x i8], ptr %.pre3.i113, i64 %i.is
  %i.iw = icmp uge ptr %17, %.pre3.i113
  %i.ix = icmp ult ptr %17, %i.iv
  %spec.select.i.i.i.i.i114 = and i1 %i.iw, %i.ix
  br i1 %spec.select.i.i.i.i.i114, label %bb.ae, label %.critedge.i.i.i115, !prof !182

bb.ae:                                            ; preds = %bb.ad
  %i.iy = ptrtoint ptr %.pre3.i113 to i64
  %i.iz = sub i64 %i.dm, %i.iy
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.it)
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !131 ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 %i.iz
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117

.critedge.i.i.i115:                               ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.it)
  %.pre.i116 = load ptr, ptr %i.m, align 8, !tbaa !131
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117

_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117: ; preds = %.critedge.i.i.i115, %bb.ae, %._crit_edge175
  %i.jc = phi ptr [ %.pre3.i113, %._crit_edge175 ], [ %i.ja, %bb.ae ], [ %.pre.i116, %.critedge.i.i.i115 ]
  %.016.i.i.i118 = phi ptr [ %17, %._crit_edge175 ], [ %i.jb, %bb.ae ], [ %17, %.critedge.i.i.i115 ] ; 3 uses
  %i.jd = load i32, ptr %i.o, align 8, !tbaa !133
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [56 x i8], ptr %i.jc, i64 %i.je ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jf, ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i.i118, i64 12, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !127
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store i64 0, ptr %i.ji, align 8, !tbaa !129
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  store i64 8, ptr %i.jj, align 8, !tbaa !130
  %i.jk = getelementptr inbounds nuw i8, ptr %.016.i.i.i118, i64 24
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !129
  %.not.i.i.i.i119 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i.i.i119, label %.thread.jt7, label %.thread.jt7.sink.split

.thread.jt7.sink.split:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i
  %.016.i.i.i118.sink = phi ptr [ %.016.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i ], [ %.016.i.i.i118, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117 ]
  %.sink = phi ptr [ %i.fl, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i ], [ %i.jg, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117 ]
  %.476.jt7.ph = phi i32 [ %.072181, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i ], [ %i.ir, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117 ]
  %.10.jt7.ph = phi i32 [ %i.dv, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i ], [ %.5.lcssa, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.016.i.i.i118.sink, i64 16
  %i.jn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplItEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %.sink, ptr noundef nonnull align 8 dereferenceable(40) %i.jm) ; 0 uses
  br label %.thread.jt7

.thread.jt7:                                      ; preds = %.thread.jt7.sink.split, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i
  %.476.jt7 = phi i32 [ %i.ir, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117 ], [ %.072181, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i ], [ %.476.jt7.ph, %.thread.jt7.sink.split ]
  %.10.jt7 = phi i32 [ %.5.lcssa, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i117 ], [ %i.dv, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE28reserveForParamAndGetAddressERS2_m.exit.i ], [ %.10.jt7.ph, %.thread.jt7.sink.split ] ; 2 uses
  %i.jo = load i32, ptr %i.o, align 8, !tbaa !133
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.o, align 8, !tbaa !133
  %i.jq = load ptr, ptr %i.cn, align 8, !tbaa !127 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.co
  br i1 %i.jr, label %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7, label %bb.af

.thread.jt1:                                      ; preds = %_ZN4llvm5ErrorD2Ev.exit105, %_ZN4llvm5ErrorD2Ev.exit109, %_ZN4llvm5ErrorD2Ev.exit104, %_ZN4llvm5ErrorD2Ev.exit102, %_ZN4llvm5ErrorD2Ev.exit100, %_ZN4llvm5ErrorD2Ev.exit98, %_ZN4llvm5ErrorD2Ev.exit97
  %i.js = load ptr, ptr %i.cn, align 8, !tbaa !127 ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.co
  br i1 %i.jt, label %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt1, label %bb.ag

bb.af:                                            ; preds = %.thread.jt7
  call void @free(ptr noundef %i.jq) #15
  br label %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7

bb.ag:                                            ; preds = %.thread.jt1
  call void @free(ptr noundef %i.js) #15
  br label %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt1

_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7:   ; preds = %bb.af, %.thread.jt7
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.ju = load i32, ptr %i.c, align 4, !tbaa !11
  %i.jv = add i32 %i.ju, 1                        ; 3 uses
  store i32 %i.jv, ptr %i.c, align 4, !tbaa !11
  %i.jw = load i8, ptr %i.ah, align 4, !tbaa !153
  %i.jx = zext i8 %i.jw to i32
  %i.jy = icmp ult i32 %i.jv, %i.jx
  br i1 %i.jy, label %bb.k, label %._crit_edge186, !llvm.loop !229

_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt1:   ; preds = %bb.ag, %.thread.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.am

._crit_edge186:                                   ; preds = %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7, %._crit_edge
  %.3.lcssa = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.10.jt7, %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt7 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.jz = icmp ult i32 %.3.lcssa, %i.ak
  br i1 %i.jz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge186
  %i.ka = zext nneg i32 %.3.lcssa to i64
  %i.kb = sub nuw nsw i32 %i.ak, %.3.lcssa
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ka
  store ptr %i.kd, ptr %i.q, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 304
  store i64 %i.kc, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !123
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ke = trunc nuw nsw i32 %i.aj to i16
  %i.kf = add nuw nsw i16 %i.ke, 2
  %i.kg = and i16 %i.kf, 1020
  %i.kh = add nuw nsw i16 %i.kg, 4
  %i.ki = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i16 %i.kh, ptr %i.ki, align 8, !tbaa !230
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 8
  %i.kl = and i8 %i.kk, -2
  store i8 %i.kl, ptr %i.kj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 10, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !127
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ko, align 8, !tbaa !129
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 8, ptr %i.kp, align 8, !tbaa !130
  %i.kq = load i64, ptr %i.k, align 8, !tbaa !129
  %.not.i.i.i.i121 = icmp eq i64 %i.kq, 0
  br i1 %.not.i.i.i.i121, label %_ZN4llvm11SmallVectorItLj8EEC2EOS1_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplItEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.km, ptr noundef nonnull align 8 dereferenceable(40) %i.i) ; 0 uses
  br label %_ZN4llvm11SmallVectorItLj8EEC2EOS1_.exit.i.i

_ZN4llvm11SmallVectorItLj8EEC2EOS1_.exit.i.i:     ; preds = %bb.ak, %bb.aj
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.kt, ptr %i.ks, align 8, !tbaa !131
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ku, align 8, !tbaa !133
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 4, ptr %i.kv, align 4, !tbaa !134
  %i.kw = load i32, ptr %i.o, align 8, !tbaa !133
  %.not.i.i5.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i5.i.i, label %_ZN4llvm8ExpectedINS_7Win64EH19DecodedUnwindInfoV3EEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorItLj8EEC2EOS1_.exit.i.i
  %i.kx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7Win64EH15DecodedEpilogV3EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(240) %i.ks, ptr noundef nonnull align 8 dereferenceable(240) %i.m) ; 0 uses
  br label %_ZN4llvm8ExpectedINS_7Win64EH19DecodedUnwindInfoV3EEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit

_ZN4llvm8ExpectedINS_7Win64EH19DecodedUnwindInfoV3EEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit: ; preds = %_ZN4llvm11SmallVectorItLj8EEC2EOS1_.exit.i.i, %bb.al
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !231
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.jt1, %bb.j, %_ZN4llvm5ErrorD2Ev.exit92, %_ZN4llvm8ExpectedINS_7Win64EH19DecodedUnwindInfoV3EEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit, %_ZN4llvm5ErrorD2Ev.exit91
  %i.kz = load ptr, ptr %i.m, align 8, !tbaa !131 ; 3 uses
  %i.la = load i32, ptr %i.o, align 8, !tbaa !133 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.la, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.am
  %i.lb = zext i32 %i.la to i64
  %.idx.i.i122 = mul nuw nsw i64 %i.lb, 56
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.idx.i.i122
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ld, %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.i.i.i ], [ %i.lc, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.ld = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !127 ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.lf) #15
  br label %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.i.i.i

_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i
  %.not.i.i.i123 = icmp eq ptr %i.kz, %i.ld
  br i1 %.not.i.i.i123, label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !232

_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %_ZN4llvm7Win64EH15DecodedEpilogV3D2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !131
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %bb.am
  %i.li = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %i.kz, %bb.am ] ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.n
  br i1 %i.lj, label %_ZN4llvm11SmallVectorINS_7Win64EH15DecodedEpilogV3ELj4EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  call void @free(ptr noundef %i.li) #15
  br label %_ZN4llvm11SmallVectorINS_7Win64EH15DecodedEpilogV3ELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7Win64EH15DecodedEpilogV3ELj4EED2Ev.exit.i: ; preds = %bb.ao, %_ZN4llvm23SmallVectorTemplateBaseINS_7Win64EH15DecodedEpilogV3ELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  %i.lk = load ptr, ptr %i.i, align 8, !tbaa !127 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.j
  br i1 %i.ll, label %_ZN4llvm7Win64EH19DecodedUnwindInfoV3D2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm11SmallVectorINS_7Win64EH15DecodedEpilogV3ELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.lk) #15
  br label %_ZN4llvm7Win64EH19DecodedUnwindInfoV3D2Ev.exit

_ZN4llvm7Win64EH19DecodedUnwindInfoV3D2Ev.exit:   ; preds = %_ZN4llvm11SmallVectorINS_7Win64EH15DecodedEpilogV3ELj4EED2Ev.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm7Win64EH19DecodedUnwindInfoV3D2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17createStringErrorIJmEEENS_5ErrorEPKcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %class.anon.39, align 8             ; 4 uses
  %4 = alloca %"class.llvm::format_object.35", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #15 ; 2 uses
  %i.b = extractvalue { i32, ptr } %i.a, 0
  %i.c = extractvalue { i32, ptr } %i.a, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !233
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !34, !noalias !233
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !36, !noalias !233
  store i8 0, ptr %i.d, align 8, !tbaa !19, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !233
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !39, !noalias !233
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.g, align 8, !tbaa !44, !noalias !233
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.h, align 4, !tbaa !45, !noalias !233
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !noalias !233
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !46, !noalias !233
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %5, ptr %i.j, align 8, !tbaa !48, !noalias !233
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #15, !noalias !233
  %i.k = load i64, ptr %2, align 8, !tbaa !123, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !233
  store ptr %1, ptr %4, align 8, !noalias !233
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !233
  store ptr %4, ptr %3, align 8, !tbaa !239, !noalias !233
end_hunk_0
