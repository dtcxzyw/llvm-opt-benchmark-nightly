Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfTiledInputFile?download=true
inline.NumInlined: 1442
inline.NumDeleted: 803
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm:bb.a
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %next.gep33, i64 -16
  %i.ai = getelementptr inbounds i8, ptr %next.gep33, i64 -32
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !54, !noalias !275
  %wide.load34 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !54, !noalias !275
  %i.aj = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ak = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.aj, align 1, !tbaa !54, !noalias !275
  store <16 x i8> %wide.load34, ptr %i.ak, align 1, !tbaa !54, !noalias !275
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !278

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.y, -8                     ; 3 uses
  %i.am = sub i64 0, %n.vec36                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = sub i64 0, %index37                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep39 = getelementptr i8, ptr %i.s, i64 %i.ap
  %i.aq = getelementptr inbounds i8, ptr %next.gep39, i64 -8
  %wide.load40 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !54, !noalias !275
  %i.ar = getelementptr inbounds i8, ptr %next.gep38, i64 -8
  store <8 x i8> %wide.load40, ptr %i.ar, align 1, !tbaa !54, !noalias !275
  %index.next41 = add nuw i64 %index37, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !272

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.y, %n.vec36
  br i1 %cmp.n42, label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.u, %iter.check ], [ %i.u, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %iter.check ], [ %i.s, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.ph45 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.at = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.ph45, %i.x
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.au = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.prol, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !54, !noalias !275
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 4 uses
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !54, !noalias !275
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !273

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ay = sub i64 %i.x, %.sroa.2.05.i.i.i.i.i.i.i.ph45
  %i.az = icmp ugt i64 %i.ay, -8
  br i1 %i.az, label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !54, !noalias !275
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 -1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !54, !noalias !275
  %i.be = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !54, !noalias !275
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 -2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !54, !noalias !275
  %i.bh = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !54, !noalias !275
  %i.bj = getelementptr inbounds i8, ptr %i.ba, i64 -3
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !54, !noalias !275
  %i.bk = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !54, !noalias !275
  %i.bm = getelementptr inbounds i8, ptr %i.ba, i64 -4
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !54, !noalias !275
  %i.bn = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !54, !noalias !275
  %i.bp = getelementptr inbounds i8, ptr %i.ba, i64 -5
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !54, !noalias !275
  %i.bq = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !54, !noalias !275
  %i.bs = getelementptr inbounds i8, ptr %i.ba, i64 -6
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !54, !noalias !275
  %i.bt = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !54, !noalias !275
  %i.bv = getelementptr inbounds i8, ptr %i.ba, i64 -7
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !54, !noalias !275
  %i.bw = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !54, !noalias !275
  %i.by = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 3 uses
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !54, !noalias !275
  %.not.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bw, %i.r
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !274

_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %storemerge = phi ptr [ %i.u, %bb.f ], [ %i.an, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !88
  store ptr %i.w, ptr %i.c, align 8, !tbaa !88
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !88
  store ptr %i.v, ptr %i.a, align 8, !tbaa !88
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.r to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.cc) #27
  br label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED2Ev.exit

_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED2Ev.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIcNS_9allocatorIcEEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.33) #28
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZNKSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev() unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.33) #28
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposELb0EEEvT1_S9_T0_NS_15iterator_traitsIS9_E15difference_typeEb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #18 {
bb.a:
  %4 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %5 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %6 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %7 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %8 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %9 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %10 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %11 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %12 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %13 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %14 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %15 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %16 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %17 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %18 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %19 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %20 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %21 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %22 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %23 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %24 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %25 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %26 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %27 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %28 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %29 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %30 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %31 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %32 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 5 uses
  %33 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %34 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %35 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %36 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %37 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %38 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %39 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %40 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %41 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %42 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %i.a = zext i1 %3 to i8
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer

_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer: ; preds = %bb.cw, %bb.a
  %.020.ph = phi ptr [ %i.ex, %bb.cw ], [ %1, %bb.a ] ; 21 uses
  %.017.ph = phi ptr [ %.017, %bb.cw ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph275, %bb.cw ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.cp, %bb.cw ], [ %2, %bb.a ]
  %i.b = ptrtoint ptr %.020.ph to i64
  %i.c = getelementptr inbounds i8, ptr %.020.ph, i64 -24 ; 15 uses
  %i.d = getelementptr inbounds i8, ptr %.020.ph, i64 -48 ; 8 uses
  %i.e = getelementptr inbounds i8, ptr %.020.ph, i64 -72 ; 8 uses
  %i.f = getelementptr inbounds i8, ptr %.020.ph, i64 -24
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273

_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273: ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273.backedge, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer
  %.017.ph274 = phi ptr [ %.017.ph, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer ], [ %.017.ph274.be, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273.backedge ]
  %.048.ph275 = phi i8 [ %.048.ph, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer ], [ 0, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273.backedge ] ; 3 uses
  %.046.ph276 = phi i64 [ %.046.ph, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer ], [ %i.cp, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273.backedge ]
  %i.g = trunc nuw i8 %.048.ph275 to i1           ; 2 uses
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit: ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273, %bb.cx
  %.017 = phi ptr [ %.115.lcssa.i, %bb.cx ], [ %.017.ph274, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273 ] ; 79 uses
  %.046 = phi i64 [ %i.cp, %bb.cx ], [ %.046.ph276, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273 ] ; 2 uses
  %i.h = ptrtoint ptr %.017 to i64                ; 2 uses
  %i.i = sub i64 %i.b, %i.h                       ; 4 uses
  %i.j = sdiv exact i64 %i.i, 24                  ; 5 uses
  switch i64 %i.j, label %bb.r [
    i64 0, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread
    i64 1, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.l
    i64 5, label %bb.m
  ]

