Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/anadih?download=true
inline.NumInlined: 274
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2IA256_cS1_EERKT_NS1_6formatE:bb.a
bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !20
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_Z13ana_dih_transPKcS0_PPfiiS0_S1_bPK16gmx_output_env_t(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, i1 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %"class.gmx::ArrayRef", align 8     ; 2 uses
  %i.a = sext i32 %4 to i64
  %i.b = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 164, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 4) ; 5 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i32 %4, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store <8 x i32> splat (i32 3), ptr %i.e, align 4, !tbaa !28
  store <8 x i32> splat (i32 3), ptr %i.f, align 4, !tbaa !28
  store <8 x i32> splat (i32 3), ptr %i.g, align 4, !tbaa !28
  store <8 x i32> splat (i32 3), ptr %i.h, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index21
  store <8 x i32> splat (i32 3), ptr %i.j, align 4, !tbaa !28
  %index.next22 = add nuw i64 %index21, 8         ; 2 uses
  %i.k = icmp eq i64 %index.next22, %n.vec20
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %n.vec20, %wide.trip.count
  br i1 %cmp.n23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 3, ptr %i.l, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @_Z17low_ana_dih_transbPKcbS0_iPPfN3gmx8ArrayRefI7t_dlistEEiiS0_PiS1_bfPK16gmx_output_env_t(i1 noundef zeroext true, ptr noundef %0, i1 noundef zeroext true, ptr noundef %1, i32 noundef 0, ptr noundef %2, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %9, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %i.b, ptr noundef %6, i1 noundef zeroext %7, float noundef 5.000000e-01, ptr noundef %8)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 172, ptr noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17low_ana_dih_transbPKcbS0_iPPfN3gmx8ArrayRefI7t_dlistEEiiS0_PiS1_bfPK16gmx_output_env_t(i1 noundef zeroext %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, i1 noundef zeroext %12, float noundef %13, ptr noundef %14) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca [256 x i8], align 16              ; 7 uses
  %i.e = alloca [4 x ptr], align 16               ; 13 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !32
  store ptr %3, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.f = icmp slt i32 %7, 2
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %7, -1                       ; 3 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !26
  %i.k = load float, ptr %11, align 4, !tbaa !26
  %i.l = fsub float %i.j, %i.k
  %i.m = uitofp nneg i32 %i.g to float
  %i.n = fdiv float %i.l, %i.m                    ; 2 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.8, i64 31, i64 1, ptr %i.o) #29 ; 0 uses
  %_ZL10calc_RBbinfif._ZL9calc_Nbinfif = select i1 %12, ptr @_ZL10calc_RBbinfif, ptr @_ZL9calc_Nbinfif ; 2 uses
  %i.p = sext i32 %8 to i64                       ; 9 uses
  %i.q = icmp sgt i32 %8, 0                       ; 3 uses
  br i1 %i.q, label %.lr.ph.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.r = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 2 uses
  store ptr %i.r, ptr %i.e, align 16, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 2 uses
  store ptr %i.v, ptr %i.u, align 16, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !34
  br label %.split227.us

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.y = zext nneg i32 %8 to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 4 uses
  %i.aa = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 3 uses
  store ptr %i.aa, ptr %i.e, align 16, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %i.z, i1 false), !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.z, i1 false), !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 16, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.z, i1 false), !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 0, i64 %i.z, i1 false), !tbaa !26
  br label %.split227.us

.split227.us:                                     ; preds = %.split.preheader, %.lr.ph.us.preheader
  %i.ah = phi ptr [ %i.x, %.split.preheader ], [ %i.ag, %.lr.ph.us.preheader ] ; 10 uses
  %i.ai = phi ptr [ %i.v, %.split.preheader ], [ %i.ae, %.lr.ph.us.preheader ] ; 10 uses
  %i.aj = phi ptr [ %i.t, %.split.preheader ], [ %i.ac, %.lr.ph.us.preheader ] ; 10 uses
  %i.ak = phi ptr [ %i.r, %.split.preheader ], [ %i.aa, %.lr.ph.us.preheader ] ; 10 uses
  %i.al = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef 228, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef 4) ; 19 uses
  %i.am = zext nneg i32 %7 to i64
  %i.an = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, i32 noundef 229, i64 noundef range(i64 -2147483648, 2147483648) %i.am, i64 noundef 4) ; 15 uses
  br i1 %i.q, label %.lr.ph234, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.split227.us
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.12, i32 noundef 0) #25 ; 0 uses
  br label %bb.h

