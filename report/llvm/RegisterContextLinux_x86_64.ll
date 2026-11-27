Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterContextLinux_x86_64?download=true
inline.NumInlined: 319
inline.NumDeleted: 163
begin_hunk_0
@.str.42 = private unnamed_addr constant [5 x i8] c"r14d\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared15g_contained_r14E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared16g_invalidate_r14E = external global [0 x i32], align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"r15d\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared15g_contained_r15E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared16g_invalidate_r15E = external global [0 x i32], align 4
@.str.44 = private unnamed_addr constant [3 x i8] c"ax\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"bx\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"r8w\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"r9w\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"r10w\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"r11w\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"r12w\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"r13w\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"r14w\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"r15w\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"ah\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"bh\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"dil\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"sil\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"bpl\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"spl\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"r8l\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"r9l\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"r10l\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"r11l\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"r12l\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"r13l\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"r14l\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"r15l\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"fctrl\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"ftag\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"fop\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"fiseg\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared15g_contained_fipE = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared16g_invalidate_fipE = external global [0 x i32], align 4
@.str.85 = private unnamed_addr constant [6 x i8] c"fioff\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"fip\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"foseg\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared15g_contained_fdpE = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared16g_invalidate_fdpE = external global [0 x i32], align 4
@.str.88 = private unnamed_addr constant [6 x i8] c"fooff\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"fdp\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"mxcsr\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"mxcsrmask\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"st0\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"st1\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"st2\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"st3\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"st4\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"st5\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"st6\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"st7\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"mm0\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st0_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st0_64E = external global [0 x i32], align 4
@.str.101 = private unnamed_addr constant [4 x i8] c"mm1\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st1_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st1_64E = external global [0 x i32], align 4
@.str.102 = private unnamed_addr constant [4 x i8] c"mm2\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st2_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st2_64E = external global [0 x i32], align 4
@.str.103 = private unnamed_addr constant [4 x i8] c"mm3\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st3_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st3_64E = external global [0 x i32], align 4
@.str.104 = private unnamed_addr constant [4 x i8] c"mm4\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st4_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st4_64E = external global [0 x i32], align 4
@.str.105 = private unnamed_addr constant [4 x i8] c"mm5\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st5_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st5_64E = external global [0 x i32], align 4
@.str.106 = private unnamed_addr constant [4 x i8] c"mm6\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st6_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st6_64E = external global [0 x i32], align 4
@.str.107 = private unnamed_addr constant [4 x i8] c"mm7\00", align 1
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared18g_contained_st7_64E = external global [0 x i32], align 4
@_ZN12lldb_private37RegisterInfos_x86_64_with_base_shared19g_invalidate_st7_64E = external global [0 x i32], align 4
@.str.108 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"xmm1\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"xmm2\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"xmm3\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"xmm4\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"xmm5\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"xmm6\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"xmm7\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"xmm8\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"xmm9\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"xmm10\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"xmm11\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"xmm12\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"xmm13\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"xmm14\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"xmm15\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"ymm0\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"ymm1\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"ymm2\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"ymm3\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"ymm4\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"ymm5\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"ymm6\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"ymm7\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"ymm8\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"ymm9\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"ymm10\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"ymm11\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"ymm12\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"ymm13\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"ymm14\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"ymm15\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"bnd0\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"bnd1\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"bnd2\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"bnd3\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"bndcfgu\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"bndstatus\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"dr0\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"dr1\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"dr2\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"dr3\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"dr4\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"dr5\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"dr6\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"dr7\00", align 1

@_ZN27RegisterContextLinux_x86_64C1ERKN12lldb_private8ArchSpecE = unnamed_addr alias void (ptr, ptr), ptr @_ZN27RegisterContextLinux_x86_64C2ERKN12lldb_private8ArchSpecE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN27RegisterContextLinux_x86_64C2ERKN12lldb_private8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12lldb_private21RegisterInfoInterfaceE, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !13
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !16
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.i, ptr %i.c, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN12lldb_private24RegisterContextLinux_x86C2ERKNS_8ArchSpecENS_12RegisterInfoE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !19
  store i8 %i.k, ptr %i.j, align 1, !tbaa !19
  br label %_ZN12lldb_private24RegisterContextLinux_x86C2ERKNS_8ArchSpecENS_12RegisterInfoE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN12lldb_private24RegisterContextLinux_x86C2ERKNS_8ArchSpecENS_12RegisterInfoE.exit

