Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nrama?download=true
inline.NumInlined: 95
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE = comdat any

@.str = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Found %d phi-psi combinations\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"xr->dih\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/gmxana/nrama.cpp\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"xr->pp\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@interaction_function = external local_unnamed_addr global %"struct.gmx::EnumerationArray.2", align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ftype is not a dihedral\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Dihedral around %d,%d not found in topology. Using mult=%d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z8new_dataP7t_xrama(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = tail call noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.b, ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef %i.g, ptr noundef nonnull %i.h) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL9calc_dihsP7t_xrama(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.i
}

declare noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL9calc_dihsP7t_xrama(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca [3 x float], align 4              ; 3 uses
  %i.e = alloca [3 x float], align 4              ; 3 uses
  %i.f = alloca [3 x float], align 4              ; 3 uses
  %i.g = alloca [3 x float], align 4              ; 3 uses
  %i.h = alloca [3 x float], align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = tail call noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.n) ; 2 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  tail call void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.o, i32 noundef %i.p, ptr noundef nonnull %i.q, ptr noundef %i.s)
  tail call void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.o)
  %i.t = load i32, ptr %0, align 8, !tbaa !21
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw [28 x i8], ptr %i.w, i64 %indvars.iv ; 5 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !18   ; 4 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !23
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !23
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.am
  %i.ao = call noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef %i.ab, ptr noundef %i.af, ptr noundef %i.aj, ptr noundef %i.an, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store float %i.ao, ptr %i.ap, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %0, align 8, !tbaa !21
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef) local_unnamed_addr #1

declare noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z9init_ramaP16gmx_output_env_tPKcS2_P7t_xramai(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !27
  store ptr %2, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.f = invoke noundef ptr @_Z8read_topRKNSt10filesystem7__cxx114pathEP7PbcType(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.e)
          to label %bb.b unwind label %bb.as      ; 10 uses

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.h) #9
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %8, align 8, !tbaa !33     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !34
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #10
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2344 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader.lr.ph.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit

.preheader.lr.ph.i:                               ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 2360
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 2392
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 2352
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %i.w = phi i32 [ %i.o, %.preheader.lr.ph.i ], [ %i.fy, %.loopexit.i ] ; 10 uses
  %.01426.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.am, %.loopexit.i ] ; 2 uses
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !57   ; 5 uses
  %10 = icmp slt i32 %.01426.i, %i.w
  br i1 %10, label %.lr.ph.preheader.i.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i
  %11 = sext i32 %.01426.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %11, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 67, %i.ac
  %.not = icmp eq i8 %i.ab, 67
  br i1 %.not, label %sub_1, label %.lr.ph.i.i.tail

sub_1:                                            ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = sub nsw i32 0, %i.ag
  br label %.lr.ph.i.i.tail

.lr.ph.i.i.tail:                                  ; preds = %.lr.ph.i.i, %sub_1
  %i.ai = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %i.ah, %sub_1 ]
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZL9find_atomPKcPPPcii.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.tail
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %.lr.ph.i.i, !llvm.loop !42

_ZL9find_atomPKcPPPcii.exit.i:                    ; preds = %.lr.ph.i.i.tail
  %i.ak = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.al = icmp eq i64 %indvars.iv.i.i, -1
  br i1 %i.al, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %bb.e

bb.e:                                             ; preds = %_ZL9find_atomPKcPPPcii.exit.i
  %i.am = add nuw nsw i32 %i.ak, 1                ; 4 uses
  %i.an = icmp slt i32 %i.am, %i.w
  br i1 %i.an, label %.lr.ph.preheader.i.1.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit

.lr.ph.preheader.i.1.i:                           ; preds = %bb.e
  %i.ao = sext i32 %i.am to i64
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i.1.i
  %indvars.iv.i.1.i = phi i64 [ %i.ao, %.lr.ph.preheader.i.1.i ], [ %indvars.iv.next.i.1.i, %bb.f ] ; 5 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.i.1.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = zext i8 %i.as to i32
  %i.au = sub nsw i32 78, %i.at
  %.not57 = icmp eq i8 %i.as, 78
  br i1 %.not57, label %sub_135, label %.lr.ph.i.1.i.tail

sub_135:                                          ; preds = %.lr.ph.i.1.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = sub nsw i32 0, %i.ax
  br label %.lr.ph.i.1.i.tail

