Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/shake?download=true
inline.NumInlined: 618
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::ListOfLists" = type { %"class.std::vector.0", %"class.std::vector.0" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ArrayRef.32" = type { %"struct.gmx::ArrayRefIter.33", %"struct.gmx::ArrayRefIter.33" }
%"struct.gmx::ArrayRefIter.33" = type { ptr }
%"class.gmx::ArrayRef.35" = type { %"struct.gmx::ArrayRefIter.36", %"struct.gmx::ArrayRefIter.36" }
%"struct.gmx::ArrayRefIter.36" = type { ptr }
%"class.gmx::ArrayRef.29" = type { %"struct.gmx::ArrayRefIter.30", %"struct.gmx::ArrayRefIter.30" }
%"struct.gmx::ArrayRefIter.30" = type { ptr }
%"class.gmx::ArrayRef.38" = type { %"struct.gmx::ArrayRefIter.39", %"struct.gmx::ArrayRefIter.39" }
%"struct.gmx::ArrayRefIter.39" = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.107" }
%"class.std::unique_ptr.107" = type { %"struct.std::__uniq_ptr_data.108" }
%"struct.std::__uniq_ptr_data.108" = type { %"class.std::__uniq_ptr_impl.109" }
%"class.std::__uniq_ptr_impl.109" = type { %"class.std::tuple.110" }
%"class.std::tuple.110" = type { %"struct.std::_Tuple_impl.111" }
%"struct.std::_Tuple_impl.111" = type { %"struct.std::_Head_base.114" }
%"struct.std::_Head_base.114" = type { ptr }

$_ZN3gmx11ListOfListsIiED2Ev = comdat any

$_ZNSt6vectorIfSaIfEE17_M_default_appendEm = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm = comdat any

@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"ncons: %d, bstart: %d, nblocks: %td\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Before sorting\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Going to sort constraints\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"After sorting\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"i: %5td, iatom: (%5d %5d %5d), blocknr: %5d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/mdlib/shake.cpp\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"Internal error, SHAKE called for constraining something else than coordinates\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Shake did not converge in %d steps\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [81 x i8] c"Inner product between old and new vector <= 0.0!\0Aconstraint #%d atoms %d and %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"    i     mi      j     mj      before       after   should be\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"%5d  %5.2f  %5d  %5.2f  %10.5f  %10.5f  %10.5f\0A\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx24make_shake_sblock_serialEPNS_9shakedataEP22InteractionDefinitionsi(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::ListOfLists", align 8  ; 12 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1552 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32                    ; 5 uses
  %i.j = sdiv i32 %i.i, 3                         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ListOfLists") align 8 %3, ptr noundef null, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(2760) %1, i1 noundef zeroext false)
  %i.k = load ptr, ptr @debug, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = load ptr, ptr %3, align 8, !tbaa !13
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = add nsw i64 %i.r, -1
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.k, ptr noundef nonnull @.str, i32 noundef %i.j, i32 noundef 0, i64 noundef %i.s) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_Z13make_invblockRKN3gmx11ListOfListsIiEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !13   ; 27 uses
  %i.v = sext i32 %i.j to i64                     ; 9 uses
  %i.w = icmp slt i32 %i.i, -2
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.d
  %i.x = icmp sgt i32 %i.i, 2                     ; 3 uses
  br i1 %i.x, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.v, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #19
          to label %.noexc62 unwind label %bb.i   ; 16 uses

.noexc62:                                         ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.ac = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.preheader116.lr.ph, label %bb.g

bb.g:                                             ; preds = %.noexc62
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.af = add nuw nsw i64 %i.v, 1152921504606846974
  %i.ag = and i64 %i.af, 1152921504606846975
  %i.ah = add nuw nsw i64 %i.v, 7
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ab, %bb.g ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !44

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.g
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ab, %bb.g ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.aj = icmp samesign ult i64 %i.ag, 7
  br i1 %i.aj, label %.preheader116.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.preheader116.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !45

.preheader116.lr.ph:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc62
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc62 ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !13    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter191 = and i64 %wide.trip.count, 1
  %.off = add nsw i32 %i.i, -3
  %i.at = icmp ult i32 %.off, 3
  br i1 %i.at, label %.preheader116.epil.preheader, label %.preheader116.lr.ph.new

.preheader116.lr.ph.new:                          ; preds = %.preheader116.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 1073741822
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116, %.preheader116.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader116.lr.ph.new ], [ %indvars.iv.next.1, %.preheader116 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader116.lr.ph.new ], [ %niter.next.1, %.preheader116 ]
  %i.au = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.au ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !17
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !17
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bm = mul nuw nsw i64 %indvars.iv.next, 3     ; 3 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.next ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader116, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader116
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %._crit_edge.loopexit, label %.preheader116.epil.preheader

.preheader116.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader116.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader116.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.ce = mul nuw nsw i64 %indvars.iv.epil.init, 3 ; 3 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.epil.init ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ce ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !17
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !17
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ce
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !21
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader116.epil.preheader
  %i.cw = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cx = ptrtoint ptr %i.aa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.i.i.i.i.i182 = phi i64 [ 0, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.cw, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.095.0178 = phi ptr [ null, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %._crit_edge.loopexit ] ; 17 uses
  %.sroa.21.0175 = phi i64 [ 0, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.cx, %._crit_edge.loopexit ] ; 2 uses
  %i.cy = load ptr, ptr @debug, align 8, !tbaa !15 ; 3 uses
  %.not56 = icmp eq ptr %i.cy, null
  %.pre141 = ptrtoint ptr %.sroa.095.0178 to i64  ; 4 uses
  br i1 %.not56, label %._crit_edge._crit_edge, label %bb.j

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre143 = sub i64 %.0.i.i.i.i.i182, %.pre141
  %.pre145 = ashr exact i64 %.pre143, 4
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EED2Ev.exit86

bb.j:                                             ; preds = %._crit_edge
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.dc = sub i64 %.0.i.i.i.i.i182, %.pre141
  %i.dd = ashr exact i64 %i.dc, 4                 ; 3 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.012.i = phi i64 [ %i.do, %.lr.ph.i ], [ 0, %bb.j ] ; 3 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %.012.i ; 4 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !21
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.6, i64 noundef %.012.i, i32 noundef %i.dg, i32 noundef %i.di, i32 noundef %i.dk, i32 noundef %i.dm) #17 ; 0 uses
  %i.do = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.do, %i.dd
  br i1 %exitcond.not.i, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit, label %.lr.ph.i, !llvm.loop !47

_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit: ; preds = %.lr.ph.i, %bb.j
  %i.dp = load ptr, ptr @debug, align 8, !tbaa !15
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %i.dp) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.aa, %bb.l
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.l:                                             ; preds = %._crit_edge._crit_edge, %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit
  %.pre-phi146 = phi i64 [ %.pre145, %._crit_edge._crit_edge ], [ %i.dd, %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit ] ; 3 uses
  invoke void @qsort(ptr noundef %.sroa.095.0178, i64 noundef %.pre-phi146, i64 noundef 16, ptr noundef nonnull @_ZN3gmxL5pcompEPKvS1_)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.dr = load ptr, ptr @debug, align 8, !tbaa !15 ; 3 uses
  %.not57 = icmp eq ptr %i.dr, null
  br i1 %.not57, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dr, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #17 ; 0 uses
  %i.dt = icmp sgt i64 %.pre-phi146, 0
  br i1 %i.dt, label %.lr.ph.i63, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66

.lr.ph.i63:                                       ; preds = %bb.n, %.lr.ph.i63
  %.012.i64 = phi i64 [ %i.ed, %.lr.ph.i63 ], [ 0, %bb.n ] ; 3 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %.012.i64 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !17
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !21
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dr, ptr noundef nonnull @.str.6, i64 noundef %.012.i64, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb) #17 ; 0 uses
  %i.ed = add nuw nsw i64 %.012.i64, 1            ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.ed, %.pre-phi146
  br i1 %exitcond.not.i65, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66, label %.lr.ph.i63, !llvm.loop !47

_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66: ; preds = %.lr.ph.i63, %bb.n, %bb.m
  br i1 %i.x, label %.preheader.preheader, label %._crit_edge121

