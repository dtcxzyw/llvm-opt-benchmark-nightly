Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_tile_comp?download=true
inline.NumInlined: 27
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9tile_comp9pre_allocEPNS0_10codestreamEjRKNS_4rectES6_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = tail call noundef ptr @_ZN4ojph5local9param_cod7get_cocEj(ptr noundef nonnull align 8 dereferenceable(96) %i.c, i32 noundef %1)
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.d, %bb.a
  %.tr.i = phi ptr [ %i.d, %bb.a ], [ %i.l, %bb.d ] ; 4 uses
  %i.e = load i8, ptr %.tr.i, align 8, !tbaa !43
  switch i8 %i.e, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !44
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.c:                                             ; preds = %tailrecurse.i
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !44    ; 2 uses
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.tr.i, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  br label %tailrecurse.i

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit: ; preds = %tailrecurse.i, %bb.c, %bb.b
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ 0, %tailrecurse.i ]
  %i.m = zext i8 %.0.i to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47
  %i.p = add i64 %i.o, 279
  store i64 %i.p, ptr %i.n, align 8, !tbaa !47
  tail call void @_ZN4ojph5local10resolution9pre_allocEPNS0_10codestreamERKNS_4rectES6_jj(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %1, i32 noundef %i.m)
  ret void
}

declare void @_ZN4ojph5local10resolution9pre_allocEPNS0_10codestreamERKNS_4rectES6_jj(ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9tile_comp14finalize_allocEPNS0_10codestreamEPNS0_4tileEjRKNS_4rectES8_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = tail call noundef ptr @_ZN4ojph5local9param_cod7get_cocEj(ptr noundef nonnull align 8 dereferenceable(96) %i.c, i32 noundef %3)
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.d, %bb.a
  %.tr.i = phi ptr [ %i.d, %bb.a ], [ %i.l, %bb.d ] ; 4 uses
  %i.e = load i8, ptr %.tr.i, align 8, !tbaa !43
  switch i8 %i.e, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !44
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.c:                                             ; preds = %tailrecurse.i
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !44    ; 2 uses
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.tr.i, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  br label %tailrecurse.i

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit: ; preds = %tailrecurse.i, %bb.c, %bb.b
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ 0, %tailrecurse.i ]
  %i.m = zext i8 %.0.i to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.m, ptr %i.n, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = zext i32 %3 to i64
  %i.r = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !60
  %.sroa.2.0.insert.ext.i = zext i8 %i.v to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i8 %i.t to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !62
  store ptr %2, ptr %0, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.y, align 4, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.z, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = add nsw i64 %i.ad, 7
  %i.af = and i64 %i.ae, -8
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 279
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !65
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.aj = add i64 %i.ai, -279
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !54
  %.sroa.01.0.copyload = load i64, ptr %i.w, align 8 ; 2 uses
  tail call void @_ZN4ojph5local10resolution14finalize_allocEPNS0_10codestreamERKNS_4rectES6_jjNS_5pointES7_PNS0_9tile_compEPS1_(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %3, i32 noundef %i.m, i64 %.sroa.01.0.copyload, i64 %.sroa.01.0.copyload, ptr noundef nonnull %0, ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN4ojph5local10resolution14finalize_allocEPNS0_10codestreamERKNS_4rectES6_jjNS_5pointES7_PNS0_9tile_compEPS1_(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef, i64, i64, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local9tile_comp8get_lineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN4ojph5local10resolution8get_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.b)
  ret ptr %i.c
}

declare noundef ptr @_ZN4ojph5local10resolution8get_lineEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9tile_comp9push_lineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  tail call void @_ZN4ojph5local10resolution9push_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.b)
  ret void
}

declare void @_ZN4ojph5local10resolution9push_lineEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local9tile_comp9pull_lineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.b)
  ret ptr %i.c
}