.lr.ph234:                                        ; preds = %.split227.us
  %i.aq = uitofp nneg i32 %7 to float             ; 4 uses
  %wide.trip.count283 = zext nneg i32 %8 to i64
  %wide.trip.count = zext nneg i32 %7 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.preheader223
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.12, i32 noundef %.2152) #25 ; 0 uses
  %i.at = icmp sgt i32 %.2152, 0
  br i1 %i.at, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.preheader223, %.lr.ph234
  %indvars.iv280 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next281, %.preheader223 ] ; 10 uses
  %.0150232 = phi i32 [ 0, %.lr.ph234 ], [ %.2152, %.preheader223 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv280 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.aw = load float, ptr %i.av, align 4, !tbaa !26
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv280 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = tail call noundef i32 %_ZL10calc_RBbinfif._ZL9calc_Nbinfif(float noundef %i.aw, i32 noundef %i.ay, float noundef %13), !callees !35 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv280 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !26
  %i.bf = fadd float %i.be, 1.000000e+00
  store float %i.bf, ptr %i.bd, align 4, !tbaa !26
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv280 ; 2 uses
  br label %bb.c

.preheader223:                                    ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv280 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !26
  %i.bj = fdiv float %i.bi, %i.aq
  store float %i.bj, ptr %i.bh, align 4, !tbaa !26
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv280 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !26
  %i.bm = fdiv float %i.bl, %i.aq
  store float %i.bm, ptr %i.bk, align 4, !tbaa !26
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv280 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !26
  %i.bp = fdiv float %i.bo, %i.aq
  store float %i.bp, ptr %i.bn, align 4, !tbaa !26
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv280 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !26
  %i.bs = fdiv float %i.br, %i.aq
  store float %i.bs, ptr %i.bq, align 4, !tbaa !26
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.0148229 = phi i32 [ %i.az, %.lr.ph ], [ %.1149, %bb.f ] ; 3 uses
  %.1151228 = phi i32 [ %.0150232, %.lr.ph ], [ %.2152, %bb.f ] ; 3 uses
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !26
  %i.bw = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.bx = tail call noundef i32 %_ZL10calc_RBbinfif._ZL9calc_Nbinfif(float noundef %i.bv, i32 noundef %i.bw, float noundef %13), !callees !35 ; 5 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv280 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !26
  %i.cd = fadd float %i.cc, 1.000000e+00
  store float %i.cd, ptr %i.cb, align 4, !tbaa !26
  %i.ce = icmp eq i32 %.0148229, 0
  br i1 %i.ce, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not165 = icmp eq i32 %i.bx, 0
  %.not166 = icmp eq i32 %.0148229, %i.bx
  %or.cond = select i1 %.not165, i1 true, i1 %.not166
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !28
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !28
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bg, align 4, !tbaa !28
  %i.ck = add nsw i32 %.1151228, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.2152 = phi i32 [ %.1151228, %bb.d ], [ %i.ck, %bb.e ], [ %.1151228, %bb.c ] ; 5 uses
  %.1149 = phi i32 [ %.0148229, %bb.d ], [ %i.bx, %bb.e ], [ %i.bx, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader223, label %bb.c, !llvm.loop !46

bb.g:                                             ; preds = %._crit_edge
  %i.cl = uitofp nneg i32 %7 to float
  %i.cm = fmul float %i.n, %i.cl
  %i.cn = sitofp i32 %8 to float
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = uitofp nneg i32 %.2152 to float
  %i.cq = fdiv float %i.co, %i.cp
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cs = fpext float %i.cq to double
  %i.ct = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.13, double noundef %i.cs) #25 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %bb.g, %._crit_edge
  %i.cu = icmp sgt i32 %4, -3
  br i1 %i.cu, label %.lr.ph254, label %._crit_edge255.split

.lr.ph254:                                        ; preds = %bb.h
  %.sroa.0.0.copyload.i = load ptr, ptr %6, align 8 ; 16 uses
  %.sroa.0.0.copyload.i367 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i167 = load ptr, ptr %i.cv, align 8 ; 5 uses
  %.sroa.0.0.copyload.i167366 = ptrtoaddr ptr %.sroa.0.0.copyload.i167 to i64 ; 2 uses
  %.not221237 = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i167
  br i1 %.not221237, label %._crit_edge255.split, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %.lr.ph254
  %i.cw = add i32 %4, 2
  %smax303 = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 0) ; 2 uses
  %i.cx = add nuw i32 %smax303, 1
  %wide.trip.count304 = zext i32 %i.cx to i64
  %scevgep = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 184
  %i.cy = add i64 %.sroa.0.0.copyload.i167366, -400
  %i.cz = sub i64 %i.cy, %.sroa.0.0.copyload.i367 ; 2 uses
  %i.da = udiv i64 %i.cz, 400                     ; 3 uses
  %i.db = mul nuw i64 %i.da, 400                  ; 2 uses
  %i.dc = zext nneg i32 %smax303 to i64           ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd
  %scevgep368.a = getelementptr i8, ptr %i.df, i64 188
  %i.dg = shl nuw nsw i64 %i.da, 2
  %i.dh = add nuw nsw i64 %i.dg, 4                ; 5 uses
  %scevgep370.a = getelementptr i8, ptr %i.al, i64 %i.dh
  %scevgep372.a = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 256 ; 4 uses
  %i.di = shl nuw nsw i64 %i.dc, 4
  %i.dj = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.db
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %scevgep373.a = getelementptr i8, ptr %i.dk, i64 272 ; 4 uses
  %scevgep375.a = getelementptr i8, ptr %i.ak, i64 %i.dh
  %scevgep378.a = getelementptr i8, ptr %i.aj, i64 %i.dh
  %scevgep381.a = getelementptr i8, ptr %i.ai, i64 %i.dh
  %scevgep384 = getelementptr i8, ptr %i.ah, i64 %i.dh
  %i.dl = and i64 %i.da, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 112
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 184
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 256
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 400 ; 2 uses
  %i.dq = icmp ult i64 %i.cz, 400
  %i.dr = add i64 %.sroa.0.0.copyload.i167366, -400
  %i.ds = sub i64 %i.dr, %.sroa.0.0.copyload.i367 ; 2 uses
  %i.dt = udiv i64 %i.ds, 400
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ds, 6000
  %n.vec = and i64 %i.du, 144115188075855864      ; 4 uses
  %i.dv = mul i64 %n.vec, 400
  %i.dw = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.dv
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %._crit_edge242
  %indvars.iv300 = phi i64 [ 0, %.lr.ph241.preheader ], [ %indvars.iv.next301, %._crit_edge242 ] ; 16 uses
  %.0139251 = phi i32 [ 0, %.lr.ph241.preheader ], [ %.us-phi, %._crit_edge242 ] ; 7 uses
  %i.dx = icmp samesign ult i64 %indvars.iv300, 2
  br i1 %i.dx, label %.lr.ph241.split.us.preheader, label %.lr.ph241.split