.preheader.preheader:                             ; preds = %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66
  %wide.trip.count134 = zext nneg i32 %i.j to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.i, 27
  br i1 %min.iters.check, label %.preheader.preheader190, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.ee = mul nuw nsw i64 %wide.trip.count134, 12
  %i.ef = getelementptr i8, ptr %i.u, i64 %i.ee
  %i.eg = shl nuw nsw i64 %wide.trip.count134, 4
  %i.eh = getelementptr i8, ptr %.sroa.095.0178, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 -4
  %bound0 = icmp ult ptr %i.u, %i.ei
  %bound1 = icmp ult ptr %.sroa.095.0178, %i.ef
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader190, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ej = and i64 %wide.trip.count134, 7          ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  %i.el = select i1 %i.ek, i64 8, i64 %i.ej
  %n.vec = sub nsw i64 %wide.trip.count134, %i.el ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %index
  %wide.vec = load <32 x i32>, ptr %i.em, align 4, !tbaa !17, !alias.scope !56
  %.idx = mul nuw nsw i64 %index, 12
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %interleaved.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14, i32 16, i32 17, i32 18, i32 20, i32 21, i32 22, i32 24, i32 25, i32 26, i32 28, i32 29, i32 30>
  store <24 x i32> %interleaved.vec, ptr %i.en, align 4, !tbaa !17, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %.preheader.preheader190, label %vector.body, !llvm.loop !51

.preheader.preheader190:                          ; preds = %vector.body, %vector.memcheck, %.preheader.preheader
  %indvars.iv131.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.ep = sub nsw i64 %wide.trip.count134, %indvars.iv131.ph
  %xtraiter194 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader190, %.preheader.prol
  %indvars.iv131.prol = phi i64 [ %indvars.iv.next132.prol, %.preheader.prol ], [ %indvars.iv131.ph, %.preheader.preheader190 ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.preheader.prol ], [ 0, %.preheader.preheader190 ]
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %indvars.iv131.prol ; 3 uses
  %i.er = mul nuw nsw i64 %indvars.iv131.prol, 3  ; 3 uses
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !17
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.er
  store i32 %i.es, ptr %i.et, align 4, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !17
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.er
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !17
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.prol, 1 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !52

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader190
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %.preheader.preheader190 ], [ %indvars.iv.next132.prol, %.preheader.prol ]
  %i.fc = sub nsw i64 %indvars.iv131.ph, %wide.trip.count134
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %._crit_edge121, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.3, %.preheader ], [ %indvars.iv131.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %indvars.iv131 ; 3 uses
  %i.ff = mul nuw nsw i64 %indvars.iv131, 3       ; 3 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !17
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ff
end_hunk_0
begin_hunk_1_@_ZN3gmx6cshakeEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEEPK5t_pbcNS3_IKS7_EES5_fS5_S5_NS3_IfEES2_:bb.a
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !28 ; 2 uses
  %i.bu = sext i32 %i.z to i64                    ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !28 ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.br ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !28
  %i.ca = call float @llvm.fmuladd.f32(float %i.bq, float %i.bt, float %i.bz)
  store float %i.ca, ptr %i.by, align 4, !tbaa !28
  %i.cb = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.bu ; 3 uses
  %i.cc = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.s, %i.cd            ; 2 uses
  %i.cf = load <2 x float>, ptr %i.bx, align 4, !tbaa !28
  %i.cg = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ch, <2 x float> %i.cf)
  store <2 x float> %i.ci, ptr %i.bx, align 4, !tbaa !28
  %i.cj = load <2 x float>, ptr %i.cb, align 4, !tbaa !28
  %i.ck = fneg <2 x float> %i.ce
  %i.cl = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.cj)
  store <2 x float> %i.cn, ptr %i.cb, align 4, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !28
  %i.cq = fneg float %i.bq
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.bw, float %i.cp)
  store float %i.cr, ptr %i.co, align 4, !tbaa !28
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.276.us = phi i32 [ %.17583.us, %bb.e ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ] ; 2 uses
  %.3.us = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ %i.ct, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = icmp samesign ult i64 %indvars.iv.next, %i.q
  %i.cv = icmp eq i32 %.3.us, 0                   ; 2 uses
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %bb.b, label %._crit_edge.us, !llvm.loop !63

._crit_edge.us:                                   ; preds = %bb.i
  %i.cx = add nuw nsw i32 %.07785.us, 1           ; 3 uses
  %i.cy = icmp slt i32 %i.cx, %3
  %i.cz = icmp ne i32 %.276.us, 0
  %or.cond.us = select i1 %i.cy, i1 %i.cz, i1 false
  %or.cond3.us = and i1 %or.cond.us, %i.cv
  br i1 %or.cond3.us, label %.preheader.us, label %.critedge, !llvm.loop !64

.critedge:                                        ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  %.077.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.preheader.lr.ph ], [ %i.cx, %._crit_edge.us ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.preheader.lr.ph ], [ %.3.us, %._crit_edge.us ]
  store i32 %.077.lcssa, ptr %2, align 4, !tbaa !17
  store i32 %.0.lcssa, ptr %14, align 4, !tbaa !17
  ret void
}

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3gmx15constrain_shakeEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EESH_PK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr %2, ptr %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2760) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.35") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %8, ptr noundef %9, ptr nofree noundef captures(none) %10, float noundef %11, ptr nofree noundef captures(none) %12, float noundef %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %14, i1 noundef zeroext %15, ptr nofree noundef captures(none) %16, i1 noundef zeroext %17, i32 noundef %18) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 17179869180
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %18, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %3 to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.n = load ptr, ptr %6, align 8, !tbaa !31
  %i.o = load ptr, ptr %7, align 8, !tbaa !33     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %i.v = load ptr, ptr %14, align 8, !tbaa !33    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  %i.ac = tail call fastcc noundef zeroext i1 @_ZN3gmxL7bshakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EEPK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr noundef %0, ptr noundef nonnull %1, ptr %2, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(2760) %4, ptr noundef nonnull align 8 dereferenceable(888) %5, ptr %i.n, ptr %i.o, ptr %i.u, ptr noundef %9, ptr noundef %10, float noundef %11, ptr noundef %12, float noundef %13, ptr %i.v, ptr %i.ab, i1 noundef zeroext %15, ptr noundef %16, i1 noundef zeroext %17, i32 noundef 0)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %3 to i64
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = load ptr, ptr %6, align 8, !tbaa !31
  %i.ai = load ptr, ptr %8, align 8, !tbaa !33    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an
  %i.ap = tail call fastcc noundef zeroext i1 @_ZN3gmxL7bshakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EEPK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr noundef %0, ptr noundef nonnull %1, ptr %2, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(2760) %4, ptr noundef nonnull align 8 dereferenceable(888) %5, ptr %i.ah, ptr %i.ai, ptr %i.ao, ptr noundef %9, ptr noundef %10, float noundef %11, ptr noundef %12, float noundef %13, ptr null, ptr null, i1 noundef zeroext %15, ptr noundef %16, i1 noundef zeroext %17, i32 noundef 1)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(60) @.str.9, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 863, ptr noundef nonnull @.str.10) #18
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  resume { ptr, i32 } %i.aq

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.ac, %bb.c ], [ %i.ap, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN3gmxL7bshakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EEPK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr %2, ptr %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2760) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %5, ptr %.0.val, ptr %.0.val1, ptr %.8.val3, ptr noundef %6, ptr nofree noundef captures(none) %7, float noundef %8, ptr nofree noundef captures(none) %9, float noundef %10, ptr nofree captures(address) %.0.val5, ptr nofree readnone captures(address) %.8.val7, i1 noundef zeroext %11, ptr nofree noundef captures(none) %12, i1 noundef zeroext %13, i32 noundef range(i32 0, 2) %14) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %15 = alloca %"class.gmx::ArrayRef.32", align 8 ; 5 uses
  %16 = alloca %"class.gmx::ArrayRef.35", align 8 ; 5 uses
  %17 = alloca %"class.gmx::ArrayRef.29", align 8 ; 5 uses
  %18 = alloca %"class.gmx::ArrayRef.29", align 8 ; 5 uses
  %19 = alloca %"class.gmx::ArrayRef.29", align 8 ; 5 uses
  %20 = alloca %"class.gmx::ArrayRef.38", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1552 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = sdiv i32 %i.l, 3                         ; 3 uses
  %i.n = icmp sgt i32 %i.l, 2                     ; 2 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = add nsw i32 %i.m, -1
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.p, i8 0, i64 %i.t, i1 false), !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !13   ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !26  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = load i32, ptr %i.y, align 4, !tbaa !17
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ao
  %i.aq = ptrtoint ptr %3 to i64
  %i.ar = ptrtoint ptr %2 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 416
  %i.av = ptrtoint ptr %.8.val3 to i64
  %i.aw = ptrtoint ptr %.0.val1 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val1, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = fsub float 1.000000e+00, %8             ; 3 uses
  %trunc114.i.a = trunc nuw i32 %14 to i1         ; 3 uses
  %.not137.i = icmp eq ptr %6, null               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.not135.i = icmp ne ptr %0, null               ; 3 uses
  %21 = icmp ne i32 %14, 0
  %i.bp = icmp eq ptr %.0.val5, %.8.val7
  %i.bq = fneg float %10
  %brmerge.i = select i1 %21, i1 true, i1 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %bb.ah ] ; 2 uses
  %i.bz = phi ptr [ %i.y, %.lr.ph59 ], [ %i.wh, %bb.ah ] ; 2 uses
  %.08856 = phi ptr [ %i.ap, %.lr.ph59 ], [ %i.we, %bb.ah ] ; 11 uses
  %.08955 = phi i32 [ 0, %.lr.ph59 ], [ %i.wb, %bb.ah ]
  %.09054 = phi i32 [ 0, %.lr.ph59 ], [ %i.wa, %bb.ah ]
  %.sroa.7.053 = phi ptr [ %i.am, %.lr.ph59 ], [ %i.co, %bb.ah ]
  %.sroa.031.052 = phi ptr [ %i.ag, %.lr.ph59 ], [ %i.wf, %bb.ah ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !17
  %i.ce = sub nsw i32 %i.cb, %i.cd                ; 2 uses
  %i.cf = sdiv i32 %i.ce, 3                       ; 10 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !89, !nonnull !90, !align !91
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !92 ; 3 uses
  %i.ci = load float, ptr %i.au, align 8, !tbaa !186 ; 2 uses
  %i.cj = load float, ptr %i.az, align 4, !tbaa !194 ; 2 uses
  %i.ck = load i32, ptr %i.ba, align 4, !tbaa !195
  %.not40 = icmp eq i32 %i.ck, 0                  ; 3 uses
  %i.cl = ptrtoint ptr %.sroa.7.053 to i64
  %i.cm = ptrtoint ptr %.sroa.031.052 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds i8, ptr %.sroa.031.052, i64 %i.cn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.cp = sext i32 %i.cf to i64                   ; 14 uses
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cp)
  %i.cq = load ptr, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.cr = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2                 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %i.cp
  br i1 %i.cw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cx = sub nuw nsw i64 %i.cp, %i.cv
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.cx)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.cy = icmp ugt i64 %i.cv, %i.cp
  br i1 %i.cy, label %bb.e, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cp ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, %i.cz
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.cz, ptr %i.bc, align 8, !tbaa !25
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %bb.e, %bb.d, %bb.c
  %i.da = load ptr, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.db = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.cp
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.dh = sub nuw nsw i64 %i.cp, %i.df
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 noundef %i.dh)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.di = icmp ugt i64 %i.df, %i.cp
  br i1 %i.di, label %bb.h, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.cp ; 2 uses
  %.not.i.i143.i = icmp eq ptr %i.da, %i.dj
  br i1 %.not.i.i143.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i144.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i144.i:   ; preds = %bb.h
  store ptr %i.dj, ptr %i.be, align 8, !tbaa !25
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i:          ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i144.i, %bb.h, %bb.g, %bb.f
  %i.dk = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  %i.dl = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 5 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 2                 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, %i.cp
  br i1 %i.dq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i
  %i.dr = sub nuw nsw i64 %i.cp, %i.dp
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.dr)
  %.pre.i = load ptr, ptr %i.bf, align 8, !tbaa !26
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i
  %i.ds = icmp ugt i64 %i.dp, %i.cp
  br i1 %i.ds, label %bb.k, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i

