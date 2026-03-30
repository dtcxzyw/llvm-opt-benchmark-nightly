begin_hunk_0
%struct.FT_Frame_Field_ = type { i8, i8, i16 }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }
%struct.PCF_Compressed_MetricRec_ = type { i8, i8, i8, i8, i8 }
%struct.PCF_TableRec_ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@pcf_driver_class = hidden local_unnamed_addr constant %struct.FT_Driver_ClassRec_ { %struct.FT_Module_Class_ { i64 513, i64 64, ptr @.str, i64 65536, i64 131072, ptr null, ptr @pcf_driver_init, ptr @pcf_driver_done, ptr @pcf_driver_requester }, i64 568, i64 88, i64 304, ptr @PCF_Face_Init, ptr @PCF_Face_Done, ptr null, ptr null, ptr null, ptr null, ptr @PCF_Glyph_Load, ptr null, ptr null, ptr null, ptr @PCF_Size_Request, ptr @PCF_Size_Select }, align 8
end_hunk_0
begin_hunk_1
  %3 = alloca %struct.PCF_Compressed_MetricRec_, align 1 ; 7 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.PCF_TableRec_, align 8      ; 5 uses
  %i.e = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
end_hunk_1
begin_hunk_2
  br i1 %.not127.i, label %.preheader.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader111.i, %bb.i
  %.083115.i = phi i32 [ %i.ac, %bb.i ], [ 0, %.preheader111.i ]
  %.085114.i = phi ptr [ %i.ab, %bb.i ], [ %i.w, %.preheader111.i ] ; 2 uses
  %i.aa = call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull @pcf_table_header, ptr noundef %.085114.i) #14 ; 2 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !3
  %.not104.i.a = icmp eq i32 %i.aa, 0
  br i1 %.not104.i.a, label %bb.i, label %pcf_read_TOC.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.085114.i, i64 32
  %i.ac = add i32 %.083115.i, 1                   ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !129 ; 3 uses
  %i.af = icmp ugt i64 %i.ae, %i.ad
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !131

end_hunk_2
begin_hunk_3
  br label %._crit_edge125.i

.preheader.preheader.i:                           ; preds = %._crit_edge.i, %.preheader111.i
  %i.ah = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.w, %.preheader111.i ] ; 3 uses
  %5 = phi i64 [ %i.ae, %._crit_edge.i ], [ 0, %.preheader111.i ]
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %.preheader.i

bb.j:                                             ; preds = %._crit_edge119.i
  %i.ai = add i32 %.184120.i, 1                   ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = add i64 %12, -1
  %i.al = icmp ugt i64 %i.ak, %i.aj
  br i1 %i.al, label %.preheader.i, label %.thread109.i, !llvm.loop !132

