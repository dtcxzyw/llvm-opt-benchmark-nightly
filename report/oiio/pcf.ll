inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0
%struct.FT_Frame_Field_ = type { i8, i8, i16 }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }
%struct.PCF_Compressed_MetricRec_ = type { i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@pcf_driver_class = hidden local_unnamed_addr constant %struct.FT_Driver_ClassRec_ { %struct.FT_Module_Class_ { i64 513, i64 64, ptr @.str, i64 65536, i64 131072, ptr null, ptr @pcf_driver_init, ptr @pcf_driver_done, ptr @pcf_driver_requester }, i64 568, i64 88, i64 304, ptr @PCF_Face_Init, ptr @PCF_Face_Done, ptr null, ptr null, ptr null, ptr null, ptr @PCF_Glyph_Load, ptr null, ptr null, ptr null, ptr @PCF_Size_Request, ptr @PCF_Size_Select }, align 8
end_hunk_0
begin_hunk_1_@pcf_load_font:bb.a
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
end_hunk_1
begin_hunk_2_@pcf_load_font:bb.a
  %i.ar = phi i64 [ %i.av, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %.0117.i = phi i32 [ %.1.i, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %.079116.i = phi i32 [ %i.au, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = add i32 %.079116.i, 1                   ; 2 uses
end_hunk_2
begin_hunk_3_@pcf_load_font:bb.a
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph118.i
  %.sroa.0.0.copyload = load <4 x i64>, ptr %i.as, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !tbaa.struct !135
  store <4 x i64> %.sroa.0.0.copyload, ptr %i.aw, align 8
  %.pre132.i = load i64, ptr %i.ax, align 8, !tbaa !133
  br label %bb.l

end_hunk_3
begin_hunk_4_@pcf_load_font:bb.a
  br i1 %i.bg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.l, align 8, !tbaa !129 ; 5 uses
  %i.bi = add i64 %i.bh, %i.ap
  %i.bj = icmp ugt i64 %i.bi, %i.av
end_hunk_4
begin_hunk_5_@pcf_load_font:bb.a

bb.o:                                             ; preds = %bb.m, %bb.l
  store i32 9, ptr %i.d, align 4, !tbaa !3
  br label %pcf_read_TOC.exit

.thread109.i:                                     ; preds = %._crit_edge119.i, %.preheader.i, %bb.j
end_hunk_5