bb.b:                                             ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit
  %i.k = getelementptr inbounds i8, ptr %.020.ph, i64 -24 ; 3 uses
  %.val55 = load i64, ptr %i.k, align 8, !tbaa !140
  %.val56 = load i64, ptr %.017, align 8, !tbaa !140
  %i.l = icmp ult i64 %.val55, %.val56
  br i1 %i.l, label %bb.c, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %42, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.d:                                             ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 11 uses
  %i.n = getelementptr inbounds i8, ptr %.020.ph, i64 -24 ; 8 uses
  %.val17.i.i = load i64, ptr %i.m, align 8, !tbaa !140 ; 2 uses
  %.val18.i.i = load i64, ptr %.017, align 8, !tbaa !140
  %i.o = icmp ult i64 %.val17.i.i, %.val18.i.i
  %.val11.i.i = load i64, ptr %i.n, align 8, !tbaa !140
  %i.p = icmp ult i64 %.val11.i.i, %.val17.i.i    ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.f, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %41, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  %.val13.i.i = load i64, ptr %i.m, align 8, !tbaa !140
  %.val14.i.i = load i64, ptr %.017, align 8, !tbaa !140
  %i.q = icmp ult i64 %.val13.i.i, %.val14.i.i
  br i1 %i.q, label %bb.g, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %40, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.h:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %39, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  %.val.i.i = load i64, ptr %i.n, align 8, !tbaa !140
  %.val10.i.i = load i64, ptr %i.m, align 8, !tbaa !140
  %i.r = icmp ult i64 %.val.i.i, %.val10.i.i
  br i1 %i.r, label %bb.k, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %37, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.l:                                             ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.017, i64 48
  %i.u = getelementptr inbounds i8, ptr %.020.ph, i64 -24
  tail call fastcc void @_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S9_S9_S9_T0_(ptr noundef %.017, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.m:                                             ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 48 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.017, i64 72 ; 7 uses
  %i.y = getelementptr inbounds i8, ptr %.020.ph, i64 -24 ; 3 uses
  tail call fastcc void @_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S9_S9_S9_T0_(ptr noundef %.017, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x)
  %.val10.i.i61 = load i64, ptr %i.y, align 8, !tbaa !140
  %.val11.i.i62 = load i64, ptr %i.x, align 8, !tbaa !140
  %i.z = icmp ult i64 %.val10.i.i61, %.val11.i.i62
  br i1 %i.z, label %bb.n, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %36, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %.val8.i.i = load i64, ptr %i.x, align 8, !tbaa !140
  %.val9.i.i = load i64, ptr %i.w, align 8, !tbaa !140
  %i.aa = icmp ult i64 %.val8.i.i, %.val9.i.i
  br i1 %i.aa, label %bb.o, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %35, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  %.val6.i.i = load i64, ptr %i.w, align 8, !tbaa !140
  %.val7.i.i = load i64, ptr %i.v, align 8, !tbaa !140
  %i.ab = icmp ult i64 %.val6.i.i, %.val7.i.i
  br i1 %i.ab, label %bb.p, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %34, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  %.val.i.i63 = load i64, ptr %i.v, align 8, !tbaa !140
  %.val5.i.i = load i64, ptr %.017, align 8, !tbaa !140
  %i.ac = icmp ult i64 %.val.i.i63, %.val5.i.i
  br i1 %i.ac, label %bb.q, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread

bb.r:                                             ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit
  %i.ad = icmp slt i64 %i.i, 576
  br i1 %i.ad, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.ae = trunc nuw i8 %.048.ph275 to i1
  %i.af = icmp eq ptr %.017, %.020.ph
  %storemerge5.i = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 3 uses
  %.not6.i = icmp eq ptr %storemerge5.i, %.020.ph
  %or.cond.i = select i1 %i.af, i1 true, i1 %.not6.i ; 2 uses
  br i1 %i.ae, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  br i1 %or.cond.i, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.w
  %storemerge8.i = phi ptr [ %storemerge.i, %bb.w ], [ %storemerge5.i, %bb.t ] ; 4 uses
  %.pn7.i = phi ptr [ %storemerge8.i, %bb.w ], [ %.017, %bb.t ] ; 5 uses
  %storemerge.val.i = load i64, ptr %storemerge8.i, align 8, !tbaa !140 ; 3 uses
  %.pn.val.i = load i64, ptr %.pn7.i, align 8, !tbaa !140
  %i.ag = icmp ult i64 %storemerge.val.i, %.pn.val.i
  br i1 %i.ag, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i
  %.sroa.5.0..val20.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn7.i, i64 32
  %.sroa.5.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val20.sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i, ptr noundef nonnull align 8 dereferenceable(24) %.pn7.i, i64 24, i1 false), !tbaa.struct !141
  %.not17.i263 = icmp eq ptr %.pn7.i, %.017
  br i1 %.not17.i263, label %.critedge.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.04.i264, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !141
  %.not17.i = icmp eq ptr %i.ah, %.017
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph, !llvm.loop !280

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.04.i264 = phi ptr [ %i.ah, %bb.v ], [ %.pn7.i, %bb.u ] ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %.04.i264, i64 -24 ; 4 uses
  %.val18.i = load i64, ptr %i.ah, align 8, !tbaa !140
  %i.ai = icmp ult i64 %storemerge.val.i, %.val18.i
  br i1 %i.ai, label %bb.v, label %..critedge.i_crit_edge, !llvm.loop !280

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !280

.critedge.i:                                      ; preds = %bb.v, %..critedge.i_crit_edge, %bb.u
  %.04.lcssa.i = phi ptr [ %.017, %bb.u ], [ %.04.i264, %..critedge.i_crit_edge ], [ %.017, %bb.v ] ; 2 uses
  store i64 %storemerge.val.i, ptr %.04.lcssa.i, align 8, !tbaa !89
  %.sroa.5.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 8
  store <4 x i32> %.sroa.5.i.sroa.0.0.copyload, ptr %.sroa.5.0..0..sroa_idx.i, align 8
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i, %.lr.ph.i
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge8.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.020.ph
  br i1 %.not.i, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread, label %.lr.ph.i, !llvm.loop !281