.lr.ph241.split.us.preheader:                     ; preds = %.lr.ph241
  %i.dy = sext i32 %.0139251 to i64               ; 5 uses
  br i1 %min.iters.check, label %.lr.ph241.split.us.preheader412, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph241.split.us.preheader
  %i.dz = shl nsw i64 %i.dy, 2                    ; 10 uses
  %scevgep369.a = getelementptr i8, ptr %i.al, i64 %i.dz
  %scevgep371 = getelementptr i8, ptr %scevgep370.a, i64 %i.dz
  %scevgep374.a = getelementptr i8, ptr %i.ak, i64 %i.dz
  %scevgep376 = getelementptr i8, ptr %scevgep375.a, i64 %i.dz
  %scevgep377.a = getelementptr i8, ptr %i.aj, i64 %i.dz
  %scevgep379 = getelementptr i8, ptr %scevgep378.a, i64 %i.dz
  %scevgep380.a = getelementptr i8, ptr %i.ai, i64 %i.dz
  %scevgep382 = getelementptr i8, ptr %scevgep381.a, i64 %i.dz
  %scevgep383.a = getelementptr i8, ptr %i.ah, i64 %i.dz
  %scevgep385 = getelementptr i8, ptr %scevgep384, i64 %i.dz
  %bound0 = icmp ult ptr %scevgep, %scevgep371
  %bound1 = icmp ult ptr %scevgep369.a, %scevgep368.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0386 = icmp ult ptr %scevgep372.a, %scevgep376
  %bound1387 = icmp ult ptr %scevgep374.a, %scevgep373.a
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx = or i1 %found.conflict, %found.conflict388
  %bound0389 = icmp ult ptr %scevgep372.a, %scevgep379
  %bound1390 = icmp ult ptr %scevgep377.a, %scevgep373.a
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %conflict.rdx, %found.conflict391
  %bound0393 = icmp ult ptr %scevgep372.a, %scevgep382
  %bound1394 = icmp ult ptr %scevgep380.a, %scevgep373.a
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  %bound0397 = icmp ult ptr %scevgep372.a, %scevgep385
  %bound1398 = icmp ult ptr %scevgep383.a, %scevgep373.a
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  br i1 %conflict.rdx400, label %.lr.ph241.split.us.preheader412, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ea = add nsw i64 %n.vec, %i.dy               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.sroa.0.0.copyload.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 400, i64 800, i64 1200, i64 1600, i64 2000, i64 2400, i64 2800> ; 2 uses
  %i.eb = add i64 %index, %i.dy                   ; 5 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.eb
  %wide.load = load <8 x i32>, ptr %i.ec, align 4, !tbaa !28, !alias.scope !63
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 184
  %wide.gep401.a = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep, i64 %indvars.iv300
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %wide.load, <8 x ptr> align 4 %wide.gep401.a, <8 x i1> splat (i1 true)), !tbaa !28, !alias.scope !64, !noalias !63
  %wide.gep402 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 256
  %wide.gep403 = getelementptr inbounds nuw [16 x i8], <8 x ptr> %wide.gep402, i64 %indvars.iv300 ; 4 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.eb
  %wide.load404 = load <8 x float>, ptr %i.ed, align 4, !tbaa !26, !alias.scope !65
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load404, <8 x ptr> align 4 %wide.gep403, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !66, !noalias !67
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.eb
  %wide.load405.a = load <8 x float>, ptr %i.ee, align 4, !tbaa !26, !alias.scope !68
  %wide.gep406.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep403, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load405.a, <8 x ptr> align 4 %wide.gep406.a, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !66, !noalias !67
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.eb
  %wide.load407.a = load <8 x float>, ptr %i.ef, align 4, !tbaa !26, !alias.scope !69
  %wide.gep408.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep403, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load407.a, <8 x ptr> align 4 %wide.gep408.a, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !66, !noalias !67
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.eb
  %wide.load409 = load <8 x float>, ptr %i.eg, align 4, !tbaa !26, !alias.scope !70
  %wide.gep410 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep403, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load409, <8 x ptr> align 4 %wide.gep410, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !66, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 3200
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge242.loopexit, label %.lr.ph241.split.us.preheader412