_ZN12lldb_private24RegisterContextLinux_x86C2ERKNS_8ArchSpecENS_12RegisterInfoE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !17
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @.str, ptr %i.v, align 8, !tbaa !20
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !20
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <4 x i32> <i32 8, i32 120, i32 1, i32 11>, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !19
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.913.0..sroa_idx, i8 -1, i64 20, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV27RegisterContextLinux_x86_64, i64 16), ptr %0, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = call noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #14
  switch i32 %i.x, label %bb.h [
    i32 40, label %bb.e
    i32 41, label %_ZL18GetRegisterInfoPtrRKN12lldb_private8ArchSpecE.exit
  ]

bb.e:                                             ; preds = %_ZN12lldb_private24RegisterContextLinux_x86C2ERKNS_8ArchSpecENS_12RegisterInfoE.exit
  %i.y = load atomic i8, ptr @_ZGVZL28GetPrivateRegisterInfoVectorvE16g_register_infos acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %_ZL28GetPrivateRegisterInfoVectorv.exit.i.i, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL28GetPrivateRegisterInfoVectorvE16g_register_infos) #14
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZL28GetPrivateRegisterInfoVectorv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, i8 0, i64 24, i1 false)
  %i.ab = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN12lldb_private12RegisterInfoESaIS1_EED2Ev, ptr nonnull @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, ptr nonnull @__dso_handle) #14 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL28GetPrivateRegisterInfoVectorvE16g_register_infos) #14
  br label %_ZL28GetPrivateRegisterInfoVectorv.exit.i.i

_ZL28GetPrivateRegisterInfoVectorv.exit.i.i:      ; preds = %bb.g, %bb.f, %bb.e
  %i.ac = load ptr, ptr @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, align 8, !tbaa !56 ; 2 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, i64 8), align 8, !tbaa !56
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10unique_ptrI25RegisterContextLinux_i386St14default_deleteIS0_EED2Ev.exit.i.i, label %_ZL18GetRegisterInfoPtrRKN12lldb_private8ArchSpecE.exit

