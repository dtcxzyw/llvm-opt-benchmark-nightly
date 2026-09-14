Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ExDllCharacteristics?download=true
inline.NumInlined: 2668
inline.NumDeleted: 728
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK4LIEF2PE20ExDllCharacteristics20characteristics_listEv:_ZNSt12_Vector_baseIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE11_M_allocateEm.exit.i
_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.5: ; preds = %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.5, %bb.r, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.4
  %i.cq = phi ptr [ %i.cl, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.5 ], [ %i.bw, %bb.r ], [ %i.bw, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.4 ] ; 6 uses
  %i.cr = phi ptr [ %i.cp, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.5 ], [ %i.bx, %bb.r ], [ %i.bx, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.4 ] ; 5 uses
  %i.cs = phi ptr [ %i.co, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.5 ], [ %i.ca, %bb.r ], [ %i.by, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.4 ] ; 5 uses
  %.val.val.i.6 = load i32, ptr %i.e, align 8, !tbaa !53
  %i.ct = and i32 %.val.val.i.6, 64
  %.not6.i.6 = icmp eq i32 %i.ct, 0
  br i1 %.not6.i.6, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6, label %bb.u

bb.u:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.5
  %.not.i.i.i.6 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i.i.i.6, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 64, ptr %i.cs, align 4, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6

bb.w:                                             ; preds = %bb.u
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775804
  br i1 %i.cy, label %bb.b, label %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.6

_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.6: ; preds = %bb.w
  %i.cz = ashr exact i64 %i.cx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.6 = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i.i.6, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 2305843009213693951)
  %i.dd = select i1 %i.db, i64 2305843009213693951, i64 %i.dc ; 3 uses
  %.not.i.i.i.i.i.6 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.6)
  %i.de = shl nuw nsw i64 %i.dd, 2
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #24 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store i32 64, ptr %i.dg, align 4, !tbaa !55
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.x, label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.6

bb.x:                                             ; preds = %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %i.cq, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.6

_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.6: ; preds = %bb.x, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.6
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cx) #27
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dd
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6: ; preds = %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.6, %bb.v, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.5
  %i.dk = phi ptr [ %i.df, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.6 ], [ %i.cq, %bb.v ], [ %i.cq, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.5 ] ; 6 uses
  %i.dl = phi ptr [ %i.dj, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.6 ], [ %i.cr, %bb.v ], [ %i.cr, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.5 ] ; 5 uses
  %i.dm = phi ptr [ %i.di, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.6 ], [ %i.cu, %bb.v ], [ %i.cs, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.5 ] ; 5 uses
  %.val.val.i.7 = load i32, ptr %i.e, align 8, !tbaa !53
  %i.dn = and i32 %.val.val.i.7, 128
  %.not6.i.7 = icmp eq i32 %i.dn, 0
  br i1 %.not6.i.7, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.7, label %bb.y

bb.y:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6
  %.not.i.i.i.7 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i.i.i.7, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 128, ptr %i.dm, align 4, !tbaa !55
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.7

bb.aa:                                            ; preds = %bb.y
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = ptrtoint ptr %i.dk to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 6 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %bb.b, label %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.7

_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.7: ; preds = %bb.aa
  %i.dt = ashr exact i64 %i.dr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.7 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i.i.i.7, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 2305843009213693951)
  %i.dx = select i1 %i.dv, i64 2305843009213693951, i64 %i.dw ; 3 uses
  %.not.i.i.i.i.i.7 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.7)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dr ; 2 uses
  store i32 128, ptr %i.ea, align 4, !tbaa !55
  %i.eb = icmp sgt i64 %i.dr, 0
  br i1 %i.eb, label %bb.ab, label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.7

bb.ab:                                            ; preds = %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr align 4 %i.dk, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.7