.lr.ph.i.1.i.tail:                                ; preds = %.lr.ph.i.1.i, %sub_135
  %i.az = phi i32 [ %i.au, %.lr.ph.i.1.i ], [ %i.ay, %sub_135 ]
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZL9find_atomPKcPPPcii.exit.1.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1.i.tail
  %indvars.iv.next.i.1.i = add nsw i64 %indvars.iv.i.1.i, 1 ; 2 uses
  %lftr.wideiv.i.1.i = trunc i64 %indvars.iv.next.i.1.i to i32
  %exitcond.not.i.1.i = icmp eq i32 %i.w, %lftr.wideiv.i.1.i
  br i1 %exitcond.not.i.1.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %.lr.ph.i.1.i, !llvm.loop !42

_ZL9find_atomPKcPPPcii.exit.1.i:                  ; preds = %.lr.ph.i.1.i.tail
  %i.bb = trunc nsw i64 %indvars.iv.i.1.i to i32  ; 3 uses
  %i.bc = icmp eq i64 %indvars.iv.i.1.i, -1
  br i1 %i.bc, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %bb.g

bb.g:                                             ; preds = %_ZL9find_atomPKcPPPcii.exit.1.i
  %i.bd = add nuw nsw i32 %i.bb, 1                ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.w
  br i1 %i.be, label %.lr.ph.preheader.i.2.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit

.lr.ph.preheader.i.2.i:                           ; preds = %bb.g
  %i.bf = sext i32 %i.bd to i64
  br label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %bb.h, %.lr.ph.preheader.i.2.i
  %indvars.iv.i.2.i = phi i64 [ %i.bf, %.lr.ph.preheader.i.2.i ], [ %indvars.iv.next.i.2.i, %bb.h ] ; 4 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.i.2.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !59
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 67, %i.bk
  %.not58 = icmp eq i8 %i.bj, 67
  br i1 %.not58, label %sub_138, label %.lr.ph.i.2.i.tail

sub_138:                                          ; preds = %.lr.ph.i.2.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.bo = zext i8 %i.bn to i32
  %i.bp = sub nsw i32 65, %i.bo
  %.not59 = icmp eq i8 %i.bn, 65
  br i1 %.not59, label %sub_2, label %.lr.ph.i.2.i.tail

sub_2:                                            ; preds = %sub_138
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = sub nsw i32 0, %i.bs
  br label %.lr.ph.i.2.i.tail

.lr.ph.i.2.i.tail:                                ; preds = %.lr.ph.i.2.i, %sub_138, %sub_2
  %i.bu = phi i32 [ %i.bl, %.lr.ph.i.2.i ], [ %i.bp, %sub_138 ], [ %i.bt, %sub_2 ]
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZL9find_atomPKcPPPcii.exit.2.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2.i.tail
  %indvars.iv.next.i.2.i = add nsw i64 %indvars.iv.i.2.i, 1 ; 2 uses
  %lftr.wideiv.i.2.i = trunc i64 %indvars.iv.next.i.2.i to i32
  %exitcond.not.i.2.i = icmp eq i32 %i.w, %lftr.wideiv.i.2.i
  br i1 %exitcond.not.i.2.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %.lr.ph.i.2.i, !llvm.loop !42

_ZL9find_atomPKcPPPcii.exit.2.i:                  ; preds = %.lr.ph.i.2.i.tail
  %i.bw = trunc nsw i64 %indvars.iv.i.2.i to i32  ; 3 uses
  %i.bx = icmp eq i64 %indvars.iv.i.2.i, -1
  br i1 %i.bx, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %bb.i

bb.i:                                             ; preds = %_ZL9find_atomPKcPPPcii.exit.2.i
  %i.by = add nuw nsw i32 %i.bw, 1                ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.w
  br i1 %i.bz, label %.lr.ph.preheader.i.3.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit

.lr.ph.preheader.i.3.i:                           ; preds = %bb.i
  %i.ca = sext i32 %i.by to i64
  br label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %bb.j, %.lr.ph.preheader.i.3.i
  %indvars.iv.i.3.i = phi i64 [ %i.ca, %.lr.ph.preheader.i.3.i ], [ %indvars.iv.next.i.3.i, %bb.j ] ; 4 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.i.3.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !27 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1             ; 2 uses
  %i.cf = zext i8 %i.ce to i32
  %i.cg = sub nsw i32 67, %i.cf
  %.not60 = icmp eq i8 %i.ce, 67
  br i1 %.not60, label %sub_141, label %.lr.ph.i.3.i.tail