_ZNSt10unique_ptrI25RegisterContextLinux_i386St14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZL28GetPrivateRegisterInfoVectorv.exit.i.i
  %i.af = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #15 ; 5 uses
  call void @_ZN25RegisterContextLinux_i386C1ERKN12lldb_private8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %1) #14
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(184) %i.af) #14, !inline_history !53 ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, i64 8), align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 7040
  %i.am = load ptr, ptr @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, align 8, !tbaa !56 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  call void @_ZNSt6vectorIN12lldb_private12RegisterInfoESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, ptr %i.aq, ptr noundef %i.aj, ptr noundef nonnull %i.al)
  %i.ar = load ptr, ptr @_ZZL28GetPrivateRegisterInfoVectorvE16g_register_infos, align 8, !tbaa !56 ; 82 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  store i32 80, ptr %i.as, align 4, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 100
  store i32 40, ptr %i.at, align 4, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 180
  store i32 88, ptr %i.au, align 4, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 260
  store i32 96, ptr %i.av, align 4, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 340
  store i32 112, ptr %i.aw, align 4, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 420
  store i32 104, ptr %i.ax, align 4, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 500
  store i32 32, ptr %i.ay, align 4, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 580
  store i32 152, ptr %i.az, align 4, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 660
  store i32 128, ptr %i.ba, align 4, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 740
  store i32 144, ptr %i.bb, align 4, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 820
  store i32 136, ptr %i.bc, align 4, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 900
  store i32 200, ptr %i.bd, align 4, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 980
  store i32 208, ptr %i.be, align 4, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 1060
  store i32 160, ptr %i.bf, align 4, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 1140
  store i32 184, ptr %i.bg, align 4, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 1220
  store i32 192, ptr %i.bh, align 4, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 1300
  store i32 80, ptr %i.bi, align 4, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 1380
  store i32 40, ptr %i.bj, align 4, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 1460
  store i32 88, ptr %i.bk, align 4, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 1540
  store i32 96, ptr %i.bl, align 4, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 1620
  store i32 112, ptr %i.bm, align 4, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 1700
  store i32 104, ptr %i.bn, align 4, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 1780
  store i32 32, ptr %i.bo, align 4, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 1860
  store i32 152, ptr %i.bp, align 4, !tbaa !57
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 1940
  store i32 81, ptr %i.bq, align 4, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 2020
  store i32 41, ptr %i.br, align 4, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 2100
  store i32 89, ptr %i.bs, align 4, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 2180
  store i32 97, ptr %i.bt, align 4, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 2260
  store i32 80, ptr %i.bu, align 4, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 2340
  store i32 40, ptr %i.bv, align 4, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2420
  store i32 88, ptr %i.bw, align 4, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ar, i64 2500
  store i32 96, ptr %i.bx, align 4, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 2580
  store i32 224, ptr %i.by, align 4, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 2660
  store i32 226, ptr %i.bz, align 4, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 2740
  store i32 228, ptr %i.ca, align 4, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 2820
  store i32 230, ptr %i.cb, align 4, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 2900
  store i32 236, ptr %i.cc, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 2980
  store i32 232, ptr %i.cd, align 4, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 3140
  store i32 240, ptr %i.ce, align 4, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 3060
  store i32 244, ptr %i.cf, align 4, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 3220
  store i32 248, ptr %i.cg, align 4, !tbaa !57
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 3300
  store i32 252, ptr %i.ch, align 4, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 3380
  store i32 256, ptr %i.ci, align 4, !tbaa !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 3460
  store i32 272, ptr %i.cj, align 4, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 3540
  store i32 288, ptr %i.ck, align 4, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 3620
  store i32 304, ptr %i.cl, align 4, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 3700
  store i32 320, ptr %i.cm, align 4, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 3780
  store i32 336, ptr %i.cn, align 4, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.ar, i64 3860
  store i32 352, ptr %i.co, align 4, !tbaa !57
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 3940
  store i32 368, ptr %i.cp, align 4, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 4020
  store i32 256, ptr %i.cq, align 4, !tbaa !57
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 4100
  store i32 272, ptr %i.cr, align 4, !tbaa !57
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 4180
  store i32 288, ptr %i.cs, align 4, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ar, i64 4260
  store i32 304, ptr %i.ct, align 4, !tbaa !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ar, i64 4340
  store i32 320, ptr %i.cu, align 4, !tbaa !57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 4420
  store i32 336, ptr %i.cv, align 4, !tbaa !57
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 4500
  store i32 352, ptr %i.cw, align 4, !tbaa !57
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 4580
  store i32 368, ptr %i.cx, align 4, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 4660
  store i32 384, ptr %i.cy, align 4, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ar, i64 4740
  store i32 400, ptr %i.cz, align 4, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %i.ar, i64 4820
  store i32 416, ptr %i.da, align 4, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 4900
  store i32 432, ptr %i.db, align 4, !tbaa !57
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 4980
  store i32 448, ptr %i.dc, align 4, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ar, i64 5060
  store i32 464, ptr %i.dd, align 4, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.ar, i64 5140
  store i32 480, ptr %i.de, align 4, !tbaa !57
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 5220
  store i32 496, ptr %i.df, align 4, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ar, i64 5300
  store i32 800, ptr %i.dg, align 4, !tbaa !57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 5380
  store i32 832, ptr %i.dh, align 4, !tbaa !57
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 5460
  store i32 864, ptr %i.di, align 4, !tbaa !57
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 5540
  store i32 896, ptr %i.dj, align 4, !tbaa !57
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 5620
  store i32 928, ptr %i.dk, align 4, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ar, i64 5700
  store i32 960, ptr %i.dl, align 4, !tbaa !57
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ar, i64 5780
  store i32 992, ptr %i.dm, align 4, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ar, i64 5860
  store i32 1024, ptr %i.dn, align 4, !tbaa !57
  %i.do = getelementptr inbounds nuw i8, ptr %i.ar, i64 6420
  store i32 848, ptr %i.do, align 4, !tbaa !57
end_hunk_0
