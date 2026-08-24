Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/paragraphs?download=true
inline.NumInlined: 2374
inline.NumDeleted: 1196
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5vcpkg10Paragraphs30try_load_builtin_port_requiredERKNS_18ReadOnlyFilesystemENS_10StringViewERKNS_4PathE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.aw = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !34
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #23
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZN5vcpkg10Paragraphs26builtin_port_spdx_locationB5cxx11ENS_10StringViewE.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg12PortLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.h ], [ %i.bc, %bb.g ] ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.p
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.i
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !34
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bi = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.b
  br i1 %i.bj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !34
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #23
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bb, %bb.f ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.k, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bm = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZN5vcpkg4PathD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %.body
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !34
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #23
  br label %_ZN5vcpkg4PathD2Ev.exit32

_ZN5vcpkg4PathD2Ev.exit32:                        ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5vcpkg12PortLocationC1EONS_4PathEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS_14PortSourceKindENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef byval(%"struct.vcpkg::StringView") align 8) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg12PortLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !34
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.v = load i64, ptr %i.t, align 8, !tbaa !34
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg10Paragraphs23try_load_cached_packageERKNS_18ReadOnlyFilesystemERKNS_4PathERKNS_11PackageSpecE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::ExpectedT.110") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.vcpkg::msg::TagArg.125", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 5 uses
  %6 = alloca %"struct.fmt::v12::detail::named_arg.306", align 8 ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::named_arg.306", align 8 ; 5 uses
  %8 = alloca %"struct.vcpkg::StatsTimer", align 8 ; 7 uses
  %9 = alloca %"struct.vcpkg::Path", align 8      ; 11 uses
  %10 = alloca %"struct.vcpkg::ExpectedT.69", align 8 ; 19 uses
  %11 = alloca %"struct.vcpkg::BinaryControlFile", align 8 ; 40 uses
  %12 = alloca %"struct.vcpkg::BinaryParagraph", align 8 ; 6 uses
  %13 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 8 uses
  %14 = alloca %"struct.vcpkg::BinaryParagraph", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr @_ZL18g_load_ports_stats, ptr %8, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @_ZN5vcpkg12ElapsedTimerC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.5, i64 7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg10Paragraphs14get_paragraphsB5cxx11ERKNS_18ReadOnlyFilesystemERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.69") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !177, !range !40, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNR5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEE5errorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.f, ptr %11, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !29
  store i8 0, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr @_ZN5vcpkg7Triplet16DEFAULT_INSTANCEE, ptr %i.h, align 8, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.i) #22
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 4 uses
  store i64 0, ptr %i.m, align 8, !tbaa !29
  store i8 0, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 208 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 224 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  store ptr %i.p, ptr %i.o, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 216 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !29
  store i8 0, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 240 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.s = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #22 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = load ptr, ptr %10, align 8, !tbaa !187
  invoke void @_ZN5vcpkg15BinaryParagraphC1ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %12, ptr %i.t, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef nonnull align 8 dereferenceable(240) ptr @_ZN5vcpkg15BinaryParagraphaSEOS0_(ptr noundef nonnull align 8 dereferenceable(240) %11, ptr noundef nonnull align 8 dereferenceable(240) %12) #22 ; 0 uses
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.x = invoke noundef zeroext i1 @_ZN5vcpkgeqERKNS_11PackageSpecES2_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %.sroa.08.0.copyload = load i64, ptr @_ZN5vcpkg17msgMismatchedSpecE, align 8, !tbaa !41
  %i.y = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.z, ptr %4, align 8, !noalias !291
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !291
  %i.ac = load ptr, ptr @_ZN5vcpkg3msg6path_t4nameE, align 8, !tbaa !42, !noalias !291
  store ptr %i.ac, ptr %5, align 8, !noalias !291
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.ad, align 8, !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !291
  %i.ae = load ptr, ptr @_ZN5vcpkg3msg10expected_t4nameE, align 8, !tbaa !42, !noalias !291
  store ptr %i.ae, ptr %6, align 8, !noalias !291
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.af, align 8, !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !291
  %i.ag = load ptr, ptr @_ZN5vcpkg3msg8actual_t4nameE, align 8, !tbaa !42, !noalias !291
  store ptr %i.ag, ptr %7, align 8, !noalias !291
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %11, ptr %i.ah, align 8, !noalias !291
  invoke void @_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEENS6_IcNS_11PackageSpecEEESA_EEENS_15LocalizedStringEmDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %13, i64 noundef %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !38
  %i.aj = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !29 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.aj, ptr %0, align 8, !tbaa !30
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !34
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %bb.ah

bb.j:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit50

bb.k:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.l:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.aj

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i, %bb.p, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.n:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.aj

bb.o:                                             ; preds = %bb.f
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %.sroa.gep, align 8, !tbaa !194
  %i.ax = load ptr, ptr %10, align 8, !tbaa !187
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  %i.bc = add nsw i64 %i.bb, -1                   ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 38430716820228232
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 256 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !294
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !297 ; 4 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 240
  %i.bl = icmp ult i64 %i.bk, %i.bc
  br i1 %i.bl, label %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 248 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !298 ; 3 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bi
  %i.bq = mul nuw nsw i64 %i.bc, 240
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #28
          to label %.noexc40 unwind label %bb.m   ; 4 uses

