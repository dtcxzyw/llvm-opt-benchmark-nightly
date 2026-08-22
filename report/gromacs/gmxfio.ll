Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmxfio?download=true
inline.NumInlined: 242
inline.NumDeleted: 145
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::allocator" = type { i8 }
%struct.md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl" }
%"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl" = type { %"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl_data" }
%"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt10filesystem7__cxx114path6stringEv = comdat any

@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/fileio/gmxfio.cpp\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"DEATH HORROR in gmx_fio_open, mode is '%s'\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"gmx_fio_open may not be used to open TNG or H5MD files\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"fio->xdr\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Cannot open file with empty filename\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZL10open_files = internal unnamed_addr global ptr null, align 8
@_ZL15open_file_mutex = internal global { %union.pthread_mutex_t } zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"\0ATrying to get md5sum: %s: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"\0ATrying to get md5sum: Unknown reason for short read: %s\0A\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [23 x i8] c"chksum %s readlen %ld\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"Cannot write file '%s'; maybe you are out of disk space?\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_Z12gmx_fio_openRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
sub_0:
  %i.a = alloca [5 x i8], align 2                 ; 16 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = load i8, ptr %1, align 1
  switch i8 %i.b, label %bb.g [
    i8 114, label %.tail
    i8 119, label %.tail46
    i8 97, label %.tail50
  ]

.tail:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 43
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.tail
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false) #22
  br label %bb.j

bb.b:                                             ; preds = %.tail
  store i16 114, ptr %i.a, align 2
  br label %bb.j

.tail46:                                          ; preds = %sub_0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 43
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false) #22
  br label %bb.j

bb.d:                                             ; preds = %.tail46
  store i16 119, ptr %i.a, align 2
  br label %bb.j

.tail50:                                          ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 43
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.tail50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false) #22
  br label %bb.j

bb.f:                                             ; preds = %.tail50
  store i16 97, ptr %i.a, align 2
  br label %bb.j

bb.g:                                             ; preds = %sub_0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(62) @.str.6, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 232, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #23
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ak

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e, %bb.c, %bb.a
  %i.m = tail call noundef i32 @_Z6fn2ftpRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.n = tail call noundef zeroext i1 @_Z11ftp_is_texti(i32 noundef %i.m)
  br i1 %i.n, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  store i16 98, ptr %endptr, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.o = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24 ; 21 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.o, i8 0, i64 11, i1 false)
  store ptr %i.t, ptr %i.s, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.u, align 8, !tbaa !13
  store i8 0, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit:          ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = load i8, ptr %i.a, align 2, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !17
  store ptr null, ptr %i.y, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit
  %i.ai = tail call noundef i32 @_Z6fn2ftpRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.aj = icmp eq i32 %i.ai, 7
  br i1 %i.aj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call noundef i32 @_Z6fn2ftpRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.al = icmp eq i32 %i.ak, 8
  br i1 %i.al, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(62) @.str.6, i8 noundef zeroext 2)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 250) #23
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.v ], [ %i.an, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ap = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ak

bb.x:                                             ; preds = %bb.o
  %i.au = tail call noundef i32 @_Z6fn2ftpRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store i32 %i.au, ptr %i.aa, align 4, !tbaa !35
  %i.av = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %0) ; 0 uses
  %i.aw = call noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.a)
  store ptr %i.aw, ptr %i.o, align 8, !tbaa !17
  %i.ax = load i32, ptr %i.aa, align 4, !tbaa !35
  %i.ay = call noundef zeroext i1 @_Z10ftp_is_xdri(i32 noundef %i.ax)
  br i1 %i.ay, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.az = load i8, ptr %i.a, align 2, !tbaa !16   ; 2 uses
  %switch.selectcmp.case1 = icmp ne i8 %i.az, 119
  %switch.selectcmp.case2 = icmp ne i8 %i.az, 97
  %switch.selectcmp.not = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.ba = zext i1 %switch.selectcmp.not to i32
  store i32 %i.ba, ptr %i.z, align 8, !tbaa !36
  %i.bb = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef 268, i64 noundef 1, i64 noundef 48) ; 2 uses
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !37
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.bd = load i32, ptr %i.z, align 8, !tbaa !36
  call void @_Z15xdrstdio_createP3XDRP8_IO_FILE6xdr_op(ptr noundef %i.bb, ptr noundef %i.bc, i32 noundef %i.bd)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.be = load i8, ptr %i.a, align 2, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 97
  br i1 %i.bf, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.bh = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %i.bg, i64 noundef 0, i32 noundef 2) ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(62) @.str.6, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 281, ptr noundef nonnull @.str.12) #23
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ak