sub_141:                                          ; preds = %.lr.ph.i.3.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = sub nsw i32 0, %i.cj
  br label %.lr.ph.i.3.i.tail

.lr.ph.i.3.i.tail:                                ; preds = %.lr.ph.i.3.i, %sub_141
  %i.cl = phi i32 [ %i.cg, %.lr.ph.i.3.i ], [ %i.ck, %sub_141 ]
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZL9find_atomPKcPPPcii.exit.3.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.3.i.tail
  %indvars.iv.next.i.3.i = add nsw i64 %indvars.iv.i.3.i, 1 ; 2 uses
  %lftr.wideiv.i.3.i = trunc i64 %indvars.iv.next.i.3.i to i32
  %exitcond.not.i.3.i = icmp eq i32 %i.w, %lftr.wideiv.i.3.i
  br i1 %exitcond.not.i.3.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %.lr.ph.i.3.i, !llvm.loop !42

_ZL9find_atomPKcPPPcii.exit.3.i:                  ; preds = %.lr.ph.i.3.i.tail
  %i.cn = trunc nsw i64 %indvars.iv.i.3.i to i32  ; 3 uses
  %i.co = icmp eq i64 %indvars.iv.i.3.i, -1
  br i1 %i.co, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %bb.k

bb.k:                                             ; preds = %_ZL9find_atomPKcPPPcii.exit.3.i
  %i.cp = add nuw nsw i32 %i.cn, 1                ; 2 uses
  %i.cq = icmp slt i32 %i.cp, %i.w
  br i1 %i.cq, label %.lr.ph.preheader.i.4.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit

.lr.ph.preheader.i.4.i:                           ; preds = %bb.k
  %i.cr = sext i32 %i.cp to i64
  br label %.lr.ph.i.4.i

.lr.ph.i.4.i:                                     ; preds = %bb.l, %.lr.ph.preheader.i.4.i
  %indvars.iv.i.4.i = phi i64 [ %i.cr, %.lr.ph.preheader.i.4.i ], [ %indvars.iv.next.i.4.i, %bb.l ] ; 4 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.i.4.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !59
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub nsw i32 78, %i.cw
  %.not61 = icmp eq i8 %i.cv, 78
  br i1 %.not61, label %sub_144, label %.lr.ph.i.4.i.tail

sub_144:                                          ; preds = %.lr.ph.i.4.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = sub nsw i32 0, %i.da
  br label %.lr.ph.i.4.i.tail

.lr.ph.i.4.i.tail:                                ; preds = %.lr.ph.i.4.i, %sub_144
  %i.dc = phi i32 [ %i.cx, %.lr.ph.i.4.i ], [ %i.db, %sub_144 ]
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZL9find_atomPKcPPPcii.exit.4.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.4.i.tail
  %indvars.iv.next.i.4.i = add nsw i64 %indvars.iv.i.4.i, 1 ; 2 uses
  %lftr.wideiv.i.4.i = trunc i64 %indvars.iv.next.i.4.i to i32
  %exitcond.not.i.4.i = icmp eq i32 %i.w, %lftr.wideiv.i.4.i
  br i1 %exitcond.not.i.4.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %.lr.ph.i.4.i, !llvm.loop !42