bb.k:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.cp ; 2 uses
  %.not.i.i146.i = icmp eq ptr %i.dk, %i.dt
  br i1 %.not.i.i146.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i:   ; preds = %bb.k
  store ptr %i.dt, ptr %i.bg, align 8, !tbaa !25
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i:          ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i, %bb.k, %bb.j, %bb.i
  %i.du = phi ptr [ %.pre.i, %bb.i ], [ %i.dl, %bb.j ], [ %i.dl, %bb.k ], [ %i.dl, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i ] ; 4 uses
  %i.dv = load ptr, ptr %1, align 8, !tbaa !36    ; 8 uses
  %i.dw = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dz
  %i.eb = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 6 uses
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ef
  %i.eh = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 6 uses
  %i.ei = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.el
  %i.en = icmp sgt i32 %i.ce, 2                   ; 3 uses
  br i1 %i.en, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i
  %wide.trip.count63.i = zext nneg i32 %i.cf to i64 ; 3 uses
  br i1 %.not137.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.m
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %bb.m ], [ 0, %.lr.ph.i ] ; 5 uses
  %.012147.us.i = phi ptr [ %i.gb, %bb.m ], [ %.08856, %.lr.ph.i ] ; 4 uses
  %i.eo = load i32, ptr %.012147.us.i, align 4, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %.012147.us.i, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %.012147.us.i, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !17
  %i.et = sext i32 %i.eq to i64                   ; 2 uses
  %i.eu = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.et ; 2 uses
  %i.ev = sext i32 %i.es to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv60.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !28
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !28
  %i.fc = fsub float %i.ez, %i.fb
  %i.fd = load <2 x float>, ptr %i.eu, align 4, !tbaa !28
  %i.fe = load <2 x float>, ptr %i.ew, align 4, !tbaa !28
  %i.ff = fsub <2 x float> %i.fd, %i.fe
  store <2 x float> %i.ff, ptr %i.ex, align 4, !tbaa !28
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store float %i.fc, ptr %i.fg, align 4, !tbaa !28
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.et
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !28
  %i.fj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ev
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !28
  %i.fl = fadd float %i.fi, %i.fk
  %i.fm = fmul float %i.fl, 2.000000e+00
  %i.fn = fdiv float 1.000000e+00, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv60.i
  store float %i.fn, ptr %i.fo, align 4, !tbaa !28
  %i.fp = sext i32 %i.eo to i64
  %i.fq = getelementptr inbounds [48 x i8], ptr %i.ch, i64 %i.fp ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !16 ; 2 uses
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !16
  %i.fu = fmul float %8, %i.ft
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.fr, float %i.fu)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.i
  %.0123.us.i = phi float [ %i.fv, %bb.l ], [ %i.fr, %.lr.ph.split.us.i ] ; 2 uses
  %i.fw = fmul float %.0123.us.i, %.0123.us.i     ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv60.i
  store float %i.fw, ptr %i.fx, align 4, !tbaa !28
  %i.fy = fmul float %i.ci, %i.fw
  %i.fz = fdiv float 5.000000e-01, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv60.i
  store float %i.fz, ptr %i.ga, align 4, !tbaa !28
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.012147.us.i, i64 12
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !65

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %.lr.ph.i ] ; 5 uses
  %.012147.i = phi ptr [ %i.hg, %bb.o ], [ %.08856, %.lr.ph.i ] ; 4 uses
  %i.gc = load i32, ptr %.012147.i, align 4, !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %.012147.i, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %.012147.i, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !17
  %i.gh = sext i32 %i.ge to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.gh
  %i.gj = sext i32 %i.gg to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv.i
  tail call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gl)
  %i.gm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gh
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !28
  %i.go = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gj
  %i.gp = load float, ptr %i.go, align 4, !tbaa !28
  %i.gq = fadd float %i.gn, %i.gp
  %i.gr = fmul float %i.gq, 2.000000e+00
  %i.gs = fdiv float 1.000000e+00, %i.gr
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i
  store float %i.gs, ptr %i.gt, align 4, !tbaa !28
  %i.gu = sext i32 %i.gc to i64
  %i.gv = getelementptr inbounds [48 x i8], ptr %i.ch, i64 %i.gu ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !16 ; 2 uses
  br i1 %.not40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !16
  %i.gz = fmul float %8, %i.gy
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.gw, float %i.gz)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.i
  %.0123.i = phi float [ %i.ha, %bb.n ], [ %i.gw, %.lr.ph.split.i ] ; 2 uses
  %i.hb = fmul float %.0123.i, %.0123.i           ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i
  store float %i.hb, ptr %i.hc, align 4, !tbaa !28
  %i.hd = fmul float %i.ci, %i.hb
  %i.he = fdiv float 5.000000e-01, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i
  store float %i.he, ptr %i.hf, align 4, !tbaa !28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.012147.i, i64 12
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count63.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %bb.o, %bb.m
  br i1 %trunc114.i.a, label %bb.q, label %bb.p

