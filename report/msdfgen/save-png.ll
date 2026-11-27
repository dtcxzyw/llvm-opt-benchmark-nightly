Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/save-png?download=true
inline.NumInlined: 85
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.msdfgen::BitmapConstSection" = type { ptr, i32, i32, i32, i32 }
%"class.msdfgen::PngGuard" = type { ptr, ptr, ptr }
%"struct.msdfgen::BitmapConstSection.0" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.1" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.2" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.3" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.4" = type { ptr, i32, i32, i32, i32 }

$_ZN7msdfgen8PngGuardD2Ev = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [7 x i8] c"1.6.43\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"File write error\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIhLi1EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !22
  br label %_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %.fr.i = freeze i32 %i.d                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %.fr.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %.pre, i64 %i.i
  %i.k = sub i32 0, %.fr.i
  br label %_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 0, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 7) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.msdfgen::PngGuard", align 8 ; 8 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = call noalias ptr @png_create_write_struct(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @_ZN7msdfgenL14pngIgnoreErrorEP14png_struct_defPKc, ptr noundef nonnull @_ZN7msdfgenL14pngIgnoreErrorEP14png_struct_defPKc) ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.d) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.d, ptr %6, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.g, align 8, !tbaa !15
  %.not46 = icmp eq ptr %i.e, null
  br i1 %.not46, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noalias ptr @fopen64(ptr noundef %5, ptr noundef nonnull @.str.1) ; 3 uses
  %.not47 = icmp eq ptr %i.h, null
  br i1 %.not47, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.g, align 8, !tbaa !15
  %i.i = sext i32 %2 to i64                       ; 2 uses
  %i.j = icmp slt i32 %2, 0
  br i1 %i.j, label %bb.f, label %_ZNSt6vectorIPKhSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIPKhSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.e
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #18
          to label %.noexc50 unwind label %bb.g   ; 10 uses

.noexc50:                                         ; preds = %_ZNSt6vectorIPKhSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr null, ptr %i.l, align 8, !tbaa !28
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %_ZSt6fill_nIPPKhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !28
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc50, %_ZSt6fill_nIPPKhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.p = sext i32 %3 to i64                       ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %2, 4
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.r = mul nsw i64 %indvars.iv.epil, %i.p
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.epil
  store ptr %i.s, ptr %i.t, align 8, !tbaa !28
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.u = invoke ptr @png_set_longjmp_fn(ptr noundef nonnull %i.d, ptr noundef nonnull @longjmp, i64 noundef 200)
          to label %bb.h unwind label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = mul nsw i64 %indvars.iv, %i.p
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.x, ptr %i.y, align 8, !tbaa !28
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = mul nsw i64 %indvars.iv.next, %i.p
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !28
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ac = mul nsw i64 %indvars.iv.next.1, %i.p
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !28
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.af = mul nsw i64 %indvars.iv.next.2, %i.p
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !25

bb.h:                                             ; preds = %._crit_edge
  %i.ai = call i32 @_setjmp(ptr noundef %i.u) #19
  %.not48 = icmp eq i32 %i.ai, 0                  ; 2 uses
  br i1 %.not48, label %bb.i, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit52

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit:                ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %._crit_edge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #20
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @png_set_write_fn(ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef nonnull @_ZN7msdfgenL8pngWriteEP14png_struct_defPhm, ptr noundef nonnull @_ZN7msdfgenL8pngFlushEP14png_struct_def)
          to label %bb.j unwind label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  invoke void @png_set_IHDR(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0)
          to label %bb.k unwind label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @png_set_compression_level(ptr noundef nonnull %i.d, i32 noundef 9)
          to label %bb.l unwind label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  invoke void @png_set_rows(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.l)
          to label %bb.m unwind label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  invoke void @png_write_png(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef null)
          to label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit52 unwind label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit52:              ; preds = %bb.m, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #20
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit ], [ %i.v, %bb.g ]
  call void @_ZN7msdfgen8PngGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit52, %bb.d, %bb.c
  %.2 = phi i1 [ false, %bb.c ], [ %.not48, %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit52 ], [ false, %bb.d ]
  invoke void @png_destroy_write_struct(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.f)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZN7msdfgen8PngGuardD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = call i32 @fclose(ptr noundef nonnull %i.ak) ; 0 uses
  br label %_ZN7msdfgen8PngGuardD2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #21
  unreachable