bb.x:                                             ; preds = %bb.s
  br i1 %or.cond.i, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.x, %bb.ab
  %storemerge8.i69 = phi ptr [ %storemerge.i73, %bb.ab ], [ %storemerge5.i, %bb.x ] ; 4 uses
  %.pn7.i70 = phi ptr [ %storemerge8.i69, %bb.ab ], [ %.017, %bb.x ] ; 3 uses
  %storemerge.val.i71 = load i64, ptr %storemerge8.i69, align 8, !tbaa !140 ; 3 uses
  %.pn.val.i72 = load i64, ptr %.pn7.i70, align 8, !tbaa !140
  %i.aj = icmp ult i64 %storemerge.val.i71, %.pn.val.i72
  br i1 %i.aj, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %.lr.ph.i68
  %.sroa.5.0..val16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn7.i70, i64 32
  %.sroa.5.i64.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val16.sroa_idx.i, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.04.i75 = phi ptr [ %.pn7.i70, %bb.y ], [ %i.ak, %bb.z ] ; 5 uses
  %.0.i76 = phi ptr [ %storemerge8.i69, %bb.y ], [ %.04.i75, %bb.z ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.i76, ptr noundef nonnull align 8 dereferenceable(24) %.04.i75, i64 24, i1 false), !tbaa.struct !141
  %i.ak = getelementptr inbounds i8, ptr %.04.i75, i64 -24 ; 2 uses
  %.val14.i = load i64, ptr %i.ak, align 8, !tbaa !140
  %i.al = icmp ult i64 %storemerge.val.i71, %.val14.i
  br i1 %i.al, label %bb.z, label %bb.aa, !llvm.loop !282

bb.aa:                                            ; preds = %bb.z
  store i64 %storemerge.val.i71, ptr %.04.i75, align 8, !tbaa !89
  %.sroa.5.0..0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %.04.i75, i64 8
  store <4 x i32> %.sroa.5.i64.sroa.0.0.copyload, ptr %.sroa.5.0..0..sroa_idx.i77, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i68
  %storemerge.i73 = getelementptr inbounds nuw i8, ptr %storemerge8.i69, i64 24 ; 2 uses
  %.not.i74 = icmp eq ptr %storemerge.i73, %.020.ph
  br i1 %.not.i74, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread, label %.lr.ph.i68, !llvm.loop !283

bb.ac:                                            ; preds = %bb.r
  %i.am = icmp eq i64 %.046, 0
  br i1 %i.am, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.an = add nsw i64 %i.j, -2
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ad, %_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_OT0_NS_15iterator_traitsIS9_E15difference_typeES9_.exit.i.i.i
  %.01.i.i.i = phi i64 [ %i.bj, %_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_OT0_NS_15iterator_traitsIS9_E15difference_typeES9_.exit.i.i.i ], [ %i.ao, %bb.ad ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.017, i64 %.01.i.i.i ; 3 uses
  %i.aq = shl nuw nsw i64 %.01.i.i.i, 1           ; 2 uses
  %i.ar = or disjoint i64 %i.aq, 1                ; 3 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.017, i64 %i.ar ; 5 uses
  %i.at = add nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.au = icmp slt i64 %i.at, %i.j
  br i1 %i.au, label %bb.ae, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.split.i.i.i
  %.val29.pre.i.i.i.i = load i64, ptr %i.as, align 8, !tbaa !140
  br label %bb.af

bb.ae:                                            ; preds = %.split.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %.val31.i.i.i.i = load i64, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %.val32.i.i.i.i = load i64, ptr %i.av, align 8, !tbaa !140 ; 2 uses
  %i.aw = icmp ult i64 %.val31.i.i.i.i, %.val32.i.i.i.i ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.aw, ptr %i.av, ptr %i.as
  %spec.select13.i.i.i.i = select i1 %i.aw, i64 %i.at, i64 %i.ar
  %i.ax = tail call i64 @llvm.umax.i64(i64 %.val31.i.i.i.i, i64 %.val32.i.i.i.i)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i.i.i
  %.val29.i.i.i.i = phi i64 [ %.val29.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ax, %bb.ae ]
  %.09.i.i.i.i = phi ptr [ %i.as, %._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.ae ]
  %.0.i.i.i.i = phi i64 [ %i.ar, %._crit_edge.i.i.i.i ], [ %spec.select13.i.i.i.i, %bb.ae ]
  %.val30.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !140 ; 3 uses
  %i.ay = icmp ult i64 %.val29.i.i.i.i, %.val30.i.i.i.i
  br i1 %i.ay, label %_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_OT0_NS_15iterator_traitsIS9_E15difference_typeES9_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.5.0..val34.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5.i.i.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val34.sroa_idx.i.i.i.i, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  %.012.i.i.i.i = phi ptr [ %i.ap, %bb.ag ], [ %.110.i.i.i.i, %bb.ak ]
  %.110.i.i.i.i = phi ptr [ %.09.i.i.i.i, %bb.ag ], [ %.211.i.i.i.i, %bb.ak ] ; 4 uses
  %.1.i.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.ag ], [ %.2.i.i.i.i, %bb.ak ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.110.i.i.i.i, i64 24, i1 false), !tbaa.struct !141
  %i.az = icmp slt i64 %i.ao, %.1.i.i.i.i
  br i1 %i.az, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ba = shl nsw i64 %.1.i.i.i.i, 1              ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 1                ; 3 uses
  %i.bc = getelementptr inbounds [24 x i8], ptr %.017, i64 %i.bb ; 5 uses
  %i.bd = add nsw i64 %i.ba, 2                    ; 2 uses
  %i.be = icmp slt i64 %i.bd, %i.j
  br i1 %i.be, label %bb.aj, label %._crit_edge17.i.i.i.i