._crit_edge.thread.i:                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i
  br i1 %trunc114.i.a, label %_ZN3gmxL7crattleEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEENS3_IKS7_EES5_fS5_S5_NS3_IfEES2_f.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  store ptr %.0.val1, ptr %15, align 8, !tbaa !33
  store ptr %i.ay, ptr %i.bj, align 8, !tbaa !33
  store ptr %i.dv, ptr %16, align 8, !tbaa !31
  store ptr %i.ea, ptr %i.bk, align 8, !tbaa !31
  store ptr %i.eb, ptr %17, align 8, !tbaa !197
  store ptr %i.eg, ptr %i.bl, align 8, !tbaa !197
  store ptr %2, ptr %18, align 8, !tbaa !197
  store ptr %i.at, ptr %i.bm, align 8, !tbaa !197
  store ptr %i.eh, ptr %19, align 8, !tbaa !197
  store ptr %i.em, ptr %i.bn, align 8, !tbaa !197
  store ptr %.sroa.031.052, ptr %20, align 8, !tbaa !199
  store ptr %i.co, ptr %i.bo, align 8, !tbaa !199
  call void @_ZN3gmx6cshakeEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEEPK5t_pbcNS3_IKS7_EES5_fS5_S5_NS3_IfEES2_(ptr noundef nonnull readonly %.08856, i32 noundef range(i32 -715827882, 715827883) %i.cf, ptr noundef nonnull %i.b, i32 noundef 1000, ptr %i.du, ptr poison, ptr noundef nonnull byval(%"class.gmx::ArrayRef.32") align 8 %15, ptr noundef %6, ptr noundef nonnull byval(%"class.gmx::ArrayRef.35") align 8 %16, ptr noundef nonnull byval(%"class.gmx::ArrayRef.29") align 8 %17, float noundef %i.cj, ptr noundef nonnull byval(%"class.gmx::ArrayRef.29") align 8 %18, ptr noundef nonnull byval(%"class.gmx::ArrayRef.29") align 8 %19, ptr noundef nonnull byval(%"class.gmx::ArrayRef.38") align 8 %20, ptr noundef nonnull %i.c)
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !17
  br label %bb.u

bb.q:                                             ; preds = %._crit_edge.i
  %i.hh = fmul float %i.cj, 2.000000e+00
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %bb.q
  %.06714.us.i.i = phi i32 [ %i.jy, %._crit_edge.us.i.i ], [ 0, %bb.q ] ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 7 uses
  %.113.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %.2.us.i.i, %bb.t ]
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv.i.i ; 2 uses
  %i.hj = load <2 x float>, ptr %i.hi, align 4, !tbaa !28 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !28 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i.i, 12
  %i.hm = getelementptr inbounds nuw i8, ptr %.08856, i64 %.idx.i.i ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !17
  %i.hr = sext i32 %i.ho to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.hr ; 5 uses
  %i.ht = sext i32 %i.hq to i64                   ; 2 uses
  %i.hu = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.ht ; 5 uses
  %i.hv = load float, ptr %i.hs, align 4, !tbaa !28
  %i.hw = load float, ptr %i.hu, align 4, !tbaa !28
  %i.hx = fsub float %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.ia = load <2 x float>, ptr %i.hy, align 4, !tbaa !28
  %i.ib = load <2 x float>, ptr %i.hz, align 4, !tbaa !28
  %i.ic = fsub <2 x float> %i.ia, %i.ib           ; 2 uses
  %shift = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.ic
  %i.id = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ie = extractelement <2 x float> %i.hj, i64 0
  %i.if = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.ie, float %i.id)
  %i.ig = extractelement <2 x float> %i.ic, i64 1
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.hl, float %i.if) ; 2 uses
  %i.ii = tail call noundef float @llvm.fabs.f32(float %i.ih)
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i.i
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !28
  %i.il = fdiv float %i.ik, %10
  %i.im = fmul float %i.il, %i.ii                 ; 2 uses
  %i.in = fcmp ogt float %i.im, 1.000000e+00
  br i1 %i.in, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.io = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i.i
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !28
  %i.is = fptosi float %i.im to i32
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.iu = load float, ptr %i.it, align 4, !tbaa !28
  %i.iv = fneg float %i.iu
  %i.iw = fmul float %i.hh, %i.iv
  %i.ix = fdiv float %i.iw, %i.ir
  %i.iy = fmul float %i.ih, %i.ix                 ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.052, i64 %indvars.iv.i.i ; 2 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !28
  %i.jb = fadd float %i.ja, %i.iy
  store float %i.jb, ptr %i.iz, align 4, !tbaa !28
  %i.jc = fmul float %i.hl, %i.iy                 ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hr
  %i.je = load float, ptr %i.jd, align 4, !tbaa !28 ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ht
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !28 ; 2 uses
  %i.jh = load float, ptr %i.ip, align 4, !tbaa !28
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.je, float %i.jh)
  store float %i.ji, ptr %i.ip, align 4, !tbaa !28
  %i.jj = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.hj, %i.jk           ; 2 uses
  %i.jm = load <2 x float>, ptr %i.hs, align 4, !tbaa !28
  %i.jn = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jo, <2 x float> %i.jm)
  store <2 x float> %i.jp, ptr %i.hs, align 4, !tbaa !28
  %i.jq = load <2 x float>, ptr %i.hu, align 4, !tbaa !28
  %i.jr = fneg <2 x float> %i.jl
  %i.js = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.jt, <2 x float> %i.jq)
  store <2 x float> %i.ju, ptr %i.hu, align 4, !tbaa !28
  %i.jv = load float, ptr %i.io, align 4, !tbaa !28
  %i.jw = fneg float %i.jc
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.jg, float %i.jv)
  store float %i.jx, ptr %i.io, align 4, !tbaa !28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2.us.i.i = phi i32 [ %i.is, %bb.s ], [ %.113.us.i.i, %bb.r ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count63.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.r, !llvm.loop !66

._crit_edge.us.i.i:                               ; preds = %bb.t
  %i.jy = add nuw nsw i32 %.06714.us.i.i, 1       ; 2 uses
  %i.jz = icmp samesign ult i32 %.06714.us.i.i, 999
  %i.ka = icmp ne i32 %.2.us.i.i, 0
  %or.cond.us.i.i = select i1 %i.jz, i1 %i.ka, i1 false
  br i1 %or.cond.us.i.i, label %.preheader.us.i.i, label %_ZN3gmxL7crattleEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEENS3_IKS7_EES5_fS5_S5_NS3_IfEES2_f.exit.i, !llvm.loop !67

_ZN3gmxL7crattleEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEENS3_IKS7_EES5_fS5_S5_NS3_IfEES2_f.exit.i: ; preds = %._crit_edge.us.i.i, %._crit_edge.thread.i
  %.us-phi.i.i = phi i32 [ 1, %._crit_edge.thread.i ], [ %i.jy, %._crit_edge.us.i.i ]
  store i32 0, ptr %i.c, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %_ZN3gmxL7crattleEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEENS3_IKS7_EES5_fS5_S5_NS3_IfEES2_f.exit.i, %bb.p
  %i.kb = phi i32 [ %.us-phi.i.i, %_ZN3gmxL7crattleEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEENS3_IKS7_EES5_fS5_S5_NS3_IfEES2_f.exit.i ], [ %.pr.i, %bb.p ] ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, 999
  br i1 %i.kc, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %.not135.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef 1000) #17 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ke = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ke, ptr noundef nonnull @.str.13, i32 noundef 1000) #21 ; 0 uses
  br label %bb.ab

bb.y:                                             ; preds = %bb.u
  %i.kg = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i32 %i.kg, 0
  br i1 %.not.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.pre89.i = add nsw i32 %i.kg, -1               ; 3 uses
  %.pre91.i = mul nsw i32 %.pre89.i, 3
  %.pre93.i = sext i32 %.pre91.i to i64           ; 2 uses
  br i1 %.not135.i, label %bb.aa, label %._crit_edge88.i