bb.ae:                                            ; preds = %bb.z, %bb.aa
  %i.bj = icmp eq i8 %i.ae, 43
  %i.bk = zext i1 %i.bj to i8
  %i.bl = icmp eq i8 %i.ac, 114
  %i.bm = icmp ne i8 %i.ae, 43
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  %i.bo = zext i1 %i.bn to i8
  store i8 %i.bo, ptr %i.p, align 8, !tbaa !38
  store i8 %i.bk, ptr %i.r, align 2, !tbaa !39
  store i8 0, ptr %i.q, align 1, !tbaa !40
  %i.bp = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bp) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.ae
  %i.bq = load ptr, ptr @_ZL10open_files, align 8, !tbaa !41 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %bb.ag, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._ZL18gmx_fio_make_dummyv.exit_crit_edge.i

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._ZL18gmx_fio_make_dummyv.exit_crit_edge.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %_ZL14gmx_fio_insertP8t_fileio.exit

bb.ag:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.br = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
          to label %.noexc.i unwind label %bb.aj  ; 8 uses

.noexc.i:                                         ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.br, i8 0, i64 11, i1 false)
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !13
  store i8 0, ptr %i.bt, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #25
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit.i.i:      ; preds = %.noexc.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  store ptr %i.br, ptr @_ZL10open_files, align 8, !tbaa !41
  store ptr null, ptr %i.br, align 8, !tbaa !17
  store i64 0, ptr %i.bu, align 8, !tbaa !13
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !34
  store i8 0, ptr %i.bz, align 1, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bs)
          to label %_ZNSt10filesystem7__cxx114path5clearEv.exit.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit.i.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #25
  unreachable

_ZNSt10filesystem7__cxx114path5clearEv.exit.i.i:  ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit.i.i
  %i.cc = load ptr, ptr @_ZL10open_files, align 8, !tbaa !41 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !43
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !42
  br label %_ZL14gmx_fio_insertP8t_fileio.exit