._crit_edge17.i.i.i.i:                            ; preds = %bb.ai
  %.val.pre.i.i.i.i = load i64, ptr %i.bc, align 8, !tbaa !140
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %.val27.i.i.i.i = load i64, ptr %i.bc, align 8, !tbaa !140 ; 2 uses
  %.val28.i.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !140 ; 2 uses
  %i.bg = icmp ult i64 %.val27.i.i.i.i, %.val28.i.i.i.i ; 2 uses
  %spec.select14.i.i.i.i = select i1 %i.bg, ptr %i.bf, ptr %i.bc
  %spec.select15.i.i.i.i = select i1 %i.bg, i64 %i.bd, i64 %i.bb
  %i.bh = tail call i64 @llvm.umax.i64(i64 %.val27.i.i.i.i, i64 %.val28.i.i.i.i)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge17.i.i.i.i
  %.val.i.i.i.i = phi i64 [ %.val.pre.i.i.i.i, %._crit_edge17.i.i.i.i ], [ %i.bh, %bb.aj ]
  %.211.i.i.i.i = phi ptr [ %i.bc, %._crit_edge17.i.i.i.i ], [ %spec.select14.i.i.i.i, %bb.aj ]
  %.2.i.i.i.i = phi i64 [ %i.bb, %._crit_edge17.i.i.i.i ], [ %spec.select15.i.i.i.i, %bb.aj ]
  %i.bi = icmp ult i64 %.val.i.i.i.i, %.val30.i.i.i.i
  br i1 %i.bi, label %bb.al, label %bb.ah, !llvm.loop !284

bb.al:                                            ; preds = %bb.ak, %bb.ah
  store i64 %.val30.i.i.i.i, ptr %.110.i.i.i.i, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.110.i.i.i.i, i64 8
  store <4 x i32> %.sroa.5.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_OT0_NS_15iterator_traitsIS9_E15difference_typeES9_.exit.i.i.i

