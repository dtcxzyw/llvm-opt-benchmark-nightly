inline.NumInlined: 47242
inline.NumDeleted: 15222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE3AddERKNS2_8WordTypeILm32EEES8_PNS0_4ZoneE:bb.a
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit: ; preds = %bb.g, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i
  %.sink16.i.i.sroa.phi = phi ptr [ %.sink16.i.i.sroa.gep, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %.sink16.i.i.sroa.gep50, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ay, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %i.an, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.z, ptr %4, align 16
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.ac, ptr %i.ab, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12FromElementsENS_4base11SmallVectorIjLm16ESaIjEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

._crit_edge.loopexit:                             ; preds = %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit
  %.pre60 = load i8, ptr %i.ad, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i8 [ %.pre60, %._crit_edge.loopexit ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bt, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.bb = zext i8 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next58, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge54, !llvm.loop !477

.lr.ph:                                           ; preds = %.preheader, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bd = phi i8 [ %i.bt, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit ], [ %i.aj, %.preheader ]
  %i.be = load i8, ptr %i.ad, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.bf, ptr %i.g, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv57
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp ult i8 %i.bd, 3
  %i.bk = load ptr, ptr %i.q, align 8
  %.sroa.0.0.i.i18 = select i1 %i.bj, ptr %i.q, ptr %i.bk
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i18, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, %i.bi
  %i.bo = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit: ; preds = %.lr.ph, %bb.l
  %i.br = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %i.aa, align 8
  store i32 %i.bn, ptr %i.br, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i8, ptr %i.ah, align 2             ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !478

bb.m:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.g, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.by = load i8, ptr %i.bx, align 2             ; 2 uses
  %i.bz = icmp ult i8 %i.by, 3
  %i.ca = load ptr, ptr %i.g, align 8
  %.sroa.3.0.i.i = zext i8 %i.by to i64
  %.sroa.0.0.i.i19 = select i1 %i.bz, ptr %i.g, ptr %i.ca ; 8 uses
  %i.cb = add nsw i64 %.sroa.3.0.i.i, -1          ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4            ; 3 uses
  %i.ce = load i32, ptr %.sroa.0.0.i.i19, align 4 ; 3 uses
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread
  %i.ch = icmp ugt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.ci = phi i64 [ %i.cv, %.lr.ph.i.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.cb, %.preheader.i.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.026.i.i
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = sub i32 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.01025.i.i
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = sub i32 %i.cp, %i.cs
  %i.cu = icmp ult i32 %i.cn, %i.ct               ; 2 uses
  %.111.i.i = select i1 %i.cu, i64 %.01025.i.i, i64 %i.cq ; 3 uses
  %.1.i.i = select i1 %i.cu, i64 %i.ci, i64 %.026.i.i ; 3 uses
  %i.cv = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %.111.i.i
  br i1 %i.cw, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !196

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.111.i.i
  %.pre.i.i20 = load i32, ptr %.phi.trans.insert.i.i, align 4
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.1.i.i
  %.pre29.i.i = load i32, ptr %.phi.trans.insert28.i.i, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i: ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i, %.thread
  %.sroa.024.0.i.i = phi i32 [ %i.ce, %.thread ], [ %i.cd, %.preheader.i.i ], [ %.pre.i.i20, %._crit_edge.loopexit.i.i ]
  %.sroa.3.0.i4.i = phi i32 [ %i.cd, %.thread ], [ %i.ce, %.preheader.i.i ], [ %.pre29.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.3.0.insert.ext.i.i = zext i32 %.sroa.3.0.i4.i to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.024.0.insert.ext.i.i = zext i32 %.sroa.024.0.i.i to i64
  %.sroa.024.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.sroa.024.0.insert.ext.i.i
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit: ; preds = %bb.n, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i
  %.sroa.03.0.i = phi i64 [ %i.bw, %bb.n ], [ %.sroa.024.0.insert.insert.i.i, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i ] ; 2 uses
  %.sroa.046.0.extract.trunc = trunc i64 %.sroa.03.0.i to i32 ; 3 uses
  %.sroa.548.0.extract.shift = lshr i64 %.sroa.03.0.i, 32
  %.sroa.548.0.extract.trunc = trunc nuw i64 %.sroa.548.0.extract.shift to i32 ; 3 uses
  br i1 %i.m, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit
  %i.cx = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cz = load i8, ptr %i.cy, align 2             ; 2 uses
  %i.da = icmp ult i8 %i.cz, 3
  %i.db = load ptr, ptr %i.q, align 8
  %.sroa.3.0.i.i21 = zext i8 %i.cz to i64
  %.sroa.0.0.i.i22 = select i1 %i.da, ptr %i.q, ptr %i.db ; 8 uses
  %i.dc = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  %i.df = load i32, ptr %.sroa.0.0.i.i22, align 4 ; 3 uses
  %i.dg = sub i32 %i.de, %i.df
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.p
  %i.di = icmp ugt i64 %i.dc, 1
  br i1 %i.di, label %.lr.ph.i.i32, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24

.lr.ph.i.i32:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i32
  %i.dj = phi i64 [ %i.dw, %.lr.ph.i.i32 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i33 = phi i64 [ %.1.i.i36, %.lr.ph.i.i32 ], [ 0, %.preheader.i.i23 ] ; 2 uses
  %.01025.i.i34 = phi i64 [ %.111.i.i35, %.lr.ph.i.i32 ], [ %i.dc, %.preheader.i.i23 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.026.i.i33
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = sub i32 %i.dl, %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.01025.i.i34
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = add i64 %.01025.i.i34, -1               ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = sub i32 %i.dq, %i.dt
  %i.dv = icmp ult i32 %i.do, %i.du               ; 2 uses
  %.111.i.i35 = select i1 %i.dv, i64 %.01025.i.i34, i64 %i.dr ; 3 uses
  %.1.i.i36 = select i1 %i.dv, i64 %i.dj, i64 %.026.i.i33 ; 3 uses
  %i.dw = add i64 %.1.i.i36, 1                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.111.i.i35
  br i1 %i.dx, label %.lr.ph.i.i32, label %._crit_edge.loopexit.i.i37, !llvm.loop !196

._crit_edge.loopexit.i.i37:                       ; preds = %.lr.ph.i.i32
  %.phi.trans.insert.i.i38 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i35
  %.pre.i.i39 = load i32, ptr %.phi.trans.insert.i.i38, align 4
  %.phi.trans.insert28.i.i40 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i36
  %.pre29.i.i41 = load i32, ptr %.phi.trans.insert28.i.i40, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24: ; preds = %._crit_edge.loopexit.i.i37, %.preheader.i.i23, %bb.p
  %.sroa.024.0.i.i25 = phi i32 [ %i.df, %bb.p ], [ %i.de, %.preheader.i.i23 ], [ %.pre.i.i39, %._crit_edge.loopexit.i.i37 ]
  %.sroa.3.0.i4.i26 = phi i32 [ %i.de, %bb.p ], [ %i.df, %.preheader.i.i23 ], [ %.pre29.i.i41, %._crit_edge.loopexit.i.i37 ]
  %.sroa.3.0.insert.ext.i.i27 = zext i32 %.sroa.3.0.i4.i26 to i64
  %.sroa.3.0.insert.shift.i.i28 = shl nuw i64 %.sroa.3.0.insert.ext.i.i27, 32
  %.sroa.024.0.insert.ext.i.i29 = zext i32 %.sroa.024.0.i.i25 to i64
  %.sroa.024.0.insert.insert.i.i30 = or disjoint i64 %.sroa.3.0.insert.shift.i.i28, %.sroa.024.0.insert.ext.i.i29
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42: ; preds = %bb.o, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24
  %.sroa.03.0.i31 = phi i64 [ %i.cx, %bb.o ], [ %.sroa.024.0.insert.insert.i.i30, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24 ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.03.0.i31 to i32 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.03.0.i31, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 3 uses
  %6 = icmp ule i32 %.sroa.046.0.extract.trunc, %.sroa.548.0.extract.trunc
  %7 = icmp ule i32 %.sroa.0.0.extract.trunc, %.sroa.5.0.extract.trunc
  %.neg55 = zext i1 %6 to i32
  %.neg51.a = sub i32 %.sroa.548.0.extract.trunc, %.sroa.046.0.extract.trunc
  %i.dy = add i32 %.neg51.a, %.neg55
  %8 = sext i1 %7 to i32
  %i.dz = sub i32 %.sroa.0.0.extract.trunc, %.sroa.5.0.extract.trunc
  %i.ea = add i32 %i.dz, %8
  %9 = icmp ult i32 %i.dy, %i.ea
  br i1 %9, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42
  %i.eb = add i32 %.sroa.0.0.extract.trunc, %.sroa.046.0.extract.trunc
  %i.ec = add i32 %.sroa.5.0.extract.trunc, %.sroa.548.0.extract.trunc
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %i.eb, i32 noundef %i.ec, ptr noundef %3)
  br label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42
  store i8 2, ptr %0, align 8, !alias.scope !479
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ed, i8 0, i64 7, i1 false), !alias.scope !479
  store i64 -4294967296, ptr %i.ee, align 8, !alias.scope !479
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ef, align 8, !alias.scope !479
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !484

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = load i64, ptr %0, align 8
  store i64 %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = sdiv i64 %i.n, 2
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.s, align 8
  %i.w = load i64, ptr %i.u, align 8
  %i.x = icmp ult i64 %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !485

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.l, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.m, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.al, ptr %i.am, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.i
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i64 %i.ao, ptr %i.aq, align 8
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !486

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.i, ptr %i.ar, align 8
  %i.as = icmp sgt i64 %i.l, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !487

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bs, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0121944, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ay = load i64, ptr %i.e, align 8             ; 5 uses
  %i.az = load i64, ptr %i.aw, align 8            ; 5 uses
  %i.ba = icmp ult i64 %i.ay, %i.az
  %i.bb = load i64, ptr %i.ax, align 8            ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bc = icmp ult i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i64, ptr %0, align 8
  store i64 %i.az, ptr %0, align 8
  store i64 %i.bd, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i64 %i.ay, %i.bb
  %i.bf = load i64, ptr %0, align 8               ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.bb, ptr %0, align 8
  store i64 %i.bf, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ay, ptr %0, align 8
  store i64 %i.bf, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bg = icmp ult i64 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %0, align 8
  store i64 %i.ay, ptr %0, align 8
  store i64 %i.bh, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i64 %i.az, %i.bb
  %i.bj = load i64, ptr %0, align 8               ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bb, ptr %0, align 8
  store i64 %i.bj, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.az, ptr %0, align 8
  store i64 %i.bj, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE3AddERKNS2_8WordTypeILm64EEES8_PNS0_4ZoneE:bb.a
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  %i.am = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.am, ptr %5, align 16
  %i.an = load ptr, ptr %i.ab, align 16
  br label %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit

bb.h:                                             ; preds = %._crit_edge51.thread, %._crit_edge51
  %i.ao = phi ptr [ %i.af, %._crit_edge51.thread ], [ %i.ak, %._crit_edge51 ] ; 2 uses
  %i.ap = phi ptr [ %i.z, %._crit_edge51.thread ], [ %.pre58, %._crit_edge51 ] ; 2 uses
  %i.aq = load ptr, ptr %i.aa, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.z to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 8
  br i1 %i.au, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ap, i64 %i.at, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.at, 8
  br i1 %i.av, label %bb.k, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.ap, align 8
  store i64 %i.aw, ptr %i.ao, align 8
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  br label %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit

_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit: ; preds = %bb.g, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i
  %.sink16.i.i.sroa.phi = phi ptr [ %.sink16.i.i.sroa.gep, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i ], [ %.sink16.i.i.sroa.gep47, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ay, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i ], [ %i.an, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.z, ptr %4, align 16
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.ac, ptr %i.ab, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12FromElementsENS_4base11SmallVectorImLm16ESaImEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %.pre57 = load i8, ptr %i.ad, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i8 [ %.pre57, %._crit_edge.loopexit ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bt, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.bb = zext i8 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next55, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge51, !llvm.loop !531

.lr.ph:                                           ; preds = %.preheader, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bd = phi i8 [ %i.bt, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ %i.aj, %.preheader ]
  %i.be = load i8, ptr %i.ad, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.bf, ptr %i.g, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv54
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ult i8 %i.bd, 3
  %i.bk = load ptr, ptr %i.r, align 8
  %.sroa.0.0.i.i18 = select i1 %i.bj, ptr %i.r, ptr %i.bk
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i18, i64 %indvars.iv
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit

_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit: ; preds = %.lr.ph, %bb.l
  %i.br = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.aa, align 8
  store i64 %i.bn, ptr %i.br, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i8, ptr %i.ah, align 2             ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !532

bb.m:                                             ; preds = %bb.d
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bx = load i8, ptr %i.bw, align 2             ; 2 uses
  %i.by = icmp ult i8 %i.bx, 3
  %.sroa.3.0.i.i = zext i8 %i.bx to i64
  %.sroa.0.0.i.i19 = select i1 %i.by, ptr %i.g, ptr %i.k ; 8 uses
  %i.bz = add nsw i64 %.sroa.3.0.i.i, -1          ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8            ; 3 uses
  %i.cc = load i64, ptr %.sroa.0.0.i.i19, align 8 ; 3 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp sgt i64 %i.cd, -1
  br i1 %i.ce, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread
  %i.cf = icmp ugt i64 %i.bz, 1
  br i1 %i.cf, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.cg = phi i64 [ %i.ct, %.lr.ph.i.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.bz, %.preheader.i.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.026.i.i
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.01025.i.i
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = sub i64 %i.cn, %i.cq
  %i.cs = icmp ult i64 %i.cl, %i.cr               ; 2 uses
  %.111.i.i = select i1 %i.cs, i64 %.01025.i.i, i64 %i.co ; 3 uses
  %.1.i.i = select i1 %i.cs, i64 %i.cg, i64 %.026.i.i ; 3 uses
  %i.ct = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %.111.i.i
  br i1 %i.cu, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !533

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.111.i.i
  %.pre.i.i20 = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.1.i.i
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit: ; preds = %bb.m, %.thread, %.preheader.i.i, %._crit_edge.loopexit.i.i
  %.pn12.i = phi i64 [ %.pre.i.i20, %._crit_edge.loopexit.i.i ], [ %i.cc, %.thread ], [ %i.cb, %.preheader.i.i ], [ %i.h, %bb.m ] ; 3 uses
  %.pn10.i = phi i64 [ %.pre29.i.i, %._crit_edge.loopexit.i.i ], [ %i.cb, %.thread ], [ %i.cc, %.preheader.i.i ], [ %i.e, %bb.m ] ; 3 uses
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cw = load i8, ptr %i.cv, align 2             ; 2 uses
  %i.cx = icmp ult i8 %i.cw, 3
  %.sroa.3.0.i.i21 = zext i8 %i.cw to i64
  %.sroa.0.0.i.i22 = select i1 %i.cx, ptr %i.r, ptr %i.v ; 8 uses
  %i.cy = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8            ; 3 uses
  %i.db = load i64, ptr %.sroa.0.0.i.i22, align 8 ; 3 uses
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp sgt i64 %i.dc, -1
  br i1 %i.dd, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.n
  %i.de = icmp ugt i64 %i.cy, 1
  br i1 %i.de, label %.lr.ph.i.i28, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

.lr.ph.i.i28:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i28
  %i.df = phi i64 [ %i.ds, %.lr.ph.i.i28 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i29 = phi i64 [ %.1.i.i32, %.lr.ph.i.i28 ], [ 0, %.preheader.i.i23 ] ; 2 uses
  %.01025.i.i30 = phi i64 [ %.111.i.i31, %.lr.ph.i.i28 ], [ %i.cy, %.preheader.i.i23 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.026.i.i29
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = sub i64 %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.01025.i.i30
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = add i64 %.01025.i.i30, -1               ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = sub i64 %i.dm, %i.dp
  %i.dr = icmp ult i64 %i.dk, %i.dq               ; 2 uses
  %.111.i.i31 = select i1 %i.dr, i64 %.01025.i.i30, i64 %i.dn ; 3 uses
  %.1.i.i32 = select i1 %i.dr, i64 %i.df, i64 %.026.i.i29 ; 3 uses
  %i.ds = add i64 %.1.i.i32, 1                    ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.111.i.i31
  br i1 %i.dt, label %.lr.ph.i.i28, label %._crit_edge.loopexit.i.i33, !llvm.loop !533

._crit_edge.loopexit.i.i33:                       ; preds = %.lr.ph.i.i28
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i31
  %.pre.i.i35 = load i64, ptr %.phi.trans.insert.i.i34, align 8
  %.phi.trans.insert28.i.i36 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i32
  %.pre29.i.i37 = load i64, ptr %.phi.trans.insert28.i.i36, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38: ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, %bb.n, %.preheader.i.i23, %._crit_edge.loopexit.i.i33
  %.pn12.i24 = phi i64 [ %.pre.i.i35, %._crit_edge.loopexit.i.i33 ], [ %i.db, %bb.n ], [ %i.da, %.preheader.i.i23 ], [ %i.s, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %.pn10.i25 = phi i64 [ %.pre29.i.i37, %._crit_edge.loopexit.i.i33 ], [ %i.da, %bb.n ], [ %i.db, %.preheader.i.i23 ], [ %i.p, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %6 = icmp ule i64 %.pn12.i, %.pn10.i
  %7 = icmp ule i64 %.pn12.i24, %.pn10.i25
  %.neg52 = zext i1 %6 to i64
  %.neg48.a = sub i64 %.pn10.i, %.pn12.i
  %i.du = add i64 %.neg48.a, %.neg52
  %8 = sext i1 %7 to i64
  %i.dv = sub i64 %.pn12.i24, %.pn10.i25
  %i.dw = add i64 %i.dv, %8
  %9 = icmp ult i64 %i.du, %i.dw
  br i1 %9, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  %i.dx = add i64 %.pn12.i24, %.pn12.i
  %i.dy = add i64 %.pn10.i25, %.pn10.i
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, i64 noundef %i.dx, i64 noundef %i.dy, ptr noundef %3)
  br label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  store i8 3, ptr %0, align 8, !alias.scope !534
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.dz, i8 0, i64 15, i1 false), !alias.scope !539
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i40, align 8, !alias.scope !534
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12FromElementsENS_4base11SmallVectorImLm16ESaImEEEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i, label %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %i.a, ptr noundef %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %i.a, ptr noundef %i.c)
  %.pre = load ptr, ptr %1, align 8
  %.pre9 = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit

_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre9, %bb.b ] ; 9 uses
  %i.l = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_ZSt6uniqueIPmET_S1_S1_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i4, label %_ZSt6uniqueIPmET_S1_S1_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.o = load i64, ptr %.0.i.i.i, align 8         ; 2 uses
  %i.p = load i64, ptr %i.n, align 8
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !540

_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, %bb.e
  %i.s = phi i64 [ %i.u, %bb.e ], [ %i.o, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ]
  %i.t = phi ptr [ %i.x, %bb.e ], [ %i.r, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %.024.i.i = phi ptr [ %.1.i.i, %bb.e ], [ %.0.i.i.i, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.024.i.i, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !541

._crit_edge.i.i.loopexit:                         ; preds = %bb.e
  %.pre10.pre = load ptr, ptr %i.b, align 8
  %.pre11.pre = load ptr, ptr %1, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i
  %.pre11 = phi ptr [ %i.l, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre11.pre, %._crit_edge.i.i.loopexit ]
  %.pre10 = phi ptr [ %i.k, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre10.pre, %._crit_edge.i.i.loopexit ]
  %.0.lcssa.i.i = phi ptr [ %.0.i.i.i, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.1.i.i, %._crit_edge.i.i.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  br label %_ZSt6uniqueIPmET_S1_S1_.exit

_ZSt6uniqueIPmET_S1_S1_.exit:                     ; preds = %.preheader.i.i.i, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit, %._crit_edge.i.i
  %i.z = phi ptr [ %.pre11, %._crit_edge.i.i ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ], [ %i.l, %.preheader.i.i.i ] ; 17 uses
  %i.aa = phi ptr [ %.pre10, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ] ; 2 uses
  %.015.i.i = phi ptr [ %i.y, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ]
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.015.i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 10 uses
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZSt6uniqueIPmET_S1_S1_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.am = icmp samesign ult i64 %i.ak, 3
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.z, align 8, !noalias !548 ; 2 uses
  %i.ao = icmp eq i64 %i.aj, 16
  br i1 %i.ao, label %bb.h, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !548
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !548
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !548 ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.aj) #23, !noalias !548
  %.pre.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !548
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i: ; preds = %bb.j, %bb.i
  %i.ax = phi i64 [ %.pre.i.i.i.i, %bb.j ], [ %i.au, %bb.i ] ; 6 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  %i.az = add i64 %i.ax, %i.aj
  store i64 %i.az, ptr %i.at, align 8, !noalias !548
  %min.iters.check = icmp ult i64 %i.ak, 6
  %i.ba = sub i64 %i.ax, %i.ai
  %diff.check = icmp ult i64 %i.ba, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i
  %n.vec = and i64 %i.ak, 12                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <2 x i64>, ptr %i.bb, align 8, !noalias !548
  %wide.load29 = load <2 x i64>, ptr %i.bc, align 8, !noalias !548
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x i64> %wide.load, ptr %i.bd, align 8, !noalias !548
  store <2 x i64> %wide.load29, ptr %i.be, align 8, !noalias !548
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, %middle.block
  %.014.i.i.ph = phi i64 [ 0, %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.014.i.i.prol = phi i64 [ %i.bj, %scalar.ph.prol ], [ %.014.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.014.i.i.prol
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !548
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.014.i.i.prol
  store i64 %i.bh, ptr %i.bi, align 8, !noalias !548
  %i.bj = add nuw i64 %.014.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !550

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.014.i.i.unr = phi i64 [ %.014.i.i.ph, %scalar.ph.preheader ], [ %i.bj, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %.014.i.i.ph, %i.ak
  %i.bl = icmp ugt i64 %i.bk, -4
end_hunk_1