.noexc40:                                         ; preds = %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bg, %i.bn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc40, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.br, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.bg, %.noexc40 ] ; 3 uses
  call void @_ZN5vcpkg15BinaryParagraphC2EOS0_(ptr noundef nonnull align 8 dereferenceable(240) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(240) %.0911.i.i.i.i) #22
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %.0911.i.i.i.i) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 240 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 240
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !299

_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !297
  br label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i, %.noexc40
  %i.bu = phi ptr [ %.pre.i, %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i ], [ %i.bg, %.noexc40 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bu, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.bv = load ptr, ptr %i.be, align 8, !tbaa !294
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #23
  br label %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.br, ptr %i.r, align 8, !tbaa !297
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store ptr %i.bz, ptr %i.bm, align 8, !tbaa !298
  %i.ca = getelementptr inbounds nuw [240 x i8], ptr %i.br, i64 %i.bc
  store ptr %i.ca, ptr %i.be, align 8, !tbaa !294
  %.pre63.a = load ptr, ptr %.sroa.gep, align 8, !tbaa !194
  %.pre64.a = load ptr, ptr %10, align 8, !tbaa !187
  %.pre77.a = ptrtoint ptr %.pre63.a to i64
  %.pre78 = ptrtoint ptr %.pre64.a to i64
  %.pre80 = sub i64 %.pre77.a, %.pre78
  %.pre82 = sdiv exact i64 %.pre80, 48
  br label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit: ; preds = %bb.q, %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi83 = phi i64 [ %i.bb, %bb.q ], [ %.pre82, %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cb = icmp ugt i64 %.pre-phi83, 1
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 248 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 176
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 200
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 208 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 224 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 216 ; 3 uses
  br label %bb.w

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cy, ptr %0, align 8, !tbaa !38
  %i.cz = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.f
  br i1 %i.da, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51.a

bb.s:                                             ; preds = %._crit_edge
  %i.db = load i64, ptr %i.g, align 8, !tbaa !29  ; 3 uses
  %i.dc = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw nsw i64 %i.db, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.dd, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51.a: ; preds = %._crit_edge
  store ptr %i.cz, ptr %0, align 8, !tbaa !30
  %i.de = load i64, ptr %i.f, align 8, !tbaa !34
  store i64 %i.de, ptr %i.cy, align 8, !tbaa !34
  %.pre69 = load i64, ptr %i.g, align 8, !tbaa !29
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZN5vcpkg11PackageSpecC2EOS0_.exit.i:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51.a, %bb.s
  %i.df = phi i64 [ %.pre69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51.a ], [ %i.db, %bb.s ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !29
  store ptr %i.f, ptr %11, align 8, !tbaa !30
  store i64 0, ptr %i.g, align 8, !tbaa !29
  store i8 0, ptr %i.f, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = load i64, ptr %i.h, align 8, !tbaa !300
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !300
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !38
  %i.dl = load ptr, ptr %i.i, align 8, !tbaa !30  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

bb.t:                                             ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !29 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !30
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !34
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !34
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.pre71.a = load i64, ptr %.phi.trans.insert70, align 8, !tbaa !29
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i

_ZN5vcpkg7VersionC2EOS0_.exit.i:                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i, %bb.t
  %i.dt = phi i64 [ %.pre71.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i ], [ %i.dp, %bb.t ]
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !29
  store ptr %i.dm, ptr %i.i, align 8, !tbaa !30
  store i64 0, ptr %i.du, align 8, !tbaa !29
  store i8 0, ptr %i.dm, align 8, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !301
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !301
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ea = load <2 x ptr>, ptr %i.j, align 8, !tbaa !83
  store <2 x ptr> %i.ea, ptr %i.dz, align 8, !tbaa !83
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !82
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !83
  store <2 x ptr> %i.eg, ptr %i.ee, align 8, !tbaa !83
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !82
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !38
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !30  ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.l
  br i1 %i.en, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.u:                                             ; preds = %_ZN5vcpkg7VersionC2EOS0_.exit.i
  %i.eo = load i64, ptr %i.m, align 8, !tbaa !29  ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionC2EOS0_.exit.i
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !30
  %i.er = load i64, ptr %i.l, align 8, !tbaa !34
  store i64 %i.er, ptr %i.el, align 8, !tbaa !34
  %.pre72.a = load i64, ptr %i.m, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.u
  %i.es = phi i64 [ %.pre72.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eo, %bb.u ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.es, ptr %i.et, align 8, !tbaa !29
  store ptr %i.l, ptr %i.k, align 8, !tbaa !30
  store i64 0, ptr %i.m, align 8, !tbaa !29
  store i8 0, ptr %i.l, align 8, !tbaa !34
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ev = load <2 x ptr>, ptr %i.n, align 8, !tbaa !83
  store <2 x ptr> %i.ev, ptr %i.eu, align 8, !tbaa !83
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !82
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 184 ; 2 uses
  %i.fb = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !302
  store <2 x ptr> %i.fb, ptr %i.ez, align 8, !tbaa !302
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 200
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !304
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !38
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !30  ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.p
  br i1 %i.fi, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.fj = load i64, ptr %i.q, align 8, !tbaa !29  ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fk)
  %i.fl = add nuw nsw i64 %i.fj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fg, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.fl, i1 false)
end_hunk_0