_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_OT0_NS_15iterator_traitsIS9_E15difference_typeES9_.exit.i.i.i: ; preds = %bb.al, %bb.af
  %i.bj = add nsw i64 %.01.i.i.i, -1
  %i.bk = icmp sgt i64 %.01.i.i.i, 0
  br i1 %i.bk, label %.split.i.i.i, label %.lr.ph.preheader.i.i.i, !llvm.loop !285

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_OT0_NS_15iterator_traitsIS9_E15difference_typeES9_.exit.i.i.i
  %i.bl = udiv exact i64 %i.i, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.02.i.i.i = phi i64 [ %i.cn, %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.0131.i.i.i = phi ptr [ %i.bx, %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i ], [ %.020.ph, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  %i.bm = add nsw i64 %.02.i.i.i, -2
  %i.bn = lshr i64 %i.bm, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %.017, %.lr.ph.i.i.i ], [ %.14.i.i.i.i.i, %bb.ao ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i.i.i, %bb.ao ] ; 2 uses
  %i.bo = getelementptr [24 x i8], ptr %.03.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 24     ; 3 uses
  %i.bq = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.br = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.bs = add nsw i64 %i.bq, 2                    ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %.02.i.i.i
  br i1 %i.bt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bu = getelementptr i8, ptr %i.bo, i64 48     ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !140
  %.val13.i.i.i.i.i = load i64, ptr %i.bu, align 8, !tbaa !140
  %i.bv = icmp ult i64 %.val.i.i.i.i.i, %.val13.i.i.i.i.i ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.bv, ptr %i.bu, ptr %i.bp
  %spec.select5.i.i.i.i.i = select i1 %i.bv, i64 %i.bs, i64 %i.br
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.14.i.i.i.i.i = phi ptr [ %i.bp, %bb.am ], [ %spec.select.i.i.i.i.i, %bb.an ] ; 9 uses
  %.1.i.i.i.i.i = phi i64 [ %i.br, %bb.am ], [ %spec.select5.i.i.i.i.i, %bb.an ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.14.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !141
  %i.bw = icmp sgt i64 %.1.i.i.i.i.i, %i.bn
  br i1 %i.bw, label %_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEET1_S9_OT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i.i, label %bb.am, !llvm.loop !286

_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEET1_S9_OT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i.i: ; preds = %bb.ao
  %i.bx = getelementptr inbounds i8, ptr %.0131.i.i.i, i64 -24 ; 4 uses
  %i.by = icmp eq ptr %.14.i.i.i.i.i, %i.bx
  br i1 %i.by, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEET1_S9_OT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.14.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !141
  br label %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i

bb.aq:                                            ; preds = %_ZNSt3__117__floyd_sift_downB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEET1_S9_OT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.14.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !141
  %i.bz = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !141
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.h                     ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 24
  br i1 %i.cc, label %bb.ar, label %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.cd = udiv exact i64 %i.cb, 24
  %i.ce = add nsw i64 %i.cd, -2
  %i.cf = lshr i64 %i.ce, 1                       ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.017, i64 %i.cf ; 2 uses
  %.val11.i.i.i.i.i = load i64, ptr %i.cg, align 8, !tbaa !140
  %.val12.i.i.i.i.i = load i64, ptr %.14.i.i.i.i.i, align 8, !tbaa !140 ; 3 uses
  %i.ch = icmp ult i64 %.val11.i.i.i.i.i, %.val12.i.i.i.i.i
  br i1 %i.ch, label %bb.as, label %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %.sroa.5.0..val14.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 8
  %.sroa.5.i.i.i.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val14.sroa_idx.i.i.i.i.i, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %.06.i.i.i.i.i = phi ptr [ %.14.i.i.i.i.i, %bb.as ], [ %.05.i.i.i.i.i, %bb.au ]
  %.05.i.i.i.i.i = phi ptr [ %i.cg, %bb.as ], [ %i.cl, %bb.au ] ; 4 uses
  %.0.i12.i.i.i.i = phi i64 [ %i.cf, %bb.as ], [ %i.ck, %bb.au ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !141
  %i.ci = icmp eq i64 %.0.i12.i.i.i.i, 0
  br i1 %i.ci, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cj = add nsw i64 %.0.i12.i.i.i.i, -1
  %i.ck = lshr i64 %i.cj, 1                       ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.017, i64 %i.ck ; 2 uses
  %.val.i13.i.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !140
  %i.cm = icmp ult i64 %.val.i13.i.i.i.i, %.val12.i.i.i.i.i
  br i1 %i.cm, label %bb.at, label %bb.av, !llvm.loop !287

bb.av:                                            ; preds = %bb.au, %bb.at
  store i64 %.val12.i.i.i.i.i, ptr %.05.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  store <4 x i32> %.sroa.5.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i

_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i: ; preds = %bb.av, %bb.ar, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  %i.cn = add nsw i64 %.02.i.i.i, -1
  %i.co = icmp sgt i64 %.02.i.i.i, 2
  br i1 %i.co, label %.lr.ph.i.i.i, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread, !llvm.loop !288

bb.aw:                                            ; preds = %bb.ac
  %i.cp = add nsw i64 %.046, -1                   ; 4 uses
  %i.cq = lshr i64 %i.j, 1
  %i.cr = icmp samesign ugt i64 %i.i, 3072
  %i.cs = getelementptr [24 x i8], ptr %.017, i64 %i.cq ; 34 uses
  %.val11.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  br i1 %i.cr, label %bb.ax, label %bb.ca

bb.ax:                                            ; preds = %bb.aw
  %.val17.i = load i64, ptr %i.cs, align 8, !tbaa !140 ; 2 uses
  %.val18.i80 = load i64, ptr %.017, align 8, !tbaa !140
  %i.ct = icmp ult i64 %.val17.i, %.val18.i80
  %i.cu = icmp ult i64 %.val11.i, %.val17.i       ; 2 uses
  br i1 %i.ct, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.cu, label %bb.az, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %.val13.i = load i64, ptr %i.cs, align 8, !tbaa !140
  %.val14.i81 = load i64, ptr %.017, align 8, !tbaa !140
  %i.cv = icmp ult i64 %.val13.i, %.val14.i81
  br i1 %i.cv, label %bb.ba, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %30, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit

bb.bb:                                            ; preds = %bb.ax
  br i1 %i.cu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %.017, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !140
  %.val10.i = load i64, ptr %i.cs, align 8, !tbaa !140
  %i.cw = icmp ult i64 %.val.i, %.val10.i
  br i1 %i.cw, label %bb.be, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %27, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit

_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit: ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.be
  %i.cx = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 8 uses
  %i.cy = getelementptr i8, ptr %i.cs, i64 -24    ; 19 uses
  %.val17.i82 = load i64, ptr %i.cy, align 8, !tbaa !140 ; 2 uses
  %.val18.i83 = load i64, ptr %i.cx, align 8, !tbaa !140
  %i.cz = icmp ult i64 %.val17.i82, %.val18.i83
  %.val11.i84 = load i64, ptr %i.d, align 8, !tbaa !140
  %i.da = icmp ult i64 %.val11.i84, %.val17.i82   ; 2 uses
  br i1 %i.cz, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit
  br i1 %i.da, label %bb.bg, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %.val13.i86 = load i64, ptr %i.cy, align 8, !tbaa !140
  %.val14.i87 = load i64, ptr %i.cx, align 8, !tbaa !140
  %i.db = icmp ult i64 %.val13.i86, %.val14.i87
  br i1 %i.db, label %bb.bh, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90

bb.bi:                                            ; preds = %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit
  br i1 %i.da, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %.val.i88 = load i64, ptr %i.d, align 8, !tbaa !140
  %.val10.i89 = load i64, ptr %i.cy, align 8, !tbaa !140
  %i.dc = icmp ult i64 %.val.i88, %.val10.i89
  br i1 %i.dc, label %bb.bl, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90

_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %bb.bl
  %i.dd = getelementptr inbounds nuw i8, ptr %.017, i64 48 ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 19 uses
  %.val17.i91 = load i64, ptr %i.de, align 8, !tbaa !140 ; 2 uses
  %.val18.i92 = load i64, ptr %i.dd, align 8, !tbaa !140
  %i.df = icmp ult i64 %.val17.i91, %.val18.i92
  %.val11.i93 = load i64, ptr %i.e, align 8, !tbaa !140
  %i.dg = icmp ult i64 %.val11.i93, %.val17.i91   ; 2 uses
  br i1 %i.df, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90
  br i1 %i.dg, label %bb.bn, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %.val13.i95 = load i64, ptr %i.de, align 8, !tbaa !140
  %.val14.i96 = load i64, ptr %i.dd, align 8, !tbaa !140
  %i.dh = icmp ult i64 %.val13.i95, %.val14.i96
  br i1 %i.dh, label %bb.bo, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99

bb.bp:                                            ; preds = %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit90
  br i1 %i.dg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.val.i97 = load i64, ptr %i.e, align 8, !tbaa !140
  %.val10.i98 = load i64, ptr %i.de, align 8, !tbaa !140
  %i.di = icmp ult i64 %.val.i97, %.val10.i98
  br i1 %i.di, label %bb.bs, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99

_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99: ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bq, %bb.br, %bb.bs
  %.val17.i100 = load i64, ptr %i.cs, align 8, !tbaa !140 ; 2 uses
  %.val18.i101 = load i64, ptr %i.cy, align 8, !tbaa !140
  %i.dj = icmp ult i64 %.val17.i100, %.val18.i101
  %.val11.i102 = load i64, ptr %i.de, align 8, !tbaa !140
  %i.dk = icmp ult i64 %.val11.i102, %.val17.i100 ; 2 uses
  br i1 %i.dj, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit99
  br i1 %i.dk, label %bb.bu, label %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit108
end_hunk_0
begin_hunk_1_@_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposELb0EEEvT1_S9_T0_NS_15iterator_traitsIS9_E15difference_typeEb:bb.a
_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit117: ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.cb, %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit108
  br i1 %i.g, label %bb.co, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit117
  %i.dr = getelementptr inbounds i8, ptr %.017, i64 -24
  %.val = load i64, ptr %i.dr, align 8, !tbaa !140
  %.val54 = load i64, ptr %.017, align 8, !tbaa !140
  %i.ds = icmp ult i64 %.val, %.val54
  br i1 %i.ds, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.0.0.copyload.i = load i64, ptr %.017, align 8, !tbaa !89 ; 7 uses
  %.sroa.10.0..val23.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %.sroa.10.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.10.0..val23.sroa_idx.i, align 8
  %.val19.i = load i64, ptr %i.f, align 8, !tbaa !140
  %i.dt = icmp ult i64 %.sroa.0.0.copyload.i, %.val19.i
  br i1 %i.dt, label %.preheader20.i, label %.preheader21.i

.preheader20.i:                                   ; preds = %bb.cj, %.preheader20.i
  %.015.i = phi ptr [ %i.du, %.preheader20.i ], [ %.017, %bb.cj ]
  %i.du = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  %.val17.i124 = load i64, ptr %i.du, align 8, !tbaa !140
  %i.dv = icmp ult i64 %.sroa.0.0.copyload.i, %.val17.i124
  br i1 %i.dv, label %.critedge.i118, label %.preheader20.i, !llvm.loop !289

.preheader21.i:                                   ; preds = %bb.cj, %bb.ck
  %.116.i = phi ptr [ %i.dw, %bb.ck ], [ %.017, %bb.cj ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.116.i, i64 24 ; 5 uses
  %i.dx = icmp ult ptr %i.dw, %.020.ph
  br i1 %i.dx, label %bb.ck, label %.critedge.i118

bb.ck:                                            ; preds = %.preheader21.i
  %.val15.i = load i64, ptr %i.dw, align 8, !tbaa !140
  %i.dy = icmp ult i64 %.sroa.0.0.copyload.i, %.val15.i
  br i1 %i.dy, label %.critedge.i118, label %.preheader21.i, !llvm.loop !290

.critedge.i118:                                   ; preds = %bb.ck, %.preheader21.i, %.preheader20.i
  %.217.i = phi ptr [ %i.du, %.preheader20.i ], [ %i.dw, %.preheader21.i ], [ %i.dw, %bb.ck ] ; 4 uses
  %i.dz = icmp ult ptr %.217.i, %.020.ph
  br i1 %i.dz, label %.preheader19.i, label %.loopexit.i

.preheader19.i:                                   ; preds = %.critedge.i118, %.preheader19.i
  %.0.i122 = phi ptr [ %i.ea, %.preheader19.i ], [ %.020.ph, %.critedge.i118 ]
  %i.ea = getelementptr inbounds i8, ptr %.0.i122, i64 -24 ; 3 uses
  %.val13.i123 = load i64, ptr %i.ea, align 8, !tbaa !140
  %i.eb = icmp ult i64 %.sroa.0.0.copyload.i, %.val13.i123
  br i1 %i.eb, label %.preheader19.i, label %.loopexit.i, !llvm.loop !291

.loopexit.i:                                      ; preds = %.preheader19.i, %.critedge.i118
  %.1.i = phi ptr [ %.020.ph, %.critedge.i118 ], [ %i.ea, %.preheader19.i ] ; 2 uses
  %i.ec = icmp ult ptr %.217.i, %.1.i
  br i1 %i.ec, label %.lr.ph.i120, label %._crit_edge.i

.lr.ph.i120:                                      ; preds = %.loopexit.i, %bb.cm
  %.228.i = phi ptr [ %i.ef, %bb.cm ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %.31827.i = phi ptr [ %i.ed, %bb.cm ], [ %.217.i, %.loopexit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.31827.i, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.31827.i, ptr noundef nonnull align 8 dereferenceable(24) %.228.i, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.228.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph.i120
  %.4.i = phi ptr [ %.31827.i, %.lr.ph.i120 ], [ %i.ed, %bb.cl ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.4.i, i64 24 ; 5 uses
  %.val11.i121 = load i64, ptr %i.ed, align 8, !tbaa !140
  %i.ee = icmp ult i64 %.sroa.0.0.copyload.i, %.val11.i121
  br i1 %i.ee, label %.preheader.i, label %bb.cl, !llvm.loop !292

.preheader.i:                                     ; preds = %bb.cl, %.preheader.i
  %.3.i = phi ptr [ %i.ef, %.preheader.i ], [ %.228.i, %bb.cl ]
  %i.ef = getelementptr inbounds i8, ptr %.3.i, i64 -24 ; 4 uses
  %.val9.i = load i64, ptr %i.ef, align 8, !tbaa !140
  %i.eg = icmp ult i64 %.sroa.0.0.copyload.i, %.val9.i
  br i1 %i.eg, label %.preheader.i, label %bb.cm, !llvm.loop !293

bb.cm:                                            ; preds = %.preheader.i
  %i.eh = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eh, label %.lr.ph.i120, label %._crit_edge.i, !llvm.loop !294

._crit_edge.i:                                    ; preds = %bb.cm, %.loopexit.i
  %.318.lcssa.i = phi ptr [ %.217.i, %.loopexit.i ], [ %i.ed, %bb.cm ] ; 3 uses
  %i.ei = getelementptr inbounds i8, ptr %.318.lcssa.i, i64 -24 ; 3 uses
  %.not.i119 = icmp eq ptr %.017, %i.ei
  br i1 %.not.i119, label %_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEET0_S9_S9_T1_.exit, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !tbaa.struct !141
  br label %_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEET0_S9_S9_T1_.exit

_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEET0_S9_S9_T1_.exit: ; preds = %._crit_edge.i, %bb.cn
  store i64 %.sroa.0.0.copyload.i, ptr %i.ei, align 8, !tbaa !89
  %.sroa.10.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.318.lcssa.i, i64 -16
  store <4 x i32> %.sroa.10.i.sroa.0.0.copyload, ptr %.sroa.10.0..0..sroa_idx.i, align 8
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273.backedge

bb.co:                                            ; preds = %bb.ci, %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit117
  %.sroa.0.0.copyload.i125 = load i64, ptr %.017, align 8, !tbaa !89 ; 6 uses
  %.sroa.9.0..val23.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %.sroa.9.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.9.0..val23.sroa_idx.i, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.014.i = phi ptr [ %.017, %bb.co ], [ %i.ej, %bb.cp ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.014.i, i64 24 ; 6 uses
  %.val18.i126 = load i64, ptr %i.ej, align 8, !tbaa !140
  %i.ek = icmp ult i64 %.val18.i126, %.sroa.0.0.copyload.i125
  br i1 %i.ek, label %bb.cp, label %bb.cq, !llvm.loop !295

bb.cq:                                            ; preds = %bb.cp
  %i.el = icmp eq ptr %.017, %.014.i
  br i1 %i.el, label %.preheader17.i, label %.preheader18.i

.preheader17.i:                                   ; preds = %bb.cq, %bb.cr
  %.0.i136 = phi ptr [ %i.en, %bb.cr ], [ %.020.ph, %bb.cq ] ; 3 uses
  %i.em = icmp ult ptr %i.ej, %.0.i136
  br i1 %i.em, label %bb.cr, label %.critedge.i129

bb.cr:                                            ; preds = %.preheader17.i
  %i.en = getelementptr inbounds i8, ptr %.0.i136, i64 -24 ; 3 uses
  %.val16.i = load i64, ptr %i.en, align 8, !tbaa !140
  %i.eo = icmp ult i64 %.val16.i, %.sroa.0.0.copyload.i125
  br i1 %i.eo, label %.critedge.i129, label %.preheader17.i, !llvm.loop !296

.preheader18.i:                                   ; preds = %bb.cq, %.preheader18.i
  %.1.i127 = phi ptr [ %i.ep, %.preheader18.i ], [ %.020.ph, %bb.cq ]
  %i.ep = getelementptr inbounds i8, ptr %.1.i127, i64 -24 ; 3 uses
  %.val14.i128 = load i64, ptr %i.ep, align 8, !tbaa !140
  %i.eq = icmp ult i64 %.val14.i128, %.sroa.0.0.copyload.i125
  br i1 %i.eq, label %.critedge.i129, label %.preheader18.i, !llvm.loop !297

.critedge.i129:                                   ; preds = %.preheader18.i, %bb.cr, %.preheader17.i
  %.2.i = phi ptr [ %i.en, %bb.cr ], [ %.0.i136, %.preheader17.i ], [ %i.ep, %.preheader18.i ] ; 2 uses
  %i.er = icmp ult ptr %i.ej, %.2.i               ; 2 uses
  br i1 %i.er, label %.lr.ph.i132, label %._crit_edge.i130

.lr.ph.i132:                                      ; preds = %.critedge.i129, %bb.ct
  %.324.i = phi ptr [ %i.eu, %bb.ct ], [ %.2.i, %.critedge.i129 ] ; 3 uses
  %.11523.i = phi ptr [ %i.es, %bb.ct ], [ %i.ej, %.critedge.i129 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.11523.i, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.11523.i, ptr noundef nonnull align 8 dereferenceable(24) %.324.i, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.324.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.lr.ph.i132
  %.216.i = phi ptr [ %.11523.i, %.lr.ph.i132 ], [ %i.es, %bb.cs ]
  %i.es = getelementptr inbounds nuw i8, ptr %.216.i, i64 24 ; 5 uses
  %.val12.i = load i64, ptr %i.es, align 8, !tbaa !140
  %i.et = icmp ult i64 %.val12.i, %.sroa.0.0.copyload.i125
  br i1 %i.et, label %bb.cs, label %.preheader.i133, !llvm.loop !298

.preheader.i133:                                  ; preds = %bb.cs, %.preheader.i133
  %.4.i134 = phi ptr [ %i.eu, %.preheader.i133 ], [ %.324.i, %bb.cs ]
  %i.eu = getelementptr inbounds i8, ptr %.4.i134, i64 -24 ; 4 uses
  %.val.i135 = load i64, ptr %i.eu, align 8, !tbaa !140
  %i.ev = icmp ult i64 %.val.i135, %.sroa.0.0.copyload.i125
  br i1 %i.ev, label %bb.ct, label %.preheader.i133, !llvm.loop !299

bb.ct:                                            ; preds = %.preheader.i133
  %i.ew = icmp ult ptr %i.es, %i.eu
  br i1 %i.ew, label %.lr.ph.i132, label %._crit_edge.i130, !llvm.loop !300

._crit_edge.i130:                                 ; preds = %bb.ct, %.critedge.i129
  %.115.lcssa.i = phi ptr [ %i.ej, %.critedge.i129 ], [ %i.es, %bb.ct ] ; 5 uses
  %i.ex = getelementptr inbounds i8, ptr %.115.lcssa.i, i64 -24 ; 6 uses
  %.not.i131 = icmp eq ptr %.017, %i.ex
  br i1 %.not.i131, label %_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEENS_4pairIT0_bEESA_SA_T1_.exit, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i130
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 24, i1 false), !tbaa.struct !141
  br label %_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEENS_4pairIT0_bEESA_SA_T1_.exit

_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEENS_4pairIT0_bEESA_SA_T1_.exit: ; preds = %._crit_edge.i130, %bb.cu
  store i64 %.sroa.0.0.copyload.i125, ptr %i.ex, align 8, !tbaa !89
  %.sroa.9.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.115.lcssa.i, i64 -16
  store <4 x i32> %.sroa.9.i.sroa.0.0.copyload, ptr %.sroa.9.0..0..sroa_idx.i, align 8
  br i1 %i.er, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEENS_4pairIT0_bEESA_SA_T1_.exit
  %i.ey = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEbT1_S9_T0_(ptr noundef %.017, ptr noundef nonnull %i.ex) ; 2 uses
  %i.ez = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEbT1_S9_T0_(ptr noundef nonnull %.115.lcssa.i, ptr noundef %.020.ph)
  br i1 %i.ez, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.ey, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer, !llvm.loop !301

bb.cx:                                            ; preds = %bb.cv
  br i1 %i.ey, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit, label %bb.cy, !llvm.loop !301

bb.cy:                                            ; preds = %bb.cx, %_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEENS_4pairIT0_bEESA_SA_T1_.exit
  tail call fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposELb0EEEvT1_S9_T0_NS_15iterator_traitsIS9_E15difference_typeEb(ptr noundef %.017, ptr noundef nonnull %i.ex, i64 noundef %i.cp, i1 noundef zeroext %i.g)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273.backedge

_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273.backedge: ; preds = %bb.cy, %_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEET0_S9_S9_T1_.exit
  %.017.ph274.be = phi ptr [ %.318.lcssa.i, %_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN7Imf_3_412_GLOBAL__N_17tileposERNS_6__lessIvvEEEET0_S9_S9_T1_.exit ], [ %.115.lcssa.i, %bb.cy ]
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.outer273, !llvm.loop !301

_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit.thread: ; preds = %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit, %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit, %bb.cw, %_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyENS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE.exit.i.i.i, %bb.ab, %bb.w, %bb.x, %bb.t, %bb.p, %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c, %bb.l, %bb.k, %bb.q, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEbT1_S9_T0_(ptr noundef %0, ptr noundef %1) unnamed_addr #20 {
bb.a:
  %2 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %3 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %4 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %5 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %6 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %7 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %8 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %9 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %10 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %11 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %12 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %13 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %14 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %15 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %16 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  switch i64 %i.d, label %bb.r [
    i64 0, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit
    i64 1, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.l
    i64 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -24 ; 3 uses
  %.val29 = load i64, ptr %i.e, align 8, !tbaa !140
  %.val30 = load i64, ptr %0, align 8, !tbaa !140
  %i.f = icmp ult i64 %.val29, %.val30
  br i1 %i.f, label %bb.c, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -24 ; 8 uses
  %.val17.i.i = load i64, ptr %i.g, align 8, !tbaa !140 ; 2 uses
  %.val18.i.i = load i64, ptr %0, align 8, !tbaa !140
  %i.i = icmp ult i64 %.val17.i.i, %.val18.i.i
  %.val11.i.i = load i64, ptr %i.h, align 8, !tbaa !140
  %i.j = icmp ult i64 %.val11.i.i, %.val17.i.i    ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.f, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.val13.i.i = load i64, ptr %i.g, align 8, !tbaa !140
  %.val14.i.i = load i64, ptr %0, align 8, !tbaa !140
  %i.k = icmp ult i64 %.val13.i.i, %.val14.i.i
  br i1 %i.k, label %bb.g, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !140
  %.val10.i.i = load i64, ptr %i.g, align 8, !tbaa !140
  %i.l = icmp ult i64 %.val.i.i, %.val10.i.i
  br i1 %i.l, label %bb.k, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.l:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds i8, ptr %1, i64 -24
  tail call fastcc void @_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S9_S9_S9_T0_(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.m:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.s = getelementptr inbounds i8, ptr %1, i64 -24 ; 3 uses
  tail call fastcc void @_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S9_S9_S9_T0_(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r)
  %.val10.i.i35 = load i64, ptr %i.s, align 8, !tbaa !140
  %.val11.i.i36 = load i64, ptr %i.r, align 8, !tbaa !140
  %i.t = icmp ult i64 %.val10.i.i35, %.val11.i.i36
  br i1 %i.t, label %bb.n, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.val8.i.i = load i64, ptr %i.r, align 8, !tbaa !140
  %.val9.i.i = load i64, ptr %i.q, align 8, !tbaa !140
  %i.u = icmp ult i64 %.val8.i.i, %.val9.i.i
  br i1 %i.u, label %bb.o, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.val6.i.i = load i64, ptr %i.q, align 8, !tbaa !140
  %.val7.i.i = load i64, ptr %i.p, align 8, !tbaa !140
  %i.v = icmp ult i64 %.val6.i.i, %.val7.i.i
  br i1 %i.v, label %bb.p, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.val.i.i37 = load i64, ptr %i.p, align 8, !tbaa !140
  %.val5.i.i = load i64, ptr %0, align 8, !tbaa !140
  %i.w = icmp ult i64 %.val.i.i37, %.val5.i.i
  br i1 %i.w, label %bb.q, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit

bb.r:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %.val17.i.i38 = load i64, ptr %i.y, align 8, !tbaa !140 ; 2 uses
  %.val18.i.i39 = load i64, ptr %0, align 8, !tbaa !140 ; 2 uses
  %i.z = icmp ult i64 %.val17.i.i38, %.val18.i.i39
  %.val11.i.i40 = load i64, ptr %i.x, align 8, !tbaa !140 ; 2 uses
  %i.aa = icmp ult i64 %.val11.i.i40, %.val17.i.i38 ; 2 uses
  br i1 %i.z, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.aa, label %bb.t, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit45

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.val13.i.i41 = load i64, ptr %i.y, align 8, !tbaa !140
  %i.ab = icmp ult i64 %.val13.i.i41, %.val18.i.i39
  br i1 %i.ab, label %bb.u, label %_ZNSt3__124__sort3_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSB_SB_SB_SA_.exit45

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !tbaa.struct !141
end_hunk_1