.lr.ph241.split.us.preheader412:                  ; preds = %vector.memcheck, %.lr.ph241.split.us.preheader, %middle.block
  %indvars.iv297.ph = phi i64 [ %i.dy, %vector.memcheck ], [ %i.dy, %.lr.ph241.split.us.preheader ], [ %i.ea, %middle.block ]
  %.sroa.0209.0238.us.ph = phi ptr [ %.sroa.0.0.copyload.i, %vector.memcheck ], [ %.sroa.0.0.copyload.i, %.lr.ph241.split.us.preheader ], [ %i.dw, %middle.block ]
  br label %.lr.ph241.split.us

.lr.ph241.split.us:                               ; preds = %.lr.ph241.split.us.preheader412, %.lr.ph241.split.us
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %.lr.ph241.split.us ], [ %indvars.iv297.ph, %.lr.ph241.split.us.preheader412 ] ; 6 uses
  %.sroa.0209.0238.us = phi ptr [ %i.ez, %.lr.ph241.split.us ], [ %.sroa.0209.0238.us.ph, %.lr.ph241.split.us.preheader412 ] ; 3 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.al, i64 %indvars.iv297
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0209.0238.us, i64 184
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv300
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !28
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0209.0238.us, i64 256
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %indvars.iv300 ; 4 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv297
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !26
  store float %i.ep, ptr %i.en, align 4, !tbaa !26
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv297
  %i.er = load float, ptr %i.eq, align 4, !tbaa !26
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store float %i.er, ptr %i.es, align 4, !tbaa !26
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv297
  %i.eu = load float, ptr %i.et, align 4, !tbaa !26
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.eu, ptr %i.ev, align 4, !tbaa !26
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv297
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store float %i.ex, ptr %i.ey, align 4, !tbaa !26
  %indvars.iv.next298 = add nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0209.0238.us, i64 400 ; 2 uses
  %.not221.us = icmp eq ptr %i.ez, %.sroa.0.0.copyload.i167
  br i1 %.not221.us, label %._crit_edge242.loopexit, label %.lr.ph241.split.us, !llvm.loop !56