bb.aa:                                            ; preds = %bb.z
  %i.kh = getelementptr [4 x i8], ptr %.08856, i64 %.pre93.i ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !17
  %i.kk = add nsw i32 %i.kj, 1
  %i.kl = getelementptr i8, ptr %i.kh, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !17
  %i.kn = add nsw i32 %i.km, 1
  %i.ko = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %.pre89.i, i32 noundef %i.kk, i32 noundef %i.kn) #17 ; 0 uses
  br label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.aa, %bb.z
  %i.kp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kq = getelementptr [4 x i8], ptr %.08856, i64 %.pre93.i ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !17
  %i.kt = add nsw i32 %i.ks, 1
  %i.ku = getelementptr i8, ptr %i.kq, i64 8
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !17
  %i.kw = add nsw i32 %i.kv, 1
  %i.kx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kp, ptr noundef nonnull @.str.14, i32 noundef %.pre89.i, i32 noundef %i.kt, i32 noundef %i.kw) #21 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge88.i, %bb.y, %bb.x
  %i.ky = phi i32 [ %i.kb, %bb.y ], [ 0, %._crit_edge88.i ], [ 0, %bb.x ] ; 2 uses
  br i1 %i.en, label %.lr.ph55.i, label %_ZN3gmxL10vec_shakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEEiNS4_IK9t_iparamsEEPKifNS4_IKNS_11BasicVectorIfEEEENS4_ISD_EEPK5t_pbcfbfNS4_IfEEfSG_bPA3_fNS_18ConstraintVariableE.exit

.lr.ph55.i:                                       ; preds = %bb.ab
  %wide.trip.count84.i = zext nneg i32 %i.cf to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph55.i
  %indvars.iv81.i = phi i64 [ 0, %.lr.ph55.i ], [ %indvars.iv.next82.i, %bb.ae ] ; 6 uses
  %.112253.i = phi ptr [ %.08856, %.lr.ph55.i ], [ %i.oq, %bb.ae ] ; 4 uses
  %i.kz = load i32, ptr %.112253.i, align 4, !tbaa !17
  br i1 %brmerge.i, label %.loopexit45.i, label %.loopexit45.loopexit.i

.loopexit45.loopexit.i:                           ; preds = %bb.ac
  %i.la = getelementptr inbounds nuw i8, ptr %.112253.i, i64 8
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !17
  %i.lc = getelementptr inbounds nuw i8, ptr %.112253.i, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !17
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.052, i64 %indvars.iv81.i ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !28
  %i.lg = sext i32 %i.ld to i64                   ; 2 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !28
  %i.lj = fmul float %i.lf, %i.li
  %i.lk = fmul float %10, %i.lj                   ; 3 uses
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv81.i ; 4 uses
  %i.lm = getelementptr inbounds [12 x i8], ptr %.0.val5, i64 %i.lg ; 4 uses
  %i.ln = load float, ptr %i.ll, align 4, !tbaa !28
  %i.lo = load float, ptr %i.lm, align 4, !tbaa !28
  %i.lp = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.ln, float %i.lo)
  store float %i.lp, ptr %i.lm, align 4, !tbaa !28
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 4 ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !28
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 4 ; 2 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !28
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.lr, float %i.lt)
  store float %i.lu, ptr %i.ls, align 4, !tbaa !28
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !28
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 2 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !28
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.lw, float %i.ly)
  store float %i.lz, ptr %i.lx, align 4, !tbaa !28
  %i.ma = load float, ptr %i.le, align 4, !tbaa !28
  %i.mb = sext i32 %i.lb to i64                   ; 2 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.mb
  %i.md = load float, ptr %i.mc, align 4, !tbaa !28
  %i.me = fmul float %i.ma, %i.md
  %i.mf = getelementptr inbounds [12 x i8], ptr %.0.val5, i64 %i.mb ; 4 uses
  %i.mg = fmul float %i.me, %i.bq                 ; 3 uses
  %i.mh = load float, ptr %i.ll, align 4, !tbaa !28
  %i.mi = load float, ptr %i.mf, align 4, !tbaa !28
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mh, float %i.mi)
  store float %i.mj, ptr %i.mf, align 4, !tbaa !28
  %i.mk = load float, ptr %i.lq, align 4, !tbaa !28
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 4 ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !28
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mk, float %i.mm)
  store float %i.mn, ptr %i.ml, align 4, !tbaa !28
  %i.mo = load float, ptr %i.lv, align 4, !tbaa !28
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !28
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mo, float %i.mq)
  store float %i.mr, ptr %i.mp, align 4, !tbaa !28
  br label %.loopexit45.i

.loopexit45.i:                                    ; preds = %.loopexit45.loopexit.i, %bb.ac
  br i1 %11, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit45.i
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.052, i64 %indvars.iv81.i
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !28 ; 3 uses
  %i.mu = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %indvars.iv81.i ; 5 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !28 ; 2 uses
  %i.mw = fneg float %i.mv
  %i.mx = fmul float %i.mt, %i.mw                 ; 3 uses
  %i.my = load float, ptr %12, align 4, !tbaa !28
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.mx, float %i.mv, float %i.my)
  store float %i.mz, ptr %12, align 4, !tbaa !28
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 4 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !28
  %i.nc = load float, ptr %i.br, align 4, !tbaa !28
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.mx, float %i.nb, float %i.nc)
  store float %i.nd, ptr %i.br, align 4, !tbaa !28
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 4 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !28
  %i.ng = load float, ptr %i.bs, align 4, !tbaa !28
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.mx, float %i.nf, float %i.ng)
  store float %i.nh, ptr %i.bs, align 4, !tbaa !28
  %i.ni = load float, ptr %i.na, align 4, !tbaa !28
  %i.nj = fneg float %i.ni
  %i.nk = fmul float %i.mt, %i.nj                 ; 3 uses
  %i.nl = load float, ptr %i.mu, align 4, !tbaa !28
  %i.nm = load float, ptr %i.bt, align 4, !tbaa !28
  %i.nn = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.nl, float %i.nm)
  store float %i.nn, ptr %i.bt, align 4, !tbaa !28
  %i.no = load float, ptr %i.na, align 4, !tbaa !28
  %i.np = load float, ptr %i.bu, align 4, !tbaa !28
  %i.nq = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.no, float %i.np)
  store float %i.nq, ptr %i.bu, align 4, !tbaa !28
  %i.nr = load float, ptr %i.ne, align 4, !tbaa !28
  %i.ns = load float, ptr %i.bv, align 4, !tbaa !28
  %i.nt = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.nr, float %i.ns)
  store float %i.nt, ptr %i.bv, align 4, !tbaa !28
  %i.nu = load float, ptr %i.ne, align 4, !tbaa !28
  %i.nv = fneg float %i.nu
  %i.nw = fmul float %i.mt, %i.nv                 ; 3 uses
  %i.nx = load float, ptr %i.mu, align 4, !tbaa !28
  %i.ny = load float, ptr %i.bw, align 4, !tbaa !28
  %i.nz = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.nx, float %i.ny)
  store float %i.nz, ptr %i.bw, align 4, !tbaa !28
  %i.oa = load float, ptr %i.na, align 4, !tbaa !28
  %i.ob = load float, ptr %i.bx, align 4, !tbaa !28
  %i.oc = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.oa, float %i.ob)
  store float %i.oc, ptr %i.bx, align 4, !tbaa !28
  %i.od = load float, ptr %i.ne, align 4, !tbaa !28
  %i.oe = load float, ptr %i.by, align 4, !tbaa !28
  %i.of = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.od, float %i.oe)
  store float %i.of, ptr %i.by, align 4, !tbaa !28
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit45.i
  %i.og = sext i32 %i.kz to i64
  %i.oh = getelementptr inbounds [48 x i8], ptr %i.ch, i64 %i.og ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !16 ; 2 uses
  br i1 %.not40, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !16
  %i.ol = fmul float %8, %i.ok
  %i.om = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.oi, float %i.ol)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit.i
  %.1124.i = phi float [ %i.om, %bb.ad ], [ %i.oi, %.loopexit.i ]
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.052, i64 %indvars.iv81.i ; 2 uses
  %i.oo = load float, ptr %i.on, align 4, !tbaa !28
  %i.op = fmul float %.1124.i, %i.oo
  store float %i.op, ptr %i.on, align 4, !tbaa !28
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.112253.i, i64 12
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count84.i
  br i1 %exitcond85.not.i, label %_ZN3gmxL10vec_shakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEEiNS4_IK9t_iparamsEEPKifNS4_IKNS_11BasicVectorIfEEEENS4_ISD_EEPK5t_pbcfbfNS4_IfEEfSG_bPA3_fNS_18ConstraintVariableE.exit, label %bb.ac, !llvm.loop !68