_ZN7msdfgen8PngGuardD2Ev.exit:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.s

bb.s:                                             ; preds = %_ZN7msdfgen8PngGuardD2Ev.exit, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ %.2, %_ZN7msdfgen8PngGuardD2Ev.exit ], [ false, %bb.b ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIhLi3EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.0") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !34
  br label %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34
  %.fr.i = freeze i32 %i.d                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %.fr.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %.pre, i64 %i.i
  %i.k = sub i32 0, %.fr.i
  br label %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !35
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 2, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIhLi4EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.1") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !39
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !40
  br label %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %.fr.i = freeze i32 %i.d                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %.fr.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %.pre, i64 %i.i
  %i.k = sub i32 0, %.fr.i
  br label %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !41
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 6, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi1EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.2") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !45
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !46
  br label %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %.fr.i = freeze i32 %i.d                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %.fr.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.i
  %i.k = sub i32 0, %.fr.i
  br label %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKfiiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 1, i32 noundef 0, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKfiiiiiPKc(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 1, 5) %4, i32 noundef range(i32 0, 7) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne i32 %1, 0
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = mul nsw i32 %4, %1                       ; 4 uses
  %i.f = mul nsw i32 %i.e, %2                     ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 4 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18 ; 6 uses
  store i8 0, ptr %i.i, align 1, !tbaa !54
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.n = zext i32 %i.e to i64
  %i.o = sext i32 %3 to i64                       ; 5 uses
  %.idx = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = mul nsw i64 %i.o, -4
  %i.r = xor i64 %i.a, -1
  %i.s = add i64 %i.a, 4
  %i.t = shl nsw i64 %i.o, 2
  %i.u = add i64 %.idx, %i.a
  %i.v = add i64 %.idx, %i.a
  %i.w = shl nsw i64 %i.o, 2
  %i.x = add i64 %i.a, 4
  %i.y = xor i64 %i.a, -1
  %i.z = mul nsw i64 %i.o, -4
  br label %bb.d

._crit_edge59:                                    ; preds = %._crit_edge, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.aa = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef nonnull %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %i.e, i32 noundef %5, ptr noundef %6)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit47

bb.d:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 5 uses
  %.03257 = phi i32 [ 0, %.lr.ph58 ], [ %i.bp, %._crit_edge ]
  %.03356 = phi ptr [ %0, %.lr.ph58 ], [ %i.bo, %._crit_edge ] ; 7 uses
  %.03455 = phi ptr [ %i.i, %.lr.ph58 ], [ %.1.lcssa, %._crit_edge ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03356, i64 %.idx
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ac = mul i64 %indvar, %i.w                   ; 2 uses
  %i.ad = add i64 %i.v, %i.ac
  %i.ae = add i64 %i.x, %i.ac
  %i.af = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ae)
  %i.ag = mul i64 %indvar, %i.z
  %i.ah = add i64 %i.ag, %i.y
  %i.ai = add i64 %i.af, %i.ah                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 12
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.al = mul i64 %indvar, %i.t                   ; 3 uses
  %i.am = add i64 %i.u, %i.al
  %i.an = add i64 %i.s, %i.al
  %i.ao = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ap = mul i64 %indvar, %i.q
  %i.aq = add i64 %i.ap, %i.r
  %i.ar = add i64 %i.ao, %i.aq                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = getelementptr i8, ptr %.03455, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 1
  %i.av = and i64 %i.ar, -4
  %i.aw = getelementptr i8, ptr %0, i64 %i.al
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.av
  %bound0 = icmp ult ptr %.03455, %i.ay
  %bound1 = icmp ult ptr %.03356, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 9223372036854775804     ; 4 uses
  %i.az = shl i64 %n.vec, 2
  %i.ba = getelementptr i8, ptr %.03356, i64 %i.az
  %i.bb = getelementptr i8, ptr %.03455, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.03356, i64 %i.bc
  %next.gep68 = getelementptr i8, ptr %.03455, i64 %index
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !56, !alias.scope !57 ; 4 uses
  %i.bd = fcmp oge <4 x float> %wide.load, zeroinitializer
  %i.be = fcmp ole <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.bf = and <4 x i1> %i.bd, %i.be
  %i.bg = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %i.bh = uitofp <4 x i1> %i.bg to <4 x float>
  %i.bi = select <4 x i1> %i.bf, <4 x float> %wide.load, <4 x float> %i.bh
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> splat (float -2.550000e+02), <4 x float> splat (float 2.555000e+02))
  %i.bk = fptosi <4 x float> %i.bj to <4 x i32>
  %i.bl = trunc <4 x i32> %i.bk to <4 x i8>
  %i.bm = xor <4 x i8> %i.bl, splat (i8 -1)
  store <4 x i8> %i.bm, ptr %next.gep68, align 1, !tbaa !54, !alias.scope !58, !noalias !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader70