common.resume:                                    ; preds = %bb.ak, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.aj ], [ %.pn44, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.aj:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 0 uses
  br label %common.resume

_ZL14gmx_fio_insertP8t_fileio.exit:               ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._ZL18gmx_fio_make_dummyv.exit_crit_edge.i, %_ZNSt10filesystem7__cxx114path5clearEv.exit.i.i
  %i.ch = phi ptr [ %i.cc, %_ZNSt10filesystem7__cxx114path5clearEv.exit.i.i ], [ %.pre.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._ZL18gmx_fio_make_dummyv.exit_crit_edge.i ] ; 2 uses
  %i.ci = phi ptr [ %i.cc, %_ZNSt10filesystem7__cxx114path5clearEv.exit.i.i ], [ %i.bq, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._ZL18gmx_fio_make_dummyv.exit_crit_edge.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !43
  store ptr %i.o, ptr %i.cl, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store ptr %i.o, ptr %i.cm, align 8, !tbaa !43
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !42
  %i.cn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %i.o

bb.ak:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn44 = phi { ptr, i32 } [ %i.bi, %bb.ad ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(62) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(62) %1) #22 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.b, ptr %i.a, align 8, !tbaa !44
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !34
  %i.f = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.f, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.h, ptr %i.g, align 1, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !13
  %i.k = load ptr, ptr %0, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_Z11ftp_is_texti(i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z6fn2ftpRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !9
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !44
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !34
  %i.g = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.g, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.i, ptr %i.h, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !13
  %i.l = load ptr, ptr %0, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4
end_hunk_0
begin_hunk_1_@_Z13gmx_fio_closeP8t_fileio:bb.a
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #26
  %i.y = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 0 uses
  ret i32 %.0.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 0 uses
  resume { ptr, i32 } %i.z
}

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #4

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z16gmx_fio_fp_closeP8t_fileio(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = tail call noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.d)
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z13gmx_fio_fopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z12gmx_fio_openRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z14gmx_fio_fcloseP8_IO_FILE(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = invoke fastcc noundef ptr @_ZL17gmx_fio_get_firstv()
          to label %select.unfold.preheader unwind label %bb.j ; 2 uses

select.unfold.preheader:                          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not14 = icmp eq ptr %i.b, null
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.preheader
  %i.c = load ptr, ptr @_ZL10open_files, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.015 = phi ptr [ %i.b, %.lr.ph ], [ %.0.val, %select.unfold ] ; 12 uses
  %i.d = load ptr, ptr %.015, align 8, !tbaa !17  ; 2 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.015, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.noexc10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not10.i = icmp eq ptr %i.k, null
  br i1 %.not10.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.k(ptr noundef nonnull %i.g)
          to label %.noexc unwind label %bb.j, !inline_history !51

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %i.l = phi ptr [ %.pre.i, %.noexc ], [ %i.g, %bb.e ]
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef 300, ptr noundef %i.l)
          to label %..noexc10_crit_edge unwind label %bb.j

..noexc10_crit_edge:                              ; preds = %bb.g
  %.pre = load ptr, ptr %.015, align 8, !tbaa !17
  br label %.noexc10

.noexc10:                                         ; preds = %..noexc10_crit_edge, %bb.d
  %i.m = phi ptr [ %.pre, %..noexc10_crit_edge ], [ %i.d, %bb.d ] ; 2 uses
  %.not11.i = icmp eq ptr %i.m, null
  br i1 %.not11.i, label %_ZL19gmx_fio_close_innerP8t_fileio.exit, label %bb.h

bb.h:                                             ; preds = %.noexc10
  %i.n = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef nonnull %i.m)
          to label %_ZL19gmx_fio_close_innerP8t_fileio.exit unwind label %bb.j

_ZL19gmx_fio_close_innerP8t_fileio.exit:          ; preds = %.noexc10, %bb.h
  %.0.i = phi i32 [ 0, %.noexc10 ], [ %i.n, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %.015, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.015, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %i.p, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store ptr %i.r, ptr %i.t, align 8, !tbaa !42
  store ptr %.015, ptr %i.q, align 8, !tbaa !42
  store ptr %.015, ptr %i.o, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.015, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZL19gmx_fio_close_innerP8t_fileio.exit
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.w) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.i, %_ZL19gmx_fio_close_innerP8t_fileio.exit
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015, i64 32 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN8t_fileioD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26
  br label %_ZN8t_fileioD2Ev.exit

_ZN8t_fileioD2Ev.exit:                            ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.015, i64 noundef 88) #26
  br label %.loopexit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 0 uses
  resume { ptr, i32 } %i.ac

select.unfold:                                    ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %.015, i64 72
  %.0.val = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 3 uses
  %i.af = icmp eq ptr %.0.val, %i.c
  %.not27 = icmp eq ptr %.0.val, null
  %.not = or i1 %i.af, %.not27
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %select.unfold, %select.unfold.preheader, %_ZN8t_fileioD2Ev.exit
  %.09 = phi i32 [ %.0.i, %_ZN8t_fileioD2Ev.exit ], [ -1, %select.unfold.preheader ], [ -1, %select.unfold ]
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15open_file_mutex) #22 ; 0 uses
  ret i32 %.09
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL17gmx_fio_get_firstv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZL10open_files, align 8, !tbaa !41 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._ZL18gmx_fio_make_dummyv.exit_crit_edge