_ZL9find_atomPKcPPPcii.exit.4.i:                  ; preds = %.lr.ph.i.4.i.tail
  %i.de = icmp eq i64 %indvars.iv.i.4.i, -1
  br i1 %i.de, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZL9find_atomPKcPPPcii.exit.4.i
  %i.df = trunc nsw i64 %indvars.iv.i.4.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.dg = load i32, ptr %3, align 8, !tbaa !21
  %i.dh = sext i32 %i.dg to i64
  %i.di = add nsw i64 %i.dh, 2
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.dk = call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 135, ptr noundef %i.dj, i64 noundef range(i64 -2147483646, 2147483650) %i.di, i64 noundef 28) ; 9 uses
  store ptr %i.dk, ptr %i.r, align 8, !tbaa !60
  %i.dl = load i32, ptr %3, align 8, !tbaa !21
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [28 x i8], ptr %i.dk, i64 %i.dm
  store i32 %i.ak, ptr %i.dn, align 4, !tbaa !23
  %i.do = load i32, ptr %3, align 8, !tbaa !21
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [28 x i8], ptr %i.dk, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %i.bb, ptr %i.dr, align 4, !tbaa !23
  %i.ds = load i32, ptr %3, align 8, !tbaa !21
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [28 x i8], ptr %i.dk, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.bw, ptr %i.dv, align 4, !tbaa !23
  %i.dw = load i32, ptr %3, align 8, !tbaa !21
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [28 x i8], ptr %i.dk, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 %i.cn, ptr %i.dz, align 4, !tbaa !23
  %i.ea = load i32, ptr %3, align 8, !tbaa !21
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [28 x i8], ptr %i.dk, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 28
  store i32 %i.bb, ptr %i.ed, align 4, !tbaa !23
  %i.ee = load i32, ptr %3, align 8, !tbaa !21
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [28 x i8], ptr %i.dk, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 32
  store i32 %i.bw, ptr %i.eh, align 4, !tbaa !23
  %i.ei = load i32, ptr %3, align 8, !tbaa !21
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [28 x i8], ptr %i.dk, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 36
  store i32 %i.cn, ptr %i.el, align 4, !tbaa !23
  %i.em = load i32, ptr %3, align 8, !tbaa !21
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [28 x i8], ptr %i.dk, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 40
  store i32 %i.df, ptr %i.ep, align 4, !tbaa !23
  %i.eq = load i32, ptr %3, align 8, !tbaa !21
  %i.er = add nsw i32 %i.eq, 2
  store i32 %i.er, ptr %3, align 8, !tbaa !21
  %i.es = load i32, ptr %i.t, align 8, !tbaa !61
  %i.et = sext i32 %i.es to i64
  %i.eu = add nsw i64 %i.et, 1
  %i.ev = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.ew = call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 146, ptr noundef %i.ev, i64 noundef range(i64 -2147483647, 2147483649) %i.eu, i64 noundef 24) ; 2 uses
  store ptr %i.ew, ptr %i.s, align 8, !tbaa !60
  %i.ex = load i32, ptr %3, align 8, !tbaa !21
  %i.ey = load i32, ptr %i.t, align 8, !tbaa !61
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [24 x i8], ptr %i.ew, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %i.fd = shufflevector <2 x i32> %i.fc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fe = add nsw <2 x i32> %i.fd, <i32 -2, i32 -1>
  store <2 x i32> %i.fe, ptr %i.fb, align 8, !tbaa !23
  store i8 0, ptr %i.fa, align 8, !tbaa !63
  %i.ff = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.fg = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.fh = getelementptr inbounds [36 x i8], ptr %i.fg, i64 %indvars.iv.i.1.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !69
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [32 x i8], ptr %i.ff, i64 %i.fk ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !71
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !72
  %i.fq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.fn, i32 noundef %i.fp) #9 ; 0 uses
  %i.fr = call noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.a)
  %i.fs = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.ft = load i32, ptr %i.t, align 8, !tbaa !61  ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [24 x i8], ptr %i.fs, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fr, ptr %i.fw, align 8, !tbaa !74
  %i.fx = add nsw i32 %i.ft, 1
  store i32 %i.fx, ptr %i.t, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.fy = load i32, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  %i.fz = icmp slt i32 %i.am, %i.fy
  br i1 %i.fz, label %.preheader.i, label %_ZL7get_dihP7t_xramaPK7t_atoms.exit, !llvm.loop !43

_ZL7get_dihP7t_xramaPK7t_atoms.exit:              ; preds = %.preheader.i, %_ZL9find_atomPKcPPPcii.exit.i, %bb.e, %_ZL9find_atomPKcPPPcii.exit.1.i, %bb.g, %_ZL9find_atomPKcPPPcii.exit.2.i, %bb.i, %_ZL9find_atomPKcPPPcii.exit.3.i, %bb.k, %_ZL9find_atomPKcPPPcii.exit.4.i, %.loopexit.i, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ga = load ptr, ptr @stderr, align 8, !tbaa !76
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !61
  %i.gd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.1, i32 noundef %i.gc) #11 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !79 ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %_ZL7get_dihP7t_xramaPK7t_atoms.exit
  %.pre.i = load i32, ptr %3, align 8, !tbaa !21
  br label %.preheader.i21