_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.7: ; preds = %bb.ab, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.7
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dr) #27
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.7

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.7: ; preds = %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.7, %bb.z, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6
  %i.ee = phi ptr [ %i.dz, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.7 ], [ %i.dk, %bb.z ], [ %i.dk, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6 ]
  %i.ef = phi ptr [ %i.ed, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.7 ], [ %i.dl, %bb.z ], [ %i.dl, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6 ]
  %i.eg = phi ptr [ %i.ec, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.7 ], [ %i.do, %bb.z ], [ %i.dm, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.6 ]
  store ptr %i.eg, ptr %i.b, align 8
  store ptr %i.ef, ptr %i.a, align 8
  store ptr %i.ee, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE20ExDllCharacteristics9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.453", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1062", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 27 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"struct.fmt::v12::join_view", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 328
  store ptr null, ptr %i.d, align 8, !tbaa !256
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 336
  store i8 0, ptr %i.e, align 8, !tbaa !257
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 337
  store i8 0, ptr %i.f, align 1, !tbaa !258
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !45
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.j = getelementptr i8, ptr %i.h, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %5, i64 %i.k
  store ptr %i.i, ptr %i.l, align 8, !tbaa !45
  %i.m = load ptr, ptr %5, align 8, !tbaa !45
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %5, i64 %i.o
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.p, ptr noundef null) #25
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %5, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.c, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 16, ptr %i.t, align 8, !tbaa !262
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 0, ptr %i.w, align 8, !tbaa !64
  store i8 0, ptr %i.v, align 8, !tbaa !65
  %i.x = load ptr, ptr %5, align 8, !tbaa !45
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %5, i64 %i.z
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, ptr noundef nonnull %i.q) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK4LIEF2PE5Debug9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1) #25
  %i.ab = load ptr, ptr %6, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !64
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ab, i64 noundef %i.ad) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !65
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !263
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.b, i64 noundef 1) #25
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext 10) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.al, %bb.b ], [ %i.ae, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.an = call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24, !noalias !264 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %.val.val.i.i = load i32, ptr %i.ap, align 8, !tbaa !53, !noalias !264 ; 6 uses
  %i.aq = and i32 %.val.val.i.i, 1
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  store i32 1, ptr %i.an, align 4, !tbaa !55, !noalias !264
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i

bb.e:                                             ; preds = %bb.w, %bb.s, %bb.o, %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26, !noalias !264
  unreachable

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i: ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.idx55 = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 4, %bb.d ] ; 3 uses
  %i.ar = and i32 %.val.val.i.i, 2
  %.not6.i.i.1 = icmp eq i32 %i.ar, 0
  br i1 %.not6.i.i.1, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.1, label %bb.f

bb.f:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i
  %.ptr56 = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx55
  store i32 2, ptr %.ptr56, align 4, !tbaa !55, !noalias !264
  %.add = add nuw nsw i64 %.idx55, 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.1

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.1: ; preds = %bb.f, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i
  %.idx = phi i64 [ %.idx55, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i ], [ %.add, %bb.f ] ; 3 uses
  %i.as = and i32 %.val.val.i.i, 4
  %.not6.i.i.2 = icmp eq i32 %i.as, 0
  br i1 %.not6.i.i.2, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2, label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.2

_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.2: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  store i32 4, ptr %i.at, align 4, !tbaa !55, !noalias !264
  %.ptr.add = add nuw nsw i64 %.idx, 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2: ; preds = %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.2, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.1
  %.idx59 = phi i64 [ %.idx, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.1 ], [ %.ptr.add, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.2 ] ; 2 uses
  %.ptr60 = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx59 ; 3 uses
  %i.au = and i32 %.val.val.i.i, 8
  %.not6.i.i.3 = icmp eq i32 %i.au, 0
  br i1 %.not6.i.i.3, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3, label %bb.g

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2
  %.not.i.i.i.i.3 = icmp eq i64 %.idx59, 12
  br i1 %.not.i.i.i.i.3, label %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.3, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 8, ptr %.ptr60, align 4, !tbaa !55, !noalias !264
  %i.av = getelementptr inbounds nuw i8, ptr %.ptr60, i64 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3