.lr.ph241.split:                                  ; preds = %.lr.ph241
  %cond = icmp eq i64 %indvars.iv300, 2
  br i1 %cond, label %.lr.ph241.split.split.us, label %.lr.ph241.split.split.preheader

.lr.ph241.split.split.preheader:                  ; preds = %.lr.ph241.split
  br i1 %lcmp.mod.not.not, label %.lr.ph241.split.split.prol, label %.lr.ph241.split.split.prol.loopexit

.lr.ph241.split.split.prol:                       ; preds = %.lr.ph241.split.split.preheader
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv300
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !28
  %.not164.prol = icmp eq i32 %i.fb, -1
end_hunk_0
begin_hunk_1_@_Z17low_ana_dih_transbPKcbS0_iPPfN3gmx8ArrayRefI7t_dlistEEiiS0_PiS1_bfPK16gmx_output_env_t:bb.a
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !26
  store float %i.gy, ptr %i.gw, align 4, !tbaa !26
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.gq
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !26
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store float %i.ha, ptr %i.hb, align 4, !tbaa !26
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.gq
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !26
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %i.hd, ptr %i.he, align 4, !tbaa !26
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.gq
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !26
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store float %i.hg, ptr %i.hh, align 4, !tbaa !26
  %i.hi = add nsw i32 %.1140239, 1
  br label %.lr.ph241.split.split.1

.lr.ph241.split.split.1:                          ; preds = %bb.l, %.lr.ph241.split.split
  %.2141 = phi i32 [ %i.hi, %bb.l ], [ %.1140239, %.lr.ph241.split.split ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0209.0238, i64 512
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv300
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !28
  %.not164.1 = icmp eq i32 %i.hl, -1
  br i1 %.not164.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph241.split.split.1
  %i.hm = sext i32 %.2141 to i64                  ; 5 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !28
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0209.0238, i64 584
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv300
  store i32 %i.ho, ptr %i.hq, align 4, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0209.0238, i64 656
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %indvars.iv300 ; 4 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.hm
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !26
  store float %i.hu, ptr %i.hs, align 4, !tbaa !26
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.hm
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !26
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  store float %i.hw, ptr %i.hx, align 4, !tbaa !26
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.hm
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store float %i.hz, ptr %i.ia, align 4, !tbaa !26
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.hm
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !26
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store float %i.ic, ptr %i.id, align 4, !tbaa !26
  %i.ie = add nsw i32 %.2141, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph241.split.split.1
  %.2141.1 = phi i32 [ %i.ie, %bb.m ], [ %.2141, %.lr.ph241.split.split.1 ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0209.0238, i64 800 ; 2 uses
  %.not221.1 = icmp eq ptr %i.if, %.sroa.0.0.copyload.i167
  br i1 %.not221.1, label %._crit_edge242, label %.lr.ph241.split.split

._crit_edge255.split:                             ; preds = %._crit_edge242, %.lr.ph254, %bb.h
  br i1 %0, label %._crit_edge.i.i, label %.preheader222

._crit_edge.i.i:                                  ; preds = %._crit_edge255.split
  %i.ig = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %9) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ih = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ih, ptr %16, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ih, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 9, ptr %i.ii, align 8, !tbaa !19
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 25
  store i8 0, ptr %i.ij, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.ik = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ik, ptr %17, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 23, ptr %i.a, align 8, !tbaa !21
  %i.il = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc170 unwind label %bb.q  ; 2 uses

.noexc170:                                        ; preds = %._crit_edge.i.i
  store ptr %i.il, ptr %17, align 8, !tbaa !22
  %i.im = load i64, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.il, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, i64 23, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.im, ptr %i.in, align 8, !tbaa !19
  %i.io = load ptr, ptr %17, align 8, !tbaa !22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im
  store i8 0, ptr %i.ip, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.iq = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %14)
          to label %bb.o unwind label %bb.r       ; 2 uses