.lr.ph.i:                                         ; preds = %_ZL7get_dihP7t_xramaPK7t_atoms.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !80
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !84
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.m

.preheader.i21:                                   ; preds = %_ZL6d_compRK5t_dihS1_.exit.thread.i, %..preheader_crit_edge.i
  %i.go = phi i32 [ %.pre.i, %..preheader_crit_edge.i ], [ %i.hl, %_ZL6d_compRK5t_dihS1_.exit.thread.i ] ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph77.i, label %_ZL13get_dih_propsP7t_xramaPK6t_idefi.exit

.lr.ph77.i:                                       ; preds = %.preheader.i21
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre79.i = load ptr, ptr %i.gq, align 8, !tbaa !22
  br label %bb.x

bb.m:                                             ; preds = %_ZL6d_compRK5t_dihS1_.exit.thread.i, %.lr.ph.i
  %.04575.i = phi ptr [ %i.gj, %.lr.ph.i ], [ %i.ja, %_ZL6d_compRK5t_dihS1_.exit.thread.i ] ; 4 uses
  %.04674.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ix, %_ZL6d_compRK5t_dihS1_.exit.thread.i ]
  %i.gr = load i32, ptr %.04575.i, align 4, !tbaa !23
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !86 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq i32 %i.gu, 19
  br i1 %.not.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(61) @.str.6, i8 noundef zeroext 2)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 226) #12
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.ha, %bb.r ], [ %i.gz, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.hb = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.s
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !34
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %bb.au ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %common.resume

bb.t:                                             ; preds = %bb.m
  %i.hg = getelementptr inbounds nuw i8, ptr %.04575.i, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !23 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.04575.i, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !23 ; 2 uses
  %i.hk = load ptr, ptr %i.gm, align 8, !tbaa !22 ; 3 uses
  %i.hl = load i32, ptr %3, align 8, !tbaa !21    ; 3 uses
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr inbounds [28 x i8], ptr %i.hk, i64 %i.hm
  %i.ho = icmp sgt i32 %i.hl, 0
  br i1 %i.ho, label %_ZSt9__advanceIP5t_dihlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIP5t_dihS0_PFbRKS0_S3_EET_S6_S6_RKT0_T1_.exit.i

_ZSt9__advanceIP5t_dihlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.t, %.thread65.i
  %.017.i.i.i = phi i64 [ %i.if, %.thread65.i ], [ %i.hm, %bb.t ] ; 3 uses
  %.01116.i.i.i = phi ptr [ %i.ie, %.thread65.i ], [ %i.hk, %bb.t ] ; 3 uses
  %i.hp = lshr i64 %.017.i.i.i, 1                 ; 5 uses
  %i.hq = getelementptr inbounds nuw [28 x i8], ptr %.01116.i.i.i, i64 %i.hp ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !23 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %i.hh
  br i1 %i.ht, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %_ZSt9__advanceIP5t_dihlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  %i.hv = xor i64 %i.hp, -1
  %i.hw = add nsw i64 %.017.i.i.i, %i.hv
  br label %.thread65.i

bb.u:                                             ; preds = %_ZSt9__advanceIP5t_dihlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.hx = icmp eq i32 %i.hs, %i.hh
  br i1 %i.hx, label %_ZL6d_compRK5t_dihS1_.exit52.i, label %.thread65.i

_ZL6d_compRK5t_dihS1_.exit52.i:                   ; preds = %bb.u
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !23
  %i.ia = icmp slt i32 %i.hz, %i.hj
  %cond.fr.i = freeze i1 %i.ia                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  %i.ic = xor i64 %i.hp, -1
  %i.id = add nsw i64 %.017.i.i.i, %i.ic
  %spec.select.i = select i1 %cond.fr.i, ptr %i.ib, ptr %.01116.i.i.i
  %spec.select73.i = select i1 %cond.fr.i, i64 %i.id, i64 %i.hp
  br label %.thread65.i

.thread65.i:                                      ; preds = %_ZL6d_compRK5t_dihS1_.exit52.i, %bb.u, %.thread.i
  %i.ie = phi ptr [ %.01116.i.i.i, %bb.u ], [ %spec.select.i, %_ZL6d_compRK5t_dihS1_.exit52.i ], [ %i.hu, %.thread.i ] ; 2 uses
  %i.if = phi i64 [ %i.hp, %bb.u ], [ %spec.select73.i, %_ZL6d_compRK5t_dihS1_.exit52.i ], [ %i.hw, %.thread.i ] ; 2 uses
  %i.ig = icmp sgt i64 %i.if, 0
  br i1 %i.ig, label %_ZSt9__advanceIP5t_dihlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIP5t_dihS0_PFbRKS0_S3_EET_S6_S6_RKT0_T1_.exit.i, !llvm.loop !44

_ZSt11lower_boundIP5t_dihS0_PFbRKS0_S3_EET_S6_S6_RKT0_T1_.exit.i: ; preds = %.thread65.i, %bb.t
  %.011.lcssa.i.i.i = phi ptr [ %i.hk, %bb.t ], [ %i.ie, %.thread65.i ] ; 5 uses
  %i.ih = icmp ult ptr %.011.lcssa.i.i.i, %i.hn
  br i1 %i.ih, label %bb.v, label %_ZL6d_compRK5t_dihS1_.exit.thread.i

bb.v:                                             ; preds = %_ZSt11lower_boundIP5t_dihS0_PFbRKS0_S3_EET_S6_S6_RKT0_T1_.exit.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !23 ; 2 uses
  %i.ik = icmp slt i32 %i.hh, %i.ij
  br i1 %i.ik, label %_ZL6d_compRK5t_dihS1_.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.il = icmp eq i32 %i.hh, %i.ij
  br i1 %i.il, label %_ZL6d_compRK5t_dihS1_.exit.i, label %_ZL6d_compRK5t_dihS1_.exit.thread71.i

_ZL6d_compRK5t_dihS1_.exit.i:                     ; preds = %bb.w
  %i.im = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !23
  %i.io = icmp slt i32 %i.hj, %i.in
  br i1 %i.io, label %_ZL6d_compRK5t_dihS1_.exit.thread.i, label %_ZL6d_compRK5t_dihS1_.exit.thread71.i

_ZL6d_compRK5t_dihS1_.exit.thread71.i:            ; preds = %_ZL6d_compRK5t_dihS1_.exit.i, %bb.w
  %i.ip = load ptr, ptr %i.gn, align 8, !tbaa !89
  %i.iq = getelementptr inbounds [48 x i8], ptr %i.ip, i64 %i.gs ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !34
  %i.it = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 16
  store i32 %i.is, ptr %i.it, align 4, !tbaa !90
  %i.iu = load float, ptr %i.iq, align 4, !tbaa !34
  %i.iv = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 20
  store float %i.iu, ptr %i.iv, align 4, !tbaa !91
  br label %_ZL6d_compRK5t_dihS1_.exit.thread.i

_ZL6d_compRK5t_dihS1_.exit.thread.i:              ; preds = %_ZL6d_compRK5t_dihS1_.exit.thread71.i, %_ZL6d_compRK5t_dihS1_.exit.i, %bb.v, %_ZSt11lower_boundIP5t_dihS0_PFbRKS0_S3_EET_S6_S6_RKT0_T1_.exit.i
  %i.iw = add nsw i32 %.04674.i, 1
  %i.ix = add i32 %i.iw, %i.gy                    ; 2 uses
  %i.iy = sext i32 %i.gy to i64
  %i.iz = getelementptr [4 x i8], ptr %.04575.i, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  %i.jb = icmp slt i32 %i.ix, %i.gg
  br i1 %i.jb, label %bb.m, label %.preheader.i21, !llvm.loop !45

bb.x:                                             ; preds = %bb.z, %.lr.ph77.i
  %i.jc = phi i32 [ %i.go, %.lr.ph77.i ], [ %i.js, %bb.z ]
  %i.jd = phi ptr [ %.pre79.i, %.lr.ph77.i ], [ %i.jt, %bb.z ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph77.i ], [ %indvars.iv.next.i, %bb.z ] ; 3 uses
  %i.je = getelementptr inbounds nuw [28 x i8], ptr %i.jd, i64 %indvars.iv.i ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !90
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ji = load ptr, ptr @stderr, align 8, !tbaa !76
end_hunk_0
