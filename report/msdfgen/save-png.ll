Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/save-png?download=true
begin_hunk_0_@_ZN7msdfgenL7pngSaveEPKhiiiiPKc:bb.a
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !24
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.af = mul nsw i64 %indvars.iv.next.2, %i.p
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !27

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
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !32
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !33
  br label %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %i.d
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %.pre, i64 %i.i
  %i.k = sub nsw i32 0, %i.d
  br label %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 2, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIhLi4EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.1") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.b, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre1 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !38
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre3 = load i32, ptr %.phi.trans.insert2, align 8, !tbaa !39
  br label %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %i.d
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %.pre, i64 %i.i
  %i.k = sub nsw i32 0, %i.d
  br label %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre3, %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ %.pre1, %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.f, %bb.b ]
  %i.n = phi ptr [ %.pre, %._ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %i.q = tail call fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.l, i32 noundef 6, ptr noundef %1)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi1EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.2") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %i.d
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.i
  %i.k = sub nsw i32 0, %i.d
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
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
  store i8 0, ptr %i.i, align 1, !tbaa !48
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
  %i.n = sext i32 %i.e to i64
  %i.o = sext i32 %3 to i64                       ; 5 uses
  %.idx = shl nsw i64 %i.n, 2                     ; 2 uses
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = add i64 %.idx, %i.a                      ; 2 uses
  %i.r = shl nsw i64 %i.o, 2
  %i.s = add i64 %i.a, 4                          ; 2 uses
  %i.t = xor i64 %i.a, -1                         ; 2 uses
  %i.u = mul nsw i64 %i.o, -4
  %i.v = shl nsw i64 %i.o, 2
  %7 = mul nsw i64 %i.o, -4
  br label %bb.d

._crit_edge59:                                    ; preds = %._crit_edge, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.w = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL7pngSaveEPKhiiiiPKc(ptr noundef nonnull %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %i.e, i32 noundef %5, ptr noundef %6)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit47

bb.d:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 5 uses
  %.03357 = phi i32 [ 0, %.lr.ph58 ], [ %i.ax, %._crit_edge ]
  %.03456 = phi ptr [ %0, %.lr.ph58 ], [ %i.aw, %._crit_edge ] ; 7 uses
  %.03555 = phi ptr [ %i.i, %.lr.ph58 ], [ %.1.lcssa, %._crit_edge ] ; 7 uses
  %8 = mul i64 %i.v, %indvar                      ; 2 uses
  %9 = add i64 %i.q, %8
  %10 = add i64 %i.s, %8
  %umax69 = tail call i64 @llvm.umax.i64(i64 %9, i64 %10)
  %11 = mul i64 %7, %indvar
  %12 = add i64 %11, %i.t
  %13 = add i64 %umax69, %12                      ; 2 uses
  %14 = lshr i64 %13, 2
  %15 = add nuw nsw i64 %14, 1                    ; 2 uses
  %i.x = mul i64 %i.r, %indvar                    ; 3 uses
  %i.y = add i64 %i.q, %i.x
  %i.z = add i64 %i.s, %i.x
  %umax = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %i.aa = mul i64 %i.u, %indvar
  %i.ab = add i64 %i.aa, %i.t
  %i.ac = add i64 %umax, %i.ab                    ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = getelementptr i8, ptr %0, i64 %i.x
  %scevgep67.a = getelementptr i8, ptr %i.ae, i64 4
  %i.af = and i64 %i.ac, -4
  %scevgep68 = getelementptr i8, ptr %scevgep67.a, i64 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %.03456, i64 %.idx
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %min.iters.check = icmp ult i64 %13, 12
  br i1 %min.iters.check, label %.lr.ph.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %.03555, i64 1
  %scevgep66 = getelementptr i8, ptr %scevgep, i64 %i.ad
  %bound0 = icmp ult ptr %.03555, %scevgep68
  %bound1 = icmp ult ptr %.03456, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %15, 9223372036854775804       ; 4 uses
  %i.ah = shl i64 %n.vec, 2
  %i.ai = getelementptr i8, ptr %.03456, i64 %i.ah
  %i.aj = getelementptr i8, ptr %.03555, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.03456, i64 %i.ak
  %next.gep70 = getelementptr i8, ptr %.03555, i64 %index
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !49, !alias.scope !51 ; 4 uses
  %i.al = fcmp oge <4 x float> %wide.load, zeroinitializer
  %i.am = fcmp ole <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.an = and <4 x i1> %i.al, %i.am
  %i.ao = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %i.ap = uitofp <4 x i1> %i.ao to <4 x float>
  %i.aq = select <4 x i1> %i.an, <4 x float> %wide.load, <4 x float> %i.ap
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float -2.550000e+02), <4 x float> splat (float 2.555000e+02))
  %i.as = fptosi <4 x float> %i.ar to <4 x i32>
  %i.at = trunc <4 x i32> %i.as to <4 x i8>
  %i.au = xor <4 x i8> %i.at, splat (i8 -1)
  store <4 x i8> %i.au, ptr %next.gep70, align 1, !tbaa !48, !alias.scope !54, !noalias !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %15, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader72

.lr.ph.preheader72:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03254.ph = phi ptr [ %.03456, %vector.memcheck ], [ %.03456, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  %.153.ph = phi ptr [ %.03555, %vector.memcheck ], [ %.03555, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.1.lcssa = phi ptr [ %.03555, %bb.d ], [ %i.aj, %middle.block ], [ %i.bi, %.lr.ph ]
  %i.aw = getelementptr [4 x i8], ptr %.03456, i64 %i.o
  %i.ax = add nuw nsw i32 %.03357, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge59, label %bb.d, !llvm.loop !59

.lr.ph:                                           ; preds = %.lr.ph.preheader72, %.lr.ph
  %.03254 = phi ptr [ %i.bj, %.lr.ph ], [ %.03254.ph, %.lr.ph.preheader72 ] ; 2 uses
  %.153 = phi ptr [ %i.bi, %.lr.ph ], [ %.153.ph, %.lr.ph.preheader72 ] ; 2 uses
  %i.ay = load float, ptr %.03254, align 4, !tbaa !49 ; 4 uses
  %i.az = fcmp oge float %i.ay, 0.000000e+00
  %i.ba = fcmp ole float %i.ay, 1.000000e+00
  %or.cond.i.i = and i1 %i.az, %i.ba
  %i.bb = fcmp ogt float %i.ay, 0.000000e+00
  %i.bc = uitofp i1 %i.bb to float
  %i.bd = select i1 %or.cond.i.i, float %i.ay, float %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float -2.550000e+02, float 2.555000e+02)
  %i.bf = fptosi float %i.be to i32
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = xor i8 %i.bg, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %.153, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.153, align 1, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %.03254, i64 4 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.ag
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !60

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #20
  br label %bb.e

_ZNSt6vectorIhSaIhEED2Ev.exit47:                  ; preds = %._crit_edge59
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #20
  resume { ptr, i32 } %i.bl

bb.e:                                             ; preds = %bb.a, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.0 = phi i1 [ %i.w, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi3EEEPKc(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapConstSection.3") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %i.d
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.i
  %i.k = sub nsw i32 0, %i.d
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = mul nsw i32 %i.g, %i.d
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.i
  %i.k = sub nsw i32 0, %i.d
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.c, null
end_hunk_0