.preheader.i:                                     ; preds = %bb.j, %.preheader.preheader.i
  %6 = phi i64 [ %12, %bb.j ], [ %5, %.preheader.preheader.i ] ; 2 uses
  %i.am = phi i64 [ %i.aj, %bb.j ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.184120.i = phi i32 [ %i.ai, %bb.j ], [ 0, %.preheader.preheader.i ]
  %.neg.i = add nuw nsw i64 %i.am, 1
  %i.an = xor i64 %i.am, -1
  %.not129.i = icmp eq i64 %6, %.neg.i
  br i1 %.not129.i, label %.thread109.i, label %.lr.ph118.preheader.i

.lr.ph118.preheader.i:                            ; preds = %.preheader.i
  %.pre134.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !133
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %11, %.lr.ph118.preheader.i
  %7 = phi i64 [ %i.au, %11 ], [ %.pre134.i, %.lr.ph118.preheader.i ]
  %8 = phi i64 [ %i.ap, %11 ], [ 0, %.lr.ph118.preheader.i ]
  %.0117.i = phi i32 [ %.1.i, %11 ], [ 0, %.lr.ph118.preheader.i ]
  %.079116.i = phi i32 [ %i.ao, %11 ], [ 0, %.lr.ph118.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %9 = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %8 ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ao = add i32 %.079116.i, 1                   ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !133 ; 2 uses
  %i.at = icmp ugt i64 %7, %i.as
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph118.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !tbaa.struct !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !135
  %.pre132.i = load i64, ptr %i.ar, align 8, !tbaa !133
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph118.i
  %i.au = phi i64 [ %.pre132.i, %bb.k ], [ %i.as, %.lr.ph118.i ] ; 3 uses
  %.1.i = phi i32 [ 1, %bb.k ], [ %.0117.i, %.lr.ph118.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !136 ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %10, align 8, !tbaa !133
  %i.az = sub nuw i64 %i.au, %i.aw
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.n, label %11

11:                                               ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %12 = load i64, ptr %i.l, align 8, !tbaa !129   ; 5 uses
  %13 = add i64 %12, %i.an
  %14 = icmp ugt i64 %13, %i.ap
  br i1 %14, label %.lr.ph118.i, label %._crit_edge119.i, !llvm.loop !137

._crit_edge119.i:                                 ; preds = %11
  %i.bb = icmp eq i32 %.1.i, 0
  br i1 %i.bb, label %.thread109.i, label %bb.j

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 9, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %pcf_read_TOC.exit

.thread109.i:                                     ; preds = %._crit_edge119.i, %.preheader.i, %bb.j
  %15 = phi i64 [ %12, %bb.j ], [ %12, %._crit_edge119.i ], [ %6, %.preheader.i ]
  %.pre133.i = load ptr, ptr %i.x, align 8, !tbaa !58 ; 4 uses
  %16 = add i64 %15, -1                           ; 2 uses
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !130 ; 4 uses
  %.not130.i = icmp eq i64 %16, 0
  br i1 %.not130.i, label %._crit_edge125.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.thread109.i, %bb.p
  %.2123.i = phi i32 [ %i.bl, %bb.p ], [ 0, %.thread109.i ]
  %.186122.i = phi ptr [ %i.bk, %bb.p ], [ %.pre133.i, %.thread109.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.186122.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !136 ; 2 uses
  %i.bf = icmp ugt i64 %i.be, %i.bc
  br i1 %i.bf, label %17, label %bb.o

bb.o:                                             ; preds = %.lr.ph124.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.186122.i, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !133
  %i.bi = sub nuw i64 %i.bc, %i.be
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %17, label %bb.p

17:                                               ; preds = %bb.o, %.lr.ph124.i
  store i32 8, ptr %i.d, align 4, !tbaa !3
  br label %pcf_read_TOC.exit

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.186122.i, i64 32 ; 2 uses
  %i.bl = add i32 %.2123.i, 1                     ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp ugt i64 %16, %i.bm
  br i1 %i.bn, label %.lr.ph124.i, label %._crit_edge125.i, !llvm.loop !138

._crit_edge125.i:                                 ; preds = %bb.p, %.thread109.i, %.thread109.thread.i
end_hunk_3
begin_hunk_4
  %i.bq = getelementptr inbounds nuw i8, ptr %.186.lcssa.i, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !133 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, %i.bp
  br i1 %i.bs, label %18, label %bb.q

18:                                               ; preds = %._crit_edge125.i
  store i32 8, ptr %i.d, align 4, !tbaa !3
  br label %pcf_read_TOC.exit

bb.q:                                             ; preds = %._crit_edge125.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.186.lcssa.i, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !136
  %i.bv = sub nuw i64 %i.bp, %i.br                ; 2 uses
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %pcf_read_TOC.exit.thread237

bb.r:                                             ; preds = %bb.q
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !136
  br label %pcf_read_TOC.exit.thread237

pcf_read_TOC.exit.thread:                         ; preds = %bb.d, %bb.a, %bb.c, %bb.e, %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.thread266

pcf_read_TOC.exit.thread237:                      ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.e, align 4, !tbaa !3
  br label %bb.s

pcf_read_TOC.exit:                                ; preds = %.lr.ph.i, %bb.n, %17, %18
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !58
  call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.bx) #14
  store ptr null, ptr %i.x, align 8, !tbaa !58
end_hunk_4
