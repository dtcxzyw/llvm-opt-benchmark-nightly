Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CIrrDeviceSDL?download=true
inline.NumInlined: 1226
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN13CIrrDeviceSDL5sleepEjb:bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not = xor i1 %2, true
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !222  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  tail call void @SDL_Delay(i32 noundef %1)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !222  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @SDL_Delay(i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN13CIrrDeviceSDL16setWindowCaptionEPKw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87
  store i8 0, ptr %i.a, align 8, !tbaa !88
  %i.c = invoke noundef i64 @_ZN4core13wStringToUTF8ERNS_6stringIcEEPKw(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = load ptr, ptr %2, align 8, !tbaa !89
  invoke void @SDL_SetWindowTitle(ptr noundef %i.e, ptr noundef %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.a, align 8, !tbaa !88
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #30
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZN4core6stringIcED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !88
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #30
  br label %_ZN4core6stringIcED2Ev.exit5

_ZN4core6stringIcED2Ev.exit5:                     ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4core13wStringToUTF8ERNS_6stringIcEEPKw(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = tail call noundef i64 @wcslen(ptr noundef nonnull %1) #31
  call void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %i.a, ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !86
  %i.c = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87   ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZN4core6stringIcEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %2, align 8, !tbaa !89
  %i.j = load i64, ptr %i.d, align 8, !tbaa !88
  store i64 %i.j, ptr %i.b, align 8, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !87
  br label %_ZN4core6stringIcEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4core6stringIcEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !87
  store ptr %i.d, ptr %3, align 8, !tbaa !89
  store i64 0, ptr %i.l, align 8, !tbaa !87
  store i8 0, ptr %i.d, align 8, !tbaa !88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4core6stringIcEaSERKS1_.exit unwind label %bb.c

_ZN4core6stringIcEaSERKS1_.exit:                  ; preds = %_ZN4core6stringIcEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIcEaSERKS1_.exit
  %i.p = load i64, ptr %i.b, align 8, !tbaa !88
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #30
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %_ZN4core6stringIcEaSERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !88
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !87
  %i.x = and i64 %i.w, 4294967295
  ret i64 %i.x

bb.c:                                             ; preds = %_ZN4core6stringIcEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZN4core6stringIcED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.c
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !88
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZN4core6stringIcED2Ev.exit7

_ZN4core6stringIcED2Ev.exit7:                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  %i.ad = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZN4core6stringIcED2Ev.exit7
  %i.af = load i64, ptr %i.d, align 8, !tbaa !88
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZN4core6stringIcED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.y
}

declare void @SDL_SetWindowTitle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13CIrrDeviceSDL13setWindowIconEPKN5video6IImageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !142  ; 2 uses
  %i.f = load i32, ptr %i.c, align 4, !tbaa !141  ; 2 uses
  %i.g = tail call ptr @SDL_CreateRGBSurface(i32 noundef 0, i32 noundef %i.f, i32 noundef %i.e, i32 noundef 32, i32 noundef 16711680, i32 noundef 65280, i32 noundef 255, i32 noundef -16777216) ; 7 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.48, i32 noundef 3)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @SDL_LockSurface(ptr noundef nonnull %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !226
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !227
  %i.m = load ptr, ptr %1, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef %i.j, i32 noundef %i.f, i32 noundef %i.e, i32 noundef 3, i32 noundef %i.l) ; 2 uses
  tail call void @SDL_UnlockSurface(ptr noundef nonnull %i.g)
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.49, i32 noundef 3)
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void @SDL_SetWindowIcon(ptr noundef %i.q, ptr noundef nonnull %i.g)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  tail call void @SDL_FreeSurface(ptr noundef nonnull %i.g)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ %i.p, %.sink.split ]
  ret i1 %.2
}

declare ptr @SDL_CreateRGBSurface(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SDL_LockSurface(ptr noundef) local_unnamed_addr #3

declare void @SDL_UnlockSurface(ptr noundef) local_unnamed_addr #3

declare void @SDL_FreeSurface(ptr noundef) local_unnamed_addr #3

declare void @SDL_SetWindowIcon(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN13CIrrDeviceSDL11closeDeviceEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(405) initializes((232, 233)) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.a, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN13CIrrDeviceSDL12setResizableEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(405) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = zext i1 %1 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !82, !range !112, !noundef !113
  %.not = icmp eq i8 %i.d, %i.a
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %.not4 = icmp eq ptr %i.f, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_SetWindowResizable(ptr noundef nonnull %i.f, i32 noundef %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 %i.a, ptr %i.c, align 4, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare void @SDL_SetWindowResizable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN13CIrrDeviceSDL14minimizeWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_MinimizeWindow(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_MinimizeWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN13CIrrDeviceSDL14maximizeWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_MaximizeWindow(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_MaximizeWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN13CIrrDeviceSDL17getWindowPositionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress uwtable
define void @_ZN13CIrrDeviceSDL13restoreWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_RestoreWindow(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_RestoreWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK13CIrrDeviceSDL17isWindowMaximizedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @SDL_GetWindowFlags(ptr noundef nonnull %i.b)
  %i.d = and i32 %i.c, 128
  %i.e = icmp ne i32 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

declare i32 @SDL_GetWindowFlags(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK13CIrrDeviceSDL12isFullscreenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @SDL_GetWindowFlags(ptr noundef nonnull %i.b)
  %i.d = and i32 %i.c, 4097
  %i.e = icmp ne i32 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13CIrrDeviceSDL13setFullscreenEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i = select i1 %1, i32 4097, i32 0
  %i.c = tail call i32 @SDL_SetWindowFullscreen(ptr noundef nonnull %i.b, i32 noundef %..i)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @SDL_GetError()
  tail call void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.50, ptr noundef %i.e, i32 noundef 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

declare i32 @SDL_SetWindowFullscreen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK13CIrrDeviceSDL15isWindowVisibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.b = load i8, ptr %i.a, align 4, !tbaa !143, !range !112, !noundef !113
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK13CIrrDeviceSDL19supportsTouchEventsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK13CIrrDeviceSDL14isWindowActiveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(405) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = tail call i32 @SDL_GetWindowFlags(ptr noundef %i.b)
  %i.d = and i32 %i.c, 516
end_hunk_0