.lr.ph.preheader70:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.054.ph = phi ptr [ %.03356, %vector.memcheck ], [ %.03356, %.lr.ph.preheader ], [ %i.ba, %middle.block ]
  %.153.ph = phi ptr [ %.03455, %vector.memcheck ], [ %.03455, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.1.lcssa = phi ptr [ %.03455, %bb.d ], [ %i.bb, %middle.block ], [ %i.ca, %.lr.ph ]
  %i.bo = getelementptr [4 x i8], ptr %.03356, i64 %i.o
  %i.bp = add nuw nsw i32 %.03257, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge59, label %bb.d, !llvm.loop !52

.lr.ph:                                           ; preds = %.lr.ph.preheader70, %.lr.ph
  %.054 = phi ptr [ %i.cb, %.lr.ph ], [ %.054.ph, %.lr.ph.preheader70 ] ; 2 uses
  %.153 = phi ptr [ %i.ca, %.lr.ph ], [ %.153.ph, %.lr.ph.preheader70 ] ; 2 uses
  %i.bq = load float, ptr %.054, align 4, !tbaa !56 ; 4 uses
  %i.br = fcmp oge float %i.bq, 0.000000e+00
  %i.bs = fcmp ole float %i.bq, 1.000000e+00
  %or.cond.i.i = and i1 %i.br, %i.bs
  %i.bt = fcmp ogt float %i.bq, 0.000000e+00
  %i.bu = uitofp i1 %i.bt to float
  %i.bv = select i1 %or.cond.i.i, float %i.bq, float %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float -2.550000e+02, float 2.555000e+02)
  %i.bx = fptosi float %i.bw to i32
  %i.by = trunc i32 %i.bx to i8
  %i.bz = xor i8 %i.by, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %.153, i64 1 ; 2 uses
  store i8 %i.bz, ptr %.153, align 1, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %.054, i64 4 ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.ab
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !53

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #20
  br label %bb.e

_ZNSt6vectorIhSaIhEED2Ev.exit47:                  ; preds = %._crit_edge59
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #20
  resume { ptr, i32 } %i.cd

bb.e:                                             ; preds = %bb.a, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.039 = phi i1 [ %i.aa, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.039
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi3EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.3") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !65
  br label %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65
  %.fr.i = freeze i32 %i.d                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %.fr.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.i
  %i.k = sub i32 0, %.fr.i
  br label %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !66
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKfiiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 3, i32 noundef 2, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi4EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.4") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !70
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !71
  br label %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %.fr.i = freeze i32 %i.d                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %.fr.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.i
  %i.k = sub i32 0, %.fr.i
  br label %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !72
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKfiiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 4, i32 noundef 6, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @png_create_write_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN7msdfgenL14pngIgnoreErrorEP14png_struct_defPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret void
}

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #6

declare void @png_set_write_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN7msdfgenL8pngWriteEP14png_struct_defPhm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @png_get_io_ptr(ptr noundef %0)
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.a)
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.3) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7msdfgenL8pngFlushEP14png_struct_def(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @png_get_io_ptr(ptr noundef %0)
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  ret void
}

declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @png_set_compression_level(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_set_rows(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_write_png(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen8PngGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @png_destroy_write_struct(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @png_get_io_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind returns_twice }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !4, i64 0}
!11 = !{!"p1 _ZTS14png_struct_def", !8, i64 0}
!12 = !{!"p1 _ZTS12png_info_def", !8, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!14 = !{!"_ZTSN7msdfgen8PngGuardE", !11, i64 0, !12, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 16}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