declare noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ojph5local9tile_comp17prepare_precinctsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) initializes((48, 52)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef i32 @_ZN4ojph5local10resolution16prepare_precinctEv(ptr noundef nonnull align 8 dereferenceable(264) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.c, ptr %i.d, align 8, !tbaa !53
  ret i32 %i.c
}

declare noundef i32 @_ZN4ojph5local10resolution16prepare_precinctEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9tile_comp15write_precinctsEjPNS_12outfile_baseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.09 = load ptr, ptr %i.d, align 8, !tbaa !55   ; 3 uses
  %i.e = icmp ne i32 %i.c, 0
  %i.f = icmp ne ptr %.09, null                   ; 2 uses
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %.0, %.lr.ph ], [ %.09, %bb.a ]
  %.0810 = phi i32 [ %i.i, %.lr.ph ], [ %i.c, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 104
  %i.i = add i32 %.0810, -1                       ; 2 uses
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !55    ; 3 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp ne ptr %.0, null                    ; 2 uses
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %.09, %bb.a ], [ %.0, %.lr.ph ]
  %.lcssa = phi i1 [ %i.f, %bb.a ], [ %i.k, %.lr.ph ]
  br i1 %.lcssa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN4ojph5local10resolution15write_precinctsEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(264) %.0.lcssa, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

declare void @_ZN4ojph5local10resolution15write_precinctsEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = sub nsw i32 %i.b, %1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.011 = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.e = icmp sgt i32 %i.c, 0
  %i.f = icmp ne ptr %.011, null                  ; 2 uses
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %.0, %.lr.ph ], [ %.011, %bb.a ]
  %.0912 = phi i32 [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.013, i64 104
  %i.i = add nsw i32 %.0912, -1
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !55    ; 3 uses
  %i.j = icmp samesign ugt i32 %.0912, 1
  %i.k = icmp ne ptr %.0, null                    ; 2 uses
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %.011, %bb.a ], [ %.0, %.lr.ph ]
  %.lcssa = phi i1 [ %i.f, %bb.a ], [ %i.k, %.lr.ph ]
  br i1 %.lcssa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.m = tail call noundef zeroext i1 @_ZN4ojph5local10resolution21get_top_left_precinctERNS_5pointE(ptr noundef nonnull align 8 dereferenceable(264) %.0.lcssa, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.010 = phi i1 [ %i.m, %bb.b ], [ false, %._crit_edge ]
  ret i1 %.010
}

declare noundef zeroext i1 @_ZN4ojph5local10resolution21get_top_left_precinctERNS_5pointE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9tile_comp18write_one_precinctEjPNS_12outfile_baseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = sub nsw i32 %i.b, %1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.09 = load ptr, ptr %i.d, align 8, !tbaa !55   ; 3 uses
  %i.e = icmp sgt i32 %i.c, 0
  %i.f = icmp ne ptr %.09, null                   ; 2 uses
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %.0, %.lr.ph ], [ %.09, %bb.a ]
  %.0810 = phi i32 [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 104
  %i.i = add nsw i32 %.0810, -1
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !55    ; 3 uses
  %i.j = icmp samesign ugt i32 %.0810, 1
  %i.k = icmp ne ptr %.0, null                    ; 2 uses
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %.09, %bb.a ], [ %.0, %.lr.ph ]
  %.lcssa = phi i1 [ %i.f, %bb.a ], [ %i.k, %.lr.ph ]
  br i1 %.lcssa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN4ojph5local10resolution18write_one_precinctEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(264) %.0.lcssa, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

declare void @_ZN4ojph5local10resolution18write_one_precinctEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9tile_comp15parse_precinctsEjRjPNS_11infile_baseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.010 = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.e = icmp ne i32 %i.c, 0
  %i.f = icmp ne ptr %.010, null                  ; 2 uses
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %.0, %.lr.ph ], [ %.010, %bb.a ]
  %.0911 = phi i32 [ %i.i, %.lr.ph ], [ %i.c, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 104
  %i.i = add i32 %.0911, -1                       ; 2 uses
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !55    ; 3 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp ne ptr %.0, null                    ; 2 uses
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %.010, %bb.a ], [ %.0, %.lr.ph ]
  %.lcssa = phi i1 [ %i.f, %bb.a ], [ %i.k, %.lr.ph ]
  br i1 %.lcssa, label %bb.b, label %bb.c
end_hunk_0