bb.o:                                             ; preds = %.noexc170
  %i.ir = load ptr, ptr %17, align 8, !tbaa !22   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ik
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.it = load i64, ptr %i.ik, align 8, !tbaa !20
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.iv = load ptr, ptr %16, align 8, !tbaa !22   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.ih
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ix = load i64, ptr %i.ih, align 8, !tbaa !20
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.iz = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull %i.ja) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.jb = load ptr, ptr %15, align 8, !tbaa !22   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph257.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !20
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #27
  br label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %wide.trip.count310 = zext nneg i32 %7 to i64
  br label %.lr.ph257

._crit_edge258:                                   ; preds = %.lr.ph257
  call void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.iq)
  br label %.preheader222

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.r:                                             ; preds = %.noexc170
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %17, align 8, !tbaa !22   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ik
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.r
  %i.jk = load i64, ptr %i.ik, align 8, !tbaa !20
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.q
  %.pn = phi { ptr, i32 } [ %i.jg, %bb.q ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.jh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.jm = load ptr, ptr %16, align 8, !tbaa !22   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.ih
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.jo = load i64, ptr %i.ih, align 8, !tbaa !20
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.z

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv306 = phi i64 [ 0, %.lr.ph257.preheader ], [ %indvars.iv.next307, %.lr.ph257 ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv306
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !26
  %i.js = fpext float %i.jr to double
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv306
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !28
  %i.jv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.16, double noundef %i.js, i32 noundef %i.ju) #24 ; 0 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next307, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !58

.preheader222:                                    ; preds = %._crit_edge258, %._crit_edge255.split
  %21 = zext nneg i32 %7 to i64
  %22 = shl nuw nsw i64 %21, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %22, i1 false), !tbaa !28
  br i1 %i.q, label %.lr.ph263.preheader, label %.preheader

.lr.ph263.preheader:                              ; preds = %.preheader222
  %wide.trip.count319 = zext nneg i32 %8 to i64   ; 2 uses
  %xtraiter416 = and i64 %wide.trip.count319, 7   ; 3 uses
  %i.jw = icmp ult i32 %8, 8
  br i1 %i.jw, label %.lr.ph263.epil.preheader, label %.lr.ph263.preheader.new

.lr.ph263.preheader.new:                          ; preds = %.lr.ph263.preheader
  %unroll_iter = and i64 %wide.trip.count319, 2147483640
  br label %.lr.ph263

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph263
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.preheader, label %.lr.ph263.epil.preheader