_ZN3gmxL10vec_shakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEEiNS4_IK9t_iparamsEEPKifNS4_IKNS_11BasicVectorIfEEEENS4_ISD_EEPK5t_pbcfbfNS4_IfEEfSG_bPA3_fNS_18ConstraintVariableE.exit: ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.or = icmp eq i32 %i.ky, 0
  br i1 %i.or, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN3gmxL10vec_shakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEEiNS4_IK9t_iparamsEEPKifNS4_IKNS_11BasicVectorIfEEEENS4_ISD_EEPK5t_pbcfbfNS4_IfEEfSG_bPA3_fNS_18ConstraintVariableE.exit
  %or.cond = and i1 %.not135.i, %13
  br i1 %or.cond, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.os = load ptr, ptr %4, align 8, !tbaa !89, !nonnull !90, !align !91
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !92 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 63, i64 1, ptr nonnull %0) ; 0 uses
  br i1 %i.en, label %.lr.ph.i102, label %_ZN3gmxL10check_consEP8_IO_FILEiNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_S6_PK5t_pbcNS2_IK9t_iparamsEEPKiNS2_IKfEENS_18ConstraintVariableE.exit

.lr.ph.i102:                                      ; preds = %bb.ag
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %trunc114.i.a, label %.lr.ph.split.us.i107, label %.lr.ph.split.i104

.lr.ph.split.us.i107:                             ; preds = %.lr.ph.i102, %.lr.ph.split.us.i107
  %.03917.us.i = phi ptr [ %i.ro, %.lr.ph.split.us.i107 ], [ %.08856, %.lr.ph.i102 ] ; 3 uses
  %.04016.us.i = phi i32 [ %i.rn, %.lr.ph.split.us.i107 ], [ 0, %.lr.ph.i102 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.03917.us.i, i64 4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !17 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.03917.us.i, i64 8
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !17 ; 2 uses
  %i.pa = sext i32 %i.ox to i64                   ; 4 uses
  %i.pb = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.pa ; 3 uses
  %i.pc = sext i32 %i.oz to i64                   ; 4 uses
  %i.pd = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.pc ; 3 uses
  %i.pe = load float, ptr %i.pb, align 4, !tbaa !28
  %i.pf = load float, ptr %i.pd, align 4, !tbaa !28
  %i.pg = fsub float %i.pe, %i.pf                 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !28
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !28
  %i.pl = fsub float %i.pi, %i.pk                 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !28
  %i.po = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pp = load float, ptr %i.po, align 4, !tbaa !28
  %i.pq = fsub float %i.pn, %i.pp                 ; 2 uses
  %i.pr = getelementptr inbounds [12 x i8], ptr %.0.val5, i64 %i.pa ; 3 uses
  %i.ps = getelementptr inbounds [12 x i8], ptr %.0.val5, i64 %i.pc ; 3 uses
  %i.pt = load float, ptr %i.pr, align 4, !tbaa !28
  %i.pu = load float, ptr %i.ps, align 4, !tbaa !28
  %i.pv = fsub float %i.pt, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.px = load float, ptr %i.pw, align 4, !tbaa !28
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.pz = load float, ptr %i.py, align 4, !tbaa !28
  %i.qa = fsub float %i.px, %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !28
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !28
  %i.qf = fsub float %i.qc, %i.qe
  %i.qg = fmul float %i.pl, %i.qa
  %i.qh = tail call float @llvm.fmuladd.f32(float %i.pg, float %i.pv, float %i.qg)
  %i.qi = tail call noundef float @llvm.fmuladd.f32(float %i.pq, float %i.qf, float %i.qh)
  %i.qj = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.pa ; 2 uses
  %i.qk = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.pc ; 2 uses
  %i.ql = load float, ptr %i.qj, align 4, !tbaa !28
  %i.qm = load float, ptr %i.qk, align 4, !tbaa !28
  %i.qn = fsub float %i.ql, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qq = load <2 x float>, ptr %i.qo, align 4, !tbaa !28
  %i.qr = load <2 x float>, ptr %i.qp, align 4, !tbaa !28
  %i.qs = fsub <2 x float> %i.qq, %i.qr           ; 2 uses
  %i.qt = extractelement <2 x float> %i.qs, i64 0
  %i.qu = fmul float %i.pl, %i.qt
  %i.qv = tail call float @llvm.fmuladd.f32(float %i.pg, float %i.qn, float %i.qu)
  %i.qw = extractelement <2 x float> %i.qs, i64 1
  %i.qx = tail call noundef float @llvm.fmuladd.f32(float %i.pq, float %i.qw, float %i.qv)
  %i.qy = add nsw i32 %i.ox, 1
  %i.qz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.pa
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !28
  %i.rb = add nsw i32 %i.oz, 1
  %i.rc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.pc
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !28
  %i.re = insertelement <2 x float> poison, float %i.ra, i64 0
  %i.rf = insertelement <2 x float> %i.re, float %i.rd, i64 1
  %i.rg = fpext <2 x float> %i.rf to <2 x double>
  %i.rh = fdiv <2 x double> splat (double 1.000000e+00), %i.rg ; 2 uses
  %i.ri = fpext float %i.qi to double
  %i.rj = fpext float %i.qx to double
  %i.rk = extractelement <2 x double> %i.rh, i64 0
  %i.rl = extractelement <2 x double> %i.rh, i64 1
  %i.rm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %i.qy, double noundef %i.rk, i32 noundef %i.rb, double noundef %i.rl, double noundef %i.ri, double noundef %i.rj, double noundef 0.000000e+00) #17 ; 0 uses
  %i.rn = add nuw nsw i32 %.04016.us.i, 1         ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.03917.us.i, i64 12
  %exitcond24.not.i = icmp eq i32 %i.rn, %i.cf
  br i1 %exitcond24.not.i, label %_ZN3gmxL10check_consEP8_IO_FILEiNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_S6_PK5t_pbcNS2_IK9t_iparamsEEPKiNS2_IKfEENS_18ConstraintVariableE.exit, label %.lr.ph.split.us.i107, !llvm.loop !69