_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.3: ; preds = %bb.g
  %9 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !264 ; 5 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 8, ptr %10, align 4, !tbaa !55, !noalias !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false), !noalias !264
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 12) #27, !noalias !264
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.val.val.i.i.4.pre = load i32, ptr %i.ap, align 8, !tbaa !53, !noalias !264
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3: ; preds = %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.3, %bb.h, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2
  %.val.val.i.i.4 = phi i32 [ %.val.val.i.i.4.pre, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.3 ], [ %.val.val.i.i, %bb.h ], [ %.val.val.i.i, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2 ] ; 3 uses
  %i.ax = phi ptr [ %9, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.3 ], [ %i.an, %bb.h ], [ %i.an, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2 ] ; 5 uses
  %i.ay = phi ptr [ %i.aw, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.3 ], [ %i.ao, %bb.h ], [ %i.ao, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2 ] ; 4 uses
  %i.az = phi ptr [ %11, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.3 ], [ %i.av, %bb.h ], [ %.ptr60, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.2 ] ; 4 uses
  %i.ba = and i32 %.val.val.i.i.4, 16
  %.not6.i.i.4 = icmp eq i32 %i.ba, 0
  br i1 %.not6.i.i.4, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4, label %bb.i

bb.i:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3
  %.not.i.i.i.i.4 = icmp eq ptr %i.az, %i.ay
  br i1 %.not.i.i.i.i.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 16, ptr %i.az, align 4, !tbaa !55, !noalias !264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4

bb.k:                                             ; preds = %bb.i
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775804
  br i1 %i.bf, label %bb.e, label %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.4

_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.4: ; preds = %bb.k
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.4 = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.4, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i.i.4 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.4)
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #24, !noalias !264 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i32 16, ptr %i.bn, align 4, !tbaa !55, !noalias !264
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.l, label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4

bb.l:                                             ; preds = %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr nonnull align 4 %i.ax, i64 %i.be, i1 false), !noalias !264
  br label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4

_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4: ; preds = %bb.l, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.be) #27, !noalias !264
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk
  %.val.val.i.i.5.pre = load i32, ptr %i.ap, align 8, !tbaa !53, !noalias !264
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4: ; preds = %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4, %bb.j, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3
  %.val.val.i.i.5 = phi i32 [ %.val.val.i.i.5.pre, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4 ], [ %.val.val.i.i.4, %bb.j ], [ %.val.val.i.i.4, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3 ] ; 3 uses
  %i.br = phi ptr [ %i.bm, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4 ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3 ] ; 5 uses
  %i.bs = phi ptr [ %i.bq, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4 ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3 ] ; 4 uses
  %i.bt = phi ptr [ %i.bp, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.4 ], [ %i.bb, %bb.j ], [ %i.az, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.3 ] ; 4 uses
  %i.bu = and i32 %.val.val.i.i.5, 32
  %.not6.i.i.5 = icmp eq i32 %i.bu, 0
  br i1 %.not6.i.i.5, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5, label %bb.m

bb.m:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4
  %.not.i.i.i.i.5 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not.i.i.i.i.5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 32, ptr %i.bt, align 4, !tbaa !55, !noalias !264
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5

bb.o:                                             ; preds = %bb.m
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775804
  br i1 %i.bz, label %bb.e, label %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.5

_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.5: ; preds = %bb.o
  %i.ca = ashr exact i64 %i.by, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.5 = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.5, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 2305843009213693951)
  %i.ce = select i1 %i.cc, i64 2305843009213693951, i64 %i.cd ; 3 uses
  %.not.i.i.i.i.i.i.5 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.5)
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #24, !noalias !264 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  store i32 32, ptr %i.ch, align 4, !tbaa !55, !noalias !264
  %i.ci = icmp sgt i64 %i.by, 0
  br i1 %i.ci, label %bb.p, label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5

bb.p:                                             ; preds = %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr nonnull align 4 %i.br, i64 %i.by, i1 false), !noalias !264
  br label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5