.lr.ph263.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph263.preheader
  %indvars.iv316.epil.init = phi i64 [ 0, %.lr.ph263.preheader ], [ %indvars.iv.next317.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod418 = icmp ne i64 %xtraiter416, 0
  call void @llvm.assume(i1 %lcmp.mod418)
  br label %.lr.ph263.epil

.lr.ph263.epil:                                   ; preds = %.lr.ph263.epil, %.lr.ph263.epil.preheader
  %indvars.iv316.epil = phi i64 [ %indvars.iv316.epil.init, %.lr.ph263.epil.preheader ], [ %indvars.iv.next317.epil, %.lr.ph263.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph263.epil.preheader ], [ %epil.iter.next, %.lr.ph263.epil ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316.epil
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !28
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !28
  %i.kc = add nsw i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !28
  %indvars.iv.next317.epil = add nuw nsw i64 %indvars.iv316.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter416
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph263.epil, !llvm.loop !59

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph263.epil, %.preheader222
  %i.kd = zext nneg i32 %7 to i64
  br label %bb.s

.lr.ph263:                                        ; preds = %.lr.ph263, %.lr.ph263.preheader.new
  %indvars.iv316 = phi i64 [ 0, %.lr.ph263.preheader.new ], [ %indvars.iv.next317.7, %.lr.ph263 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph263.preheader.new ], [ %niter.next.7, %.lr.ph263 ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !28
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !28
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !28
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !28
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !28
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !28
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !28
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ku ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !28
  %i.kx = add nsw i32 %i.kw, 1
  store i32 %i.kx, ptr %i.kv, align 4, !tbaa !28
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !28
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.lb ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !28
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !28
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !28
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.li ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !28
  %i.ll = add nsw i32 %i.lk, 1
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !28
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 20
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !28
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !28
  %i.ls = add nsw i32 %i.lr, 1
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !28
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !28
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.lw ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !28
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lx, align 4, !tbaa !28
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv316
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 28
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !28
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !28
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !28
  %indvars.iv.next317.7 = add nuw nsw i64 %indvars.iv316, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph263, !llvm.loop !60

bb.s:                                             ; preds = %.preheader, %bb.s
  %indvars.iv324.a = phi i32 [ %i.g, %.preheader ], [ %indvars.iv.next325.a, %bb.s ] ; 2 uses
  %indvars.iv321 = phi i64 [ %i.kd, %.preheader ], [ %indvars.iv.next322, %bb.s ] ; 3 uses
  %indvars.iv.next322 = add nsw i64 %indvars.iv321, -1 ; 2 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.an, i64 %indvars.iv.next322
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !28
  %i.mj = icmp eq i32 %i.mi, 0
  %i.mk = icmp ne i64 %indvars.iv321, 0
  %i.ml = and i1 %i.mk, %i.mj
  %indvars.iv.next325.a = add i32 %indvars.iv324.a, -1
  br i1 %i.ml, label %bb.s, label %bb.t, !llvm.loop !61

bb.t:                                             ; preds = %bb.s
  %i.mm = uitofp nneg i32 %7 to float
  %i.mn = fmul float %i.n, %i.mm
  br i1 %2, label %._crit_edge.i.i181, label %.loopexit.loopexit

._crit_edge.i.i181:                               ; preds = %bb.t
  %i.mo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %9) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.mp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.mp, ptr %19, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.mp, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 9, ptr %i.mq, align 8, !tbaa !19
  %i.mr = getelementptr inbounds nuw i8, ptr %19, i64 25
  store i8 0, ptr %i.mr, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.ms = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.ms, ptr %20, align 8, !tbaa !16
  store i8 35, ptr %i.ms, align 8, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.mt, align 8, !tbaa !19
  %i.mu = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.mu, align 1, !tbaa !20
  %i.mv = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %14)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %._crit_edge.i.i181
  %i.mw = load ptr, ptr %20, align 8, !tbaa !22   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.ms
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.u
  %i.my = load i64, ptr %i.ms, align 8, !tbaa !20
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.na = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.mp
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.nc = load i64, ptr %i.mp, align 8, !tbaa !20
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.ne = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i195 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i195, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i196, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ne, ptr noundef nonnull %i.nf) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i196

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i196: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.ng = load ptr, ptr %18, align 8, !tbaa !22   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i196
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !20
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #27
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit199

_ZNSt10filesystem7__cxx114pathD2Ev.exit199:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
end_hunk_1