.lr.ph.split.i104:                                ; preds = %.lr.ph.i102
  br i1 %.not137.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i104, %.lr.ph.split.split.us.i
  %.03917.us18.i = phi ptr [ %i.ua, %.lr.ph.split.split.us.i ], [ %.08856, %.lr.ph.split.i104 ] ; 4 uses
  %.04016.us19.i = phi i32 [ %i.tz, %.lr.ph.split.split.us.i ], [ 0, %.lr.ph.split.i104 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.03917.us18.i, i64 4
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !17 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.03917.us18.i, i64 8
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !17 ; 2 uses
  %i.rt = sext i32 %i.rq to i64                   ; 3 uses
  %i.ru = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.rt ; 3 uses
  %i.rv = sext i32 %i.rs to i64                   ; 3 uses
  %i.rw = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.rv ; 3 uses
  %i.rx = load float, ptr %i.ru, align 4, !tbaa !28
  %i.ry = load float, ptr %i.rw, align 4, !tbaa !28
  %i.rz = fsub float %i.rx, %i.ry                 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !28
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !28
  %i.se = fsub float %i.sb, %i.sd                 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !28
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.si = load float, ptr %i.sh, align 4, !tbaa !28
  %i.sj = fsub float %i.sg, %i.si                 ; 2 uses
  %i.sk = fmul float %i.se, %i.se
  %i.sl = tail call float @llvm.fmuladd.f32(float %i.rz, float %i.rz, float %i.sk)
  %i.sm = tail call noundef float @llvm.fmuladd.f32(float %i.sj, float %i.sj, float %i.sl)
  %sqrt.i.i.us20.i = tail call noundef float @llvm.sqrt.f32(float %i.sm)
  %i.sn = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.rt ; 3 uses
  %i.so = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.rv ; 3 uses
  %i.sp = load float, ptr %i.sn, align 4, !tbaa !28
  %i.sq = load float, ptr %i.so, align 4, !tbaa !28
  %i.sr = fsub float %i.sp, %i.sq                 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.st = load float, ptr %i.ss, align 4, !tbaa !28
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.sv = load float, ptr %i.su, align 4, !tbaa !28
  %i.sw = fsub float %i.st, %i.sv                 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !28
  %i.sz = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !28
  %i.tb = fsub float %i.sy, %i.ta                 ; 2 uses
  %i.tc = fmul float %i.sw, %i.sw
  %i.td = tail call float @llvm.fmuladd.f32(float %i.sr, float %i.sr, float %i.tc)
  %i.te = tail call noundef float @llvm.fmuladd.f32(float %i.tb, float %i.tb, float %i.td)
  %sqrt.i.i42.us.i = tail call noundef float @llvm.sqrt.f32(float %i.te)
  %i.tf = add nsw i32 %i.rq, 1
  %i.tg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.rt
  %i.th = load float, ptr %i.tg, align 4, !tbaa !28
  %i.ti = add nsw i32 %i.rs, 1
  %i.tj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.rv
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !28
  %i.tl = insertelement <2 x float> poison, float %i.th, i64 0
  %i.tm = insertelement <2 x float> %i.tl, float %i.tk, i64 1
  %i.tn = fpext <2 x float> %i.tm to <2 x double>
  %i.to = fdiv <2 x double> splat (double 1.000000e+00), %i.tn ; 2 uses
  %i.tp = fpext float %sqrt.i.i.us20.i to double
  %i.tq = fpext float %sqrt.i.i42.us.i to double
  %i.tr = load i32, ptr %.03917.us18.i, align 4, !tbaa !17
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [48 x i8], ptr %i.ot, i64 %i.ts
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !16
  %i.tv = fpext float %i.tu to double
  %i.tw = extractelement <2 x double> %i.to, i64 0
  %i.tx = extractelement <2 x double> %i.to, i64 1
  %i.ty = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %i.tf, double noundef %i.tw, i32 noundef %i.ti, double noundef %i.tx, double noundef %i.tp, double noundef %i.tq, double noundef %i.tv) #17 ; 0 uses
  %i.tz = add nuw nsw i32 %.04016.us19.i, 1       ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.03917.us18.i, i64 12
  %exitcond23.not.i = icmp eq i32 %i.tz, %i.cf
  br i1 %exitcond23.not.i, label %_ZN3gmxL10check_consEP8_IO_FILEiNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_S6_PK5t_pbcNS2_IK9t_iparamsEEPKiNS2_IKfEENS_18ConstraintVariableE.exit, label %.lr.ph.split.split.us.i, !llvm.loop !69

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i104, %.lr.ph.split.split.i
  %.03917.i = phi ptr [ %i.vy, %.lr.ph.split.split.i ], [ %.08856, %.lr.ph.split.i104 ] ; 4 uses
  %.04016.i = phi i32 [ %i.vx, %.lr.ph.split.split.i ], [ 0, %.lr.ph.split.i104 ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.03917.i, i64 4
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !17 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.03917.i, i64 8
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !17 ; 2 uses
  %i.uf = sext i32 %i.uc to i64                   ; 3 uses
  %i.ug = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.uf ; 2 uses
  %i.uh = sext i32 %i.ue to i64                   ; 3 uses
  %i.ui = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.uh ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !28
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.um = load float, ptr %i.ul, align 4, !tbaa !28
  %i.un = fsub float %i.uk, %i.um                 ; 3 uses
  %i.uo = load <2 x float>, ptr %i.ug, align 4, !tbaa !28
  %i.up = load <2 x float>, ptr %i.ui, align 4, !tbaa !28
  %i.uq = fsub <2 x float> %i.uo, %i.up           ; 4 uses
  store <2 x float> %i.uq, ptr %i.a, align 8, !tbaa !28
  store float %i.un, ptr %i.ov, align 8, !tbaa !28
  %foldExtExtBinop13 = fmul <2 x float> %i.uq, %i.uq
  %i.ur = extractelement <2 x float> %foldExtExtBinop13, i64 1
  %i.us = extractelement <2 x float> %i.uq, i64 0 ; 2 uses
  %i.ut = call float @llvm.fmuladd.f32(float %i.us, float %i.us, float %i.ur)
  %i.uu = call noundef float @llvm.fmuladd.f32(float %i.un, float %i.un, float %i.ut)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.uu)
  %i.uv = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.uf
  %i.uw = getelementptr inbounds [12 x i8], ptr %.0.val1, i64 %i.uh
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.uv, ptr noundef nonnull %i.uw, ptr noundef nonnull %i.a)
  %i.ux = load float, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %i.uy = load float, ptr %i.ou, align 4, !tbaa !28 ; 2 uses
  %i.uz = fmul float %i.uy, %i.uy
  %i.va = call float @llvm.fmuladd.f32(float %i.ux, float %i.ux, float %i.uz)
  %i.vb = load float, ptr %i.ov, align 8, !tbaa !28 ; 2 uses
  %i.vc = call noundef float @llvm.fmuladd.f32(float %i.vb, float %i.vb, float %i.va)
  %sqrt.i.i42.i = call noundef float @llvm.sqrt.f32(float %i.vc)
  %i.vd = add nsw i32 %i.uc, 1
  %i.ve = getelementptr inbounds [4 x i8], ptr %2, i64 %i.uf
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !28
  %i.vg = add nsw i32 %i.ue, 1
  %i.vh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.uh
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !28
  %i.vj = insertelement <2 x float> poison, float %i.vf, i64 0
  %i.vk = insertelement <2 x float> %i.vj, float %i.vi, i64 1
  %i.vl = fpext <2 x float> %i.vk to <2 x double>
  %i.vm = fdiv <2 x double> splat (double 1.000000e+00), %i.vl ; 2 uses
  %i.vn = fpext float %sqrt.i.i.i to double
  %i.vo = fpext float %sqrt.i.i42.i to double
  %i.vp = load i32, ptr %.03917.i, align 4, !tbaa !17
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [48 x i8], ptr %i.ot, i64 %i.vq
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !16
  %i.vt = fpext float %i.vs to double
  %i.vu = extractelement <2 x double> %i.vm, i64 0
  %i.vv = extractelement <2 x double> %i.vm, i64 1
  %i.vw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %i.vd, double noundef %i.vu, i32 noundef %i.vg, double noundef %i.vv, double noundef %i.vn, double noundef %i.vo, double noundef %i.vt) #17 ; 0 uses
  %i.vx = add nuw nsw i32 %.04016.i, 1            ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.03917.i, i64 12
  %exitcond.not.i106 = icmp eq i32 %i.vx, %i.cf
  br i1 %exitcond.not.i106, label %_ZN3gmxL10check_consEP8_IO_FILEiNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_S6_PK5t_pbcNS2_IK9t_iparamsEEPKiNS2_IKfEENS_18ConstraintVariableE.exit, label %.lr.ph.split.split.i, !llvm.loop !69

_ZN3gmxL10check_consEP8_IO_FILEiNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_S6_PK5t_pbcNS2_IK9t_iparamsEEPKiNS2_IKfEENS_18ConstraintVariableE.exit: ; preds = %.lr.ph.split.split.i, %.lr.ph.split.split.us.i, %.lr.ph.split.us.i107, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.at

bb.ah:                                            ; preds = %_ZN3gmxL10vec_shakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEEiNS4_IK9t_iparamsEEPKifNS4_IKNS_11BasicVectorIfEEEENS4_ISD_EEPK5t_pbcfbfNS4_IfEEfSG_bPA3_fNS_18ConstraintVariableE.exit
  %i.vz = mul nsw i32 %i.ky, %i.cf
  %i.wa = add nsw i32 %i.vz, %.09054              ; 2 uses
  %i.wb = add nsw i32 %i.cf, %.08955              ; 2 uses
  %i.wc = mul nsw i32 %i.cf, 3
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %.08856, i64 %i.wd
  %i.wf = getelementptr inbounds [4 x i8], ptr %.sroa.031.052, i64 %i.cp
  %i.wg = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.wh = load ptr, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = sub i64 %i.wi, %i.wj
  %i.wl = shl i64 %i.wk, 30
  %sext = add i64 %i.wl, -4294967296
  %i.wm = ashr i64 %sext, 32
  %.not69 = icmp slt i64 %indvars.iv.next, %i.wm
  br i1 %.not69, label %bb.b, label %._crit_edge60, !llvm.loop !70

._crit_edge60:                                    ; preds = %bb.ah, %._crit_edge
  %.090.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.wa, %bb.ah ] ; 2 uses
  %.089.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.wb, %bb.ah ] ; 2 uses
  %22 = icmp eq i32 %14, 0
  br i1 %22, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %._crit_edge60
  %i.wn = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !195
  %.not = icmp eq i32 %i.wo, 0
  br i1 %.not, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.wp = load ptr, ptr %4, align 8, !tbaa !89, !nonnull !90, !align !91
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !92 ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !200 ; 2 uses
  %i.wt = fmul double %i.ws, %i.ws
  %i.wu = fdiv double 1.000000e+00, %i.wt
  %i.wv = fptrunc double %i.wu to float           ; 5 uses
  br i1 %i.n, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %bb.aj
  %i.ww = load ptr, ptr %i.d, align 8, !tbaa !13  ; 5 uses
  %i.wx = load ptr, ptr %i.v, align 8, !tbaa !26  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.wy = add nsw i32 %i.m, -1
  %i.wz = icmp ult i32 %i.wy, 3
  br i1 %i.wz, label %.epil.preheader, label %.lr.ph66.new