_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5: ; preds = %bb.p, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.by) #27, !noalias !264
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ce
  %.val.val.i.i.6.pre = load i32, ptr %i.ap, align 8, !tbaa !53, !noalias !264
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5: ; preds = %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5, %bb.n, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4
  %.val.val.i.i.6 = phi i32 [ %.val.val.i.i.6.pre, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5 ], [ %.val.val.i.i.5, %bb.n ], [ %.val.val.i.i.5, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4 ] ; 3 uses
  %i.cl = phi ptr [ %i.cg, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5 ], [ %i.br, %bb.n ], [ %i.br, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4 ] ; 5 uses
  %i.cm = phi ptr [ %i.ck, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5 ], [ %i.bs, %bb.n ], [ %i.bs, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4 ] ; 4 uses
  %i.cn = phi ptr [ %i.cj, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.5 ], [ %i.bv, %bb.n ], [ %i.bt, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.4 ] ; 4 uses
  %i.co = and i32 %.val.val.i.i.6, 64
  %.not6.i.i.6 = icmp eq i32 %i.co, 0
  br i1 %.not6.i.i.6, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.6, label %bb.q

bb.q:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5
  %.not.i.i.i.i.6 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.i.i.i.i.6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 64, ptr %i.cn, align 4, !tbaa !55, !noalias !264
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.6

bb.s:                                             ; preds = %bb.q
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.cl to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 6 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775804
  br i1 %i.ct, label %bb.e, label %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.6

_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.6: ; preds = %bb.s
  %i.cu = ashr exact i64 %i.cs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.6 = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.6, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 2305843009213693951)
  %i.cy = select i1 %i.cw, i64 2305843009213693951, i64 %i.cx ; 3 uses
  %.not.i.i.i.i.i.i.6 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.6)
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #24, !noalias !264 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  store i32 64, ptr %i.db, align 4, !tbaa !55, !noalias !264
  %i.dc = icmp sgt i64 %i.cs, 0
  br i1 %i.dc, label %bb.t, label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6

bb.t:                                             ; preds = %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.da, ptr nonnull align 4 %i.cl, i64 %i.cs, i1 false), !noalias !264
  br label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6

_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6: ; preds = %bb.t, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cs) #27, !noalias !264
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cy
  %.val.val.i.i.7.pre = load i32, ptr %i.ap, align 8, !tbaa !53, !noalias !264
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.6

_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.6: ; preds = %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6, %bb.r, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5
  %.val.val.i.i.7 = phi i32 [ %.val.val.i.i.7.pre, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6 ], [ %.val.val.i.i.6, %bb.r ], [ %.val.val.i.i.6, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5 ]
  %i.df = phi ptr [ %i.da, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6 ], [ %i.cl, %bb.r ], [ %i.cl, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5 ] ; 5 uses
  %i.dg = phi ptr [ %i.de, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6 ], [ %i.cm, %bb.r ], [ %i.cm, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5 ] ; 4 uses
  %i.dh = phi ptr [ %i.dd, %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.6 ], [ %i.cp, %bb.r ], [ %i.cn, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.5 ] ; 4 uses
  %i.di = and i32 %.val.val.i.i.7, 128
  %.not6.i.i.7 = icmp eq i32 %i.di, 0
  br i1 %.not6.i.i.7, label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.7, label %bb.u

bb.u:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.6
  %.not.i.i.i.i.7 = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i.i.i.i.7, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 128, ptr %i.dh, align 4, !tbaa !55, !noalias !264
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS4_EEEaSERKS4_.exit.i.i.7

bb.w:                                             ; preds = %bb.u
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = ptrtoint ptr %i.df to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 6 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775804
  br i1 %i.dn, label %bb.e, label %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.7

_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.7: ; preds = %bb.w
  %i.do = ashr exact i64 %i.dm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.7 = call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.7, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dp, i64 2305843009213693951)
  %i.ds = select i1 %i.dq, i64 2305843009213693951, i64 %i.dr ; 3 uses
  %.not.i.i.i.i.i.i.7 = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.7)
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #24, !noalias !264 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.dm ; 2 uses
  store i32 128, ptr %i.dv, align 4, !tbaa !55, !noalias !264
  %i.dw = icmp sgt i64 %i.dm, 0
  br i1 %i.dw, label %bb.x, label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.7

bb.x:                                             ; preds = %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.7
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr nonnull align 4 %i.df, i64 %i.dm, i1 false), !noalias !264
  br label %_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.7

_ZNSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.7: ; preds = %bb.x, %_ZNKSt6vectorIN4LIEF2PE20ExDllCharacteristics15CHARACTERISTICSESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dm) #27, !noalias !264
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ds
end_hunk_0