._ZL18gmx_fio_make_dummyv.exit_crit_edge:         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 2 uses
  %i.b = icmp eq ptr %.pre, %i.a
  %i.c = select i1 %i.b, ptr null, ptr %.pre
  br label %_ZL18gmx_fio_make_dummyv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.d, i8 0, i64 11, i1 false)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !13
  store i8 0, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit.i:        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store ptr %i.d, ptr @_ZL10open_files, align 8, !tbaa !41
  store ptr null, ptr %i.d, align 8, !tbaa !17
  store i64 0, ptr %i.g, align 8, !tbaa !13
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !34
  store i8 0, ptr %i.l, align 1, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_ZNSt10filesystem7__cxx114path5clearEv.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #25
  unreachable

_ZNSt10filesystem7__cxx114path5clearEv.exit.i:    ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit.i
  %i.o = load ptr, ptr @_ZL10open_files, align 8, !tbaa !41 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %i.o, ptr %i.q, align 8, !tbaa !42
  br label %_ZL18gmx_fio_make_dummyv.exit

_ZL18gmx_fio_make_dummyv.exit:                    ; preds = %._ZL18gmx_fio_make_dummyv.exit_crit_edge, %_ZNSt10filesystem7__cxx114path5clearEv.exit.i
  %spec.store.select = phi ptr [ %i.c, %._ZL18gmx_fio_make_dummyv.exit_crit_edge ], [ null, %_ZNSt10filesystem7__cxx114path5clearEv.exit.i ]
  ret ptr %spec.store.select
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z20gmx_fio_get_file_md5P8t_fileiolPSt5arrayIhLm16EE(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL24gmx_fio_int_get_file_md5P8t_fileiolPSt5arrayIhLm16EE(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL24gmx_fio_int_get_file_md5P8t_fileiolPSt5arrayIhLm16EE(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.md5_state_s, align 4        ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = add i64 %1, -1048576
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.b, i64 0) ; 2 uses
  %i.c = sub nsw i64 %1, %spec.store.select       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i8, ptr %i.e, align 2, !tbaa !39, !range !52, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef nonnull %i.d, i64 noundef %spec.store.select, i32 noundef 0)
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %i.i, i64 noundef 0, i32 noundef 2) ; 0 uses
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull dereferenceable(1048576) ptr @_Znwm(i64 noundef 1048576) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1048576) %i.k, i8 0, i64 1048576, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = tail call i64 @fread(ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef %i.c, ptr noundef %i.l)
  %.not33 = icmp eq i64 %i.m, %i.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  br i1 %.not33, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @ferror(ptr noundef %i.n) #22
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %4, align 8, !tbaa !34
  %i.s = tail call ptr @__errno_location() #27
  %i.t = load i32, ptr %i.s, align 4, !tbaa !55
  %i.u = call ptr @strerror(i32 noundef %i.t) #22
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.15, ptr noundef %i.r, ptr noundef %i.u) #28 ; 0 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.x, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

bb.i:                                             ; preds = %bb.y, %bb.x, %bb.p, %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit47

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit47

bb.k:                                             ; preds = %bb.f
  %i.ad = tail call i32 @feof(ptr noundef %i.n) #22
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %5, align 8, !tbaa !34
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.16, ptr noundef %i.ag) #28 ; 0 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.m
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit47

bb.o:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !17
  %i.ap = invoke noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %i.ao, i64 noundef 0, i32 noundef 2)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %bb.i ; 0 uses

bb.p:                                             ; preds = %bb.e
  %i.aq = invoke noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %i.n, i64 noundef 0, i32 noundef 2)
          to label %bb.q unwind label %bb.i       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr @debug, align 8, !tbaa !54 ; 2 uses
  %.not34 = icmp eq ptr %i.ar, null
  br i1 %.not34, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34, !noalias !62 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13, !noalias !62 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !9, !alias.scope !62
  %i.ax = icmp eq ptr %i.at, null
  %i.ay = icmp ne i64 %i.av, 0
  %or.cond.i.i.i = and i1 %i.ax, %i.ay
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.s

.noexc.i:                                         ; preds = %bb.r
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !62
  store i64 %i.av, ptr %i.a, align 8, !tbaa !44, !noalias !62
  %i.az = icmp ugt i64 %i.av, 15
  br i1 %i.az, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.s
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc42 unwind label %bb.w   ; 2 uses

.noexc42:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ba, ptr %6, align 8, !tbaa !34, !alias.scope !62
end_hunk_1