.lr.ph66.new:                                     ; preds = %.lr.ph66
  %unroll_iter = and i64 %wide.trip.count, 1073741820
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph66.new
  %indvars.iv83 = phi i64 [ 0, %.lr.ph66.new ], [ %indvars.iv.next84.3, %bb.ak ] ; 6 uses
  %.08664 = phi float [ 0.000000e+00, %.lr.ph66.new ], [ %i.yv, %bb.ak ]
  %niter = phi i64 [ 0, %.lr.ph66.new ], [ %niter.next.3, %bb.ak ]
  %.idx = mul nuw nsw i64 %indvars.iv83, 12
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ww, i64 %.idx
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !17
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds [48 x i8], ptr %i.wq, i64 %i.xc ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !16
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !16
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %indvars.iv83
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !28
  %i.xj = fmul float %i.xi, %i.wv
  %i.xk = fsub float %i.xg, %i.xe
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.xj, float %i.xk, float %.08664)
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next84, 12
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ww, i64 %.idx.1
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !17
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [48 x i8], ptr %i.wq, i64 %i.xo ; 2 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !16
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !16
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %indvars.iv.next84
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !28
  %i.xv = fmul float %i.xu, %i.wv
  %i.xw = fsub float %i.xs, %i.xq
  %i.xx = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.xw, float %i.xl)
  %indvars.iv.next84.1 = or disjoint i64 %indvars.iv83, 2 ; 2 uses
  %.idx.2 = mul nuw nsw i64 %indvars.iv.next84.1, 12
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ww, i64 %.idx.2
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !17
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds [48 x i8], ptr %i.wq, i64 %i.ya ; 2 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !16
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !16
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %indvars.iv.next84.1
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !28
  %i.yh = fmul float %i.yg, %i.wv
  %i.yi = fsub float %i.ye, %i.yc
  %i.yj = tail call float @llvm.fmuladd.f32(float %i.yh, float %i.yi, float %i.xx)
  %indvars.iv.next84.2 = or disjoint i64 %indvars.iv83, 3 ; 2 uses
  %.idx.3 = mul nuw nsw i64 %indvars.iv.next84.2, 12
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ww, i64 %.idx.3
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !17
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds [48 x i8], ptr %i.wq, i64 %i.ym ; 2 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !16
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !16
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %indvars.iv.next84.2
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !28
  %i.yt = fmul float %i.ys, %i.wv
  %i.yu = fsub float %i.yq, %i.yo
  %i.yv = tail call float @llvm.fmuladd.f32(float %i.yt, float %i.yu, float %i.yj) ; 3 uses
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge67.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !71

._crit_edge67.loopexit.unr-lcssa:                 ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge67, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge67.loopexit.unr-lcssa, %.lr.ph66
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next84.3, %._crit_edge67.loopexit.unr-lcssa ]
  %.08664.epil.init = phi float [ 0.000000e+00, %.lr.ph66 ], [ %i.yv, %._crit_edge67.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader
  %indvars.iv83.epil = phi i64 [ %indvars.iv83.epil.init, %.epil.preheader ], [ %indvars.iv.next84.epil, %bb.al ] ; 3 uses
  %.08664.epil = phi float [ %.08664.epil.init, %.epil.preheader ], [ %i.zh, %bb.al ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.al ]
  %.idx.epil = mul nuw nsw i64 %indvars.iv83.epil, 12
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ww, i64 %.idx.epil
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !17
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds [48 x i8], ptr %i.wq, i64 %i.yy ; 2 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !16
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !16
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %indvars.iv83.epil
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !28
  %i.zf = fmul float %i.ze, %i.wv
  %i.zg = fsub float %i.zc, %i.za
  %i.zh = tail call float @llvm.fmuladd.f32(float %i.zf, float %i.zg, float %.08664.epil) ; 2 uses
  %indvars.iv.next84.epil = add nuw nsw i64 %indvars.iv83.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge67, label %bb.al, !llvm.loop !72

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit.unr-lcssa, %bb.al, %bb.aj
  %.086.lcssa = phi float [ 0.000000e+00, %bb.aj ], [ %i.yv, %._crit_edge67.loopexit.unr-lcssa ], [ %i.zh, %bb.al ]
  %i.zi = load float, ptr %9, align 4, !tbaa !28
  %i.zj = fadd float %.086.lcssa, %i.zi
  store float %i.zj, ptr %9, align 4, !tbaa !28
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %._crit_edge67, %._crit_edge60
  %i.zk = getelementptr inbounds nuw i8, ptr %5, i64 540
  %i.zl = load i8, ptr %i.zk, align 4, !tbaa !201, !range !202, !noundef !90
  %i.zm = trunc nuw i8 %i.zl to i1
  br i1 %i.zm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.zn = sitofp i32 %.090.lcssa to float         ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.zp = load float, ptr %i.zo, align 8, !tbaa !203
  %i.zq = fcmp olt float %i.zp, %i.zn
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.zs = load float, ptr %i.zr, align 8, !tbaa !204 ; 2 uses
  br i1 %i.zq, label %bb.ao, label %._crit_edge86

bb.ao:                                            ; preds = %bb.an
  %i.zt = fmul float %i.zs, -5.000000e-01         ; 2 uses
  store float %i.zt, ptr %i.zr, align 8, !tbaa !204
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.an, %bb.ao
  %i.zu = phi float [ %i.zt, %bb.ao ], [ %i.zs, %bb.an ]
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !194
  %i.zx = fadd float %i.zu, %i.zw
  store float %i.zx, ptr %i.zv, align 4, !tbaa !194
  store float %i.zn, ptr %i.zo, align 8, !tbaa !203
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge86, %bb.am
  %i.zy = sitofp i32 %.090.lcssa to double
  %i.zz = getelementptr inbounds nuw i8, ptr %7, i64 776 ; 2 uses
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !205
  %i.aab = fadd double %i.aaa, %i.zy
  store double %i.aab, ptr %i.zz, align 8, !tbaa !205
  %i.aac = sitofp i32 %.089.lcssa to double       ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %7, i64 792 ; 2 uses
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !205
  %i.aaf = fadd double %i.aae, %i.aac
  store double %i.aaf, ptr %i.aad, align 8, !tbaa !205
  %i.aag = icmp eq ptr %.0.val5, %.8.val7
  br i1 %i.aag, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aah = shl nsw i32 %.089.lcssa, 1
  %i.aai = sitofp i32 %i.aah to double
  %i.aaj = getelementptr inbounds nuw i8, ptr %7, i64 784 ; 2 uses
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !205
  %i.aal = fadd double %i.aak, %i.aai
  store double %i.aal, ptr %i.aaj, align 8, !tbaa !205
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %11, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aam = getelementptr inbounds nuw i8, ptr %7, i64 800 ; 2 uses
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !205
  %i.aao = fadd double %i.aan, %i.aac
  store double %i.aao, ptr %i.aam, align 8, !tbaa !205
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.af, %_ZN3gmxL10check_consEP8_IO_FILEiNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_S6_PK5t_pbcNS2_IK9t_iparamsEEPKiNS2_IKfEENS_18ConstraintVariableE.exit
  %i.aap = phi i1 [ true, %bb.ar ], [ true, %bb.as ], [ false, %bb.af ], [ false, %_ZN3gmxL10check_consEP8_IO_FILEiNS_8ArrayRefIKNS_11BasicVectorIfEEEES6_S6_PK5t_pbcNS2_IK9t_iparamsEEPKiNS2_IKfEENS_18ConstraintVariableE.exit ]
  ret i1 %i.aap
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(60) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(60) %1) #17 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.b, ptr %i.a, align 8, !tbaa !207
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !41
  %i.f = load i64, ptr %i.a, align 8, !tbaa !207
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
  %i.i = load i64, ptr %i.a, align 8, !tbaa !207  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !208
  %i.k = load ptr, ptr %0, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 768614336404564650, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !37
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 768614336404564650
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !214, !alias.scope !215
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !212

end_hunk_1
