Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APINotesYAMLCompiler?download=true
inline.NumInlined: 3642
inline.NumDeleted: 1759
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4llvm4yaml2IO11mapOptionalIN12_GLOBAL__N_115APIAvailabilityES4_EEvNS_9StringRefERT_RKT0_:bb.a
bb.n:                                             ; preds = %bb.c
  %i.be = load i8, ptr %i.b, align 1, !tbaa !51, !range !43, !noundef !40
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %_ZN4llvm4yaml2IO22mapOptionalWithContextIN12_GLOBAL__N_115APIAvailabilityENS0_12EmptyContextES4_EEvNS_9StringRefERT_RKT1_RT0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %.0.val, ptr %3, align 4, !tbaa !44
  br label %_ZN4llvm4yaml2IO22mapOptionalWithContextIN12_GLOBAL__N_115APIAvailabilityENS0_12EmptyContextES4_EEvNS_9StringRefERT_RKT1_RT0_.exit

_ZN4llvm4yaml2IO22mapOptionalWithContextIN12_GLOBAL__N_115APIAvailabilityENS0_12EmptyContextES4_EEvNS_9StringRefERT_RKT1_RT0_.exit: ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_115APIAvailabilityEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm4yamlL16mapTopLevelItemsERNS0_2IOERN12_GLOBAL__N_113TopLevelItemsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %4 = alloca %"class.std::optional", align 1     ; 4 uses
  %5 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 3 uses
  %7 = alloca %"class.std::optional.80", align 8  ; 6 uses
  %8 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %9 = alloca %"class.std::optional.209", align 4 ; 4 uses
  %10 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %11 = alloca %"class.std::optional.74", align 8 ; 4 uses
  %12 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %13 = alloca %"class.std::optional.74", align 8 ; 4 uses
  %14 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %15 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %16 = alloca %"class.std::optional", align 1    ; 4 uses
  %17 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca i8, align 1                       ; 3 uses
  %19 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca i8, align 1                       ; 3 uses
  %20 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %22 = alloca %"class.std::optional", align 1    ; 4 uses
  %23 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %24 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca i8, align 1                       ; 3 uses
  %25 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca ptr, align 8                      ; 4 uses
  %i.aa = alloca ptr, align 8                     ; 4 uses
  %i.ab = alloca i8, align 1                      ; 3 uses
  %26 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = alloca i8, align 1                      ; 4 uses
  %27 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca i8, align 1                      ; 4 uses
  %28 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %29 = alloca %"class.std::optional", align 1    ; 4 uses
  %30 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca i8, align 1                      ; 4 uses
  %31 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %32 = alloca %"class.std::optional.114", align 1 ; 4 uses
  %33 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca i8, align 1                      ; 3 uses
  %34 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca i8, align 1                      ; 3 uses
  tail call fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.37, i64 7, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.38, i64 9, ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_18FunctionESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.39, i64 9, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !97
  br i1 %i.au, label %bb.b, label %.critedge.i.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val7.i.i = load ptr, ptr %i.av, align 8, !tbaa !70
  %i.aw = icmp eq ptr %.val.i.i, %.val7.i.i
  br i1 %i.aw, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EEEEvNS_9StringRefERT_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #14
  %i.ax = load ptr, ptr %0, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.40, i64 7, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.am) #14, !inline_history !98
  br i1 %i.ba, label %bb.c, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.bb = load ptr, ptr %0, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !99
  %i.bf = load ptr, ptr %0, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !99
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val16.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !101
  %i.bk = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.bl = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 96
  %i.bo = trunc i64 %i.bn to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = phi i32 [ %i.bo, %bb.d ], [ %i.be, %bb.c ] ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %32, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %29, i64 1
  %wide.trip.count.i.i.i.i = zext i32 %i.bp to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.w ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #14
  %i.bu = load ptr, ptr %0, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.by = call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.al) #14, !inline_history !99
  br i1 %i.by, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 6 uses
  %.val5.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !101 ; 5 uses
  %i.bz = ptrtoint ptr %.val5.i.i.i.i.i to i64    ; 2 uses
  %i.ca = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = sdiv exact i64 %i.cb, 96                ; 7 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.cc, %indvars.iv.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %i.ce = sub nuw i64 %i.cd, %i.cc                ; 9 uses
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !72
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bz
  %i.ci = sdiv exact i64 %i.ch, 96                ; 2 uses
  %i.cj = sub nuw nsw i64 96076792050570581, %i.cc
  %i.ck = icmp ule i64 %i.ci, %i.cj
  call void @llvm.assume(i1 %i.ck)
  %.not23.i.i.i.i.i.i.i = icmp ult i64 %i.ci, %i.ce
  br i1 %.not23.i.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.h
  %i.cl = sub i64 %indvars.iv.i.i.i.i, %i.cc
  %xtraiter = and i64 %i.ce, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.prol, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.cm, align 8, !tbaa !102
  %i.cn = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.prol, i64 96 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !114

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cp = icmp ult i64 %i.cl, 7
  br i1 %i.cp, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i.i.i.i.i.i.i.i, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.cq, align 8, !tbaa !102
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cr, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.cs, align 8, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 192
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ct, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.cu, align 8, !tbaa !102
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 288
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cv, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.cw, align 8, !tbaa !102
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 384
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cx, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.cy, align 8, !tbaa !102
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 480
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.da, align 8, !tbaa !102
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 576
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.db, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.dc, align 8, !tbaa !102
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 672
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.de, align 8, !tbaa !102
  %i.df = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !116

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa178 = phi ptr [ %.lcssa178.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa178, ptr %i.bq, align 8, !tbaa !101
  %.val6.pre.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !100
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 range(i64 -96076792050570580, 96076796345537878) %i.ce)
  %i.dh = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.cc ; 2 uses
  %i.di = mul nuw nsw i64 %i.dh, 96
  %i.dj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #16 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cb ; 3 uses
  %i.dl = sub i64 %indvars.iv.i.i.i.i, %i.cc
  %xtraiter179 = and i64 %i.ce, 7                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol:                ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.i.prol = phi ptr [ %i.do, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ], [ %i.dk, %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.i.prol = phi i64 [ %i.dn, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ], [ %i.ce, %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.prol, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i29.i.i.i.i.i.i.i.prol, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.dm, align 8, !tbaa !102
  %i.dn = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.prol, i64 96 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol, !llvm.loop !117

.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i.unr = phi ptr [ %i.dk, %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.do, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i.unr = phi i64 [ %i.ce, %_ZNKSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.dn, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ]
  %i.dp = icmp ult i64 %i.dl, 7
  br i1 %i.dp, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i28.i.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i28.i.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i29.i.i.i.i.i.i.i, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.dq, align 8, !tbaa !102
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 96
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dr, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ds, align 8, !tbaa !102
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 192
  %i.du = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dt, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.du, align 8, !tbaa !102
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 288
  %i.dw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dv, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.dw, align 8, !tbaa !102
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 384
  %i.dy = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dx, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.dy, align 8, !tbaa !102
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 480
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dz, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ea, align 8, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 576
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.eb, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ec, align 8, !tbaa !102
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 672
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ed, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ee, align 8, !tbaa !102
  %i.ef = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 768
  %.not.i.i.i31.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i, !llvm.loop !116

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i.i:                     ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i34.i.i.i.i.i.i.i ], [ %i.dj, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i34.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.03.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %.092.i.i.i.i.i.i.i.i.i.i, i64 96, i1 false), !alias.scope !118
  %i.eh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i, i64 96
  %.not.i.i.i35.i.i.i.i.i.i.i = icmp eq ptr %i.eh, %.val5.i.i.i.i.i
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i, !llvm.loop !122

_ZNSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i37.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_114GlobalVariableESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  %i.ej = load ptr, ptr %i.br, align 8, !tbaa !72
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.el) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_114GlobalVariableESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_114GlobalVariableESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  store ptr %i.dj, ptr %i.aq, align 8, !tbaa !100
  %i.em = getelementptr inbounds nuw [96 x i8], ptr %i.dk, i64 %i.ce
  store ptr %i.em, ptr %i.bq, align 8, !tbaa !101
  %i.en = getelementptr inbounds nuw [96 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.en, ptr %i.br, align 8, !tbaa !72
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_114GlobalVariableESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, %bb.g
  %.val6.i.i.i.i.i = phi ptr [ %i.dj, %_ZNSt12_Vector_baseIN12_GLOBAL__N_114GlobalVariableESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114GlobalVariableEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %bb.g ]
  %i.eo = getelementptr inbounds nuw [96 x i8], ptr %.val6.i.i.i.i.i, i64 %indvars.iv.i.i.i.i ; 14 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 104
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !123
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #14
  %i.es = load ptr, ptr %0, align 8, !tbaa !46
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 120
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #14, !inline_history !124
  br i1 %i.ev, label %bb.j, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(92) %i.eo, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %34)
  %i.ew = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ex = load ptr, ptr %0, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 128
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ew) #14, !inline_history !124
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #14
  store i8 0, ptr %i.bs, align 1, !tbaa !125
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang15NullabilityKindENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS9_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.59, i64 11, ptr noundef nonnull align 1 dereferenceable(2) %i.fa, ptr noundef nonnull align 1 dereferenceable(2) %32, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #14
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  call fastcc void @_ZN4llvm4yaml2IO11mapOptionalIN12_GLOBAL__N_115APIAvailabilityES4_EEvNS_9StringRefERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.1, i64 12, ptr noundef nonnull align 4 dereferenceable(4) %i.fb, i32 0)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #14
  %i.fd = load ptr, ptr %0, align 8, !tbaa !46
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !126
  br i1 %i.fg, label %bb.k, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i
  %i.fh = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i ], [ %.not.i.i.i.i.i.i.i.i.i.i.i, %bb.k ]
  %i.fi = load ptr, ptr %0, align 8, !tbaa !46
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 120
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = call noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.2, i64 15, i1 noundef zeroext false, i1 noundef zeroext %i.fh, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #14, !inline_history !126
  br i1 %i.fl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %31)
  %i.fm = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.fn = load ptr, ptr %0, align 8, !tbaa !46
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.fm) #14, !inline_history !126
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i
  %i.fq = load i8, ptr %i.ah, align 1, !tbaa !51, !range !43, !noundef !40
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.n, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  store ptr @.str.3, ptr %i.fc, align 8, !tbaa !21
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 0, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  store i8 0, ptr %i.bt, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.46, i64 12, ptr noundef nonnull align 1 dereferenceable(2) %i.fs, ptr noundef nonnull align 1 dereferenceable(2) %29, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  %i.fu = load ptr, ptr %0, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call noundef zeroext i1 %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !126
  br i1 %i.fx, label %bb.o, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i18.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %.sroa.24.0.copyload.i.i.i19.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i18.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i23.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i19.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i
  %i.fy = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i ], [ %.not.i.i.i.i23.i.i.i.i.i.i.i, %bb.o ]
  %i.fz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 120
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = call noundef zeroext i1 %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.47, i64 9, i1 noundef zeroext false, i1 noundef zeroext %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #14, !inline_history !126
  br i1 %i.gc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %28)
  %i.gd = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ge = load ptr, ptr %0, align 8, !tbaa !46
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gd) #14, !inline_history !126
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i
  %i.gh = load i8, ptr %i.af, align 1, !tbaa !51, !range !43, !noundef !40
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.r, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  store ptr @.str.3, ptr %i.ft, align 8, !tbaa !21
  %.sroa.540.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  store i64 0, ptr %.sroa.540.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eo, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  %i.gk = load ptr, ptr %0, align 8, !tbaa !46
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef zeroext i1 %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !126
  br i1 %i.gn, label %bb.s, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i

bb.s:                                             ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i28.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %.sroa.24.0.copyload.i.i.i29.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i28.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i33.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i29.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i
  %i.go = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i ], [ %.not.i.i.i.i33.i.i.i.i.i.i.i, %bb.s ]
  %i.gp = load ptr, ptr %0, align 8, !tbaa !46
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 120
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.72, i64 4, i1 noundef zeroext false, i1 noundef zeroext %i.go, ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #14, !inline_history !126
  br i1 %i.gs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %27)
  %i.gt = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.gu = load ptr, ptr %0, align 8, !tbaa !46
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 128
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gt) #14, !inline_history !126
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_114GlobalVariableENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

bb.u:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i
  %i.gx = load i8, ptr %i.ad, align 1, !tbaa !51, !range !43, !noundef !40
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.v, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_114GlobalVariableENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  store ptr @.str.3, ptr %i.gj, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_114GlobalVariableENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_114GlobalVariableENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #14
  store i32 3, ptr %i.ak, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.55, i64 11, ptr noundef nonnull align 4 dereferenceable(4) %i.gz, ptr noundef nonnull align 4 dereferenceable(4) %i.ak, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  %i.ha = load ptr, ptr %0, align 8, !tbaa !46
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 112
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !123
  %i.hd = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.he = load ptr, ptr %0, align 8, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.hd) #14, !inline_history !99
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_114GlobalVariableENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %bb.f, !llvm.loop !128

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i: ; preds = %bb.w, %bb.e
  %i.hh = load ptr, ptr %0, align 8, !tbaa !46
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !99
  %i.hk = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.hl = load ptr, ptr %0, align 8, !tbaa !46
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 128
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.hk) #14, !inline_history !98
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
  br label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EEEEvNS_9StringRefERT_.exit: ; preds = %bb.b, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.hp = load ptr, ptr %0, align 8, !tbaa !46
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call noundef zeroext i1 %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !129
  br i1 %i.hs, label %bb.x, label %.critedge.i.i16

bb.x:                                             ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EEEEvNS_9StringRefERT_.exit
  %.val.i.i53 = load ptr, ptr %i.ho, align 8, !tbaa !74
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val7.i.i54 = load ptr, ptr %i.ht, align 8, !tbaa !74
  %i.hu = icmp eq ptr %.val.i.i53, %.val7.i.i54
  br i1 %i.hu, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EEEEvNS_9StringRefERT_.exit, label %.critedge.i.i16

.critedge.i.i16:                                  ; preds = %bb.x, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_114GlobalVariableESaIS5_EEEEvNS_9StringRefERT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  %i.hv = load ptr, ptr %0, align 8, !tbaa !46
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 120
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = call noundef zeroext i1 %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.41, i64 11, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #14, !inline_history !130
  br i1 %i.hy, label %bb.y, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

bb.y:                                             ; preds = %.critedge.i.i16
  %i.hz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call noundef i32 %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !131
  %i.id = load ptr, ptr %0, align 8, !tbaa !46
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef zeroext i1 %i.if(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !131
  br i1 %i.ig, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i51 = load ptr, ptr %i.ho, align 8, !tbaa !132
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val16.i.i.i.i52 = load ptr, ptr %i.ih, align 8, !tbaa !133
  %i.ii = ptrtoint ptr %.val16.i.i.i.i52 to i64
  %i.ij = ptrtoint ptr %.val.i.i.i.i51 to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = sdiv exact i64 %i.ik, 72
  %i.im = trunc i64 %i.il to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.in = phi i32 [ %i.im, %bb.z ], [ %i.ic, %bb.y ] ; 2 uses
  %.not.i.i.i.i17 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i.i.i17, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %bb.aa
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %22, i64 1
  %wide.trip.count.i.i.i.i19 = zext i32 %i.in to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i18
  %indvars.iv.i.i.i.i20 = phi i64 [ 0, %.lr.ph.i.i.i.i18 ], [ %indvars.iv.next.i.i.i.i21, %bb.ao ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #14
  %i.ir = load ptr, ptr %0, align 8, !tbaa !46
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = trunc nuw i64 %indvars.iv.i.i.i.i20 to i32
  %i.iv = call noundef zeroext i1 %i.it(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.iu, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #14, !inline_history !131
  br i1 %i.iv, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  %.val.i.i.i.i.i23 = load ptr, ptr %i.ho, align 8, !tbaa !132 ; 6 uses
  %.val5.i.i.i.i.i24 = load ptr, ptr %i.io, align 8, !tbaa !133 ; 5 uses
  %i.iw = ptrtoint ptr %.val5.i.i.i.i.i24 to i64  ; 2 uses
  %i.ix = ptrtoint ptr %.val.i.i.i.i.i23 to i64   ; 2 uses
  %i.iy = sub i64 %i.iw, %i.ix                    ; 2 uses
  %i.iz = sdiv exact i64 %i.iy, 72                ; 7 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.iz, %indvars.iv.i.i.i.i20
  br i1 %.not.i.i.i.i.i25, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ja = add nuw nsw i64 %indvars.iv.i.i.i.i20, 1
  %i.jb = sub nuw i64 %i.ja, %i.iz                ; 9 uses
  %i.jc = load ptr, ptr %i.ip, align 8, !tbaa !76
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = sub i64 %i.jd, %i.iw
  %i.jf = sdiv exact i64 %i.je, 72                ; 2 uses
  %i.jg = sub nuw nsw i64 128102389400760775, %i.iz
  %i.jh = icmp ule i64 %i.jf, %i.jg
  call void @llvm.assume(i1 %i.jh)
  %.not23.i.i.i.i.i.i.i26 = icmp ult i64 %i.jf, %i.jb
  br i1 %.not23.i.i.i.i.i.i.i26, label %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader:           ; preds = %bb.ad
  %i.ji = sub i64 %indvars.iv.i.i.i.i20, %i.iz
  %xtraiter182 = and i64 %i.jb, 7                 ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol
  %.08.i.i.i.i.i.i.i.i.i.i28.prol = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol ], [ %.val5.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.i29.prol = phi i64 [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol ], [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader ]
  %prol.iter184 = phi i64 [ %prol.iter184.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28.prol, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.08.i.i.i.i.i.i.i.i.i.i28.prol, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jj, align 8, !tbaa !134
  %i.jk = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i29.prol, -1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28.prol, i64 72 ; 3 uses
  %prol.iter184.next = add i64 %prol.iter184, 1   ; 2 uses
  %prol.iter184.cmp.not = icmp eq i64 %prol.iter184.next, %xtraiter182
  br i1 %prol.iter184.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol, !llvm.loop !136

.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader
  %.lcssa177.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i28.unr = phi ptr [ %.val5.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i29.unr = phi i64 [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.preheader ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol ]
  %i.jm = icmp ult i64 %i.ji, 7
  br i1 %i.jm, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i.i.i.i.i27:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i27
  %.08.i.i.i.i.i.i.i.i.i.i28 = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i.i.i.i.i.i27 ], [ %.08.i.i.i.i.i.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i.i29 = phi i64 [ %i.kc, %.lr.ph.i.i.i.i.i.i.i.i.i.i27 ], [ %.057.i.i.i.i.i.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.08.i.i.i.i.i.i.i.i.i.i28, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jn, align 8, !tbaa !134
  %i.jo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 72
  %i.jp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jo, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jp, align 8, !tbaa !134
  %i.jq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 144
  %i.jr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jq, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jr, align 8, !tbaa !134
  %i.js = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 216
  %i.jt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.js, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jt, align 8, !tbaa !134
  %i.ju = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 288
  %i.jv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ju, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jv, align 8, !tbaa !134
  %i.jw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 360
  %i.jx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jw, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jx, align 8, !tbaa !134
  %i.jy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 432
  %i.jz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jy, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.jz, align 8, !tbaa !134
  %i.ka = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 504
  %i.kb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ka, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kb, align 8, !tbaa !134
  %i.kc = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i29, -8 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i28, i64 576 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i30.7 = icmp eq i64 %i.kc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i30.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i27, !llvm.loop !137

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit
  %.lcssa177 = phi ptr [ %.lcssa177.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i27.prol.loopexit ], [ %i.kd, %.lr.ph.i.i.i.i.i.i.i.i.i.i27 ]
  store ptr %.lcssa177, ptr %i.io, align 8, !tbaa !133
  %.val6.pre.i.i.i.i.i31 = load ptr, ptr %i.ho, align 8, !tbaa !132
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.ad
  %.sroa.speculated.i.i.i.i.i.i.i.i40 = call i64 @llvm.umax.i64(i64 %i.iz, i64 range(i64 -128102389400760774, 128102393695728072) %i.jb)
  %i.ke = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i40, %i.iz ; 2 uses
  %i.kf = mul nuw nsw i64 %i.ke, 72
  %i.kg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #16 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.iy ; 3 uses
  %i.ki = sub i64 %indvars.iv.i.i.i.i20, %i.iz
  %xtraiter185 = and i64 %i.jb, 7                 ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol:              ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol
  %.08.i.i.i29.i.i.i.i.i.i.i42.prol = phi ptr [ %i.kl, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol ], [ %i.kh, %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.i43.prol = phi i64 [ %i.kk, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol ], [ %i.jb, %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %prol.iter187 = phi i64 [ %prol.iter187.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42.prol, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.08.i.i.i29.i.i.i.i.i.i.i42.prol, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kj, align 8, !tbaa !134
  %i.kk = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i43.prol, -1 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42.prol, i64 72 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol, !llvm.loop !138

.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol.loopexit:     ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol, %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i42.unr = phi ptr [ %i.kh, %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.kl, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i43.unr = phi i64 [ %i.jb, %_ZNKSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.kk, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol ]
  %i.km = icmp ult i64 %i.ki, 7
  br i1 %i.km, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i41

.lr.ph.i.i.i28.i.i.i.i.i.i.i41:                   ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41
  %.08.i.i.i29.i.i.i.i.i.i.i42 = phi ptr [ %i.ld, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41 ], [ %.08.i.i.i29.i.i.i.i.i.i.i42.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i.i43 = phi i64 [ %i.lc, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41 ], [ %.057.i.i.i30.i.i.i.i.i.i.i43.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol.loopexit ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.08.i.i.i29.i.i.i.i.i.i.i42, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kn, align 8, !tbaa !134
  %i.ko = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 72
  %i.kp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ko, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kp, align 8, !tbaa !134
  %i.kq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 144
  %i.kr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kq, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kr, align 8, !tbaa !134
  %i.ks = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 216
  %i.kt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ks, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kt, align 8, !tbaa !134
  %i.ku = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 288
  %i.kv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ku, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kv, align 8, !tbaa !134
  %i.kw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 360
  %i.kx = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kw, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kx, align 8, !tbaa !134
  %i.ky = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 432
  %i.kz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ky, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.kz, align 8, !tbaa !134
  %i.la = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 504
  %i.lb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.la, i8 0, i64 72, i1 false)
  store i32 3, ptr %i.lb, align 8, !tbaa !134
  %i.lc = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i43, -8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i42, i64 576
  %.not.i.i.i31.i.i.i.i.i.i.i44.7 = icmp eq i64 %i.lc, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i44.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i41, !llvm.loop !137

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i41, %.lr.ph.i.i.i28.i.i.i.i.i.i.i41.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %.val.i.i.i.i.i23, %.val5.i.i.i.i.i24
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i46

.lr.ph.i.i.i34.i.i.i.i.i.i.i46:                   ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i.i46
  %.03.i.i.i.i.i.i.i.i.i.i47 = phi ptr [ %i.lf, %.lr.ph.i.i.i34.i.i.i.i.i.i.i46 ], [ %i.kg, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i.i.i48 = phi ptr [ %i.le, %.lr.ph.i.i.i34.i.i.i.i.i.i.i46 ], [ %.val.i.i.i.i.i23, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.03.i.i.i.i.i.i.i.i.i.i47, ptr noundef nonnull readonly align 8 dereferenceable(72) %.092.i.i.i.i.i.i.i.i.i.i48, i64 72, i1 false), !alias.scope !139
  %i.le = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i48, i64 72 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i47, i64 72
  %.not.i.i.i35.i.i.i.i.i.i.i49 = icmp eq ptr %i.le, %.val5.i.i.i.i.i24
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i46, !llvm.loop !143

_ZNSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i46, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i50 = icmp eq ptr %.val.i.i.i.i.i23, null
  br i1 %.not.i37.i.i.i.i.i.i.i50, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_112EnumConstantESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  %i.lg = load ptr, ptr %i.ip, align 8, !tbaa !76
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = sub i64 %i.lh, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i23, i64 noundef %i.li) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_112EnumConstantESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_112EnumConstantESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i: ; preds = %bb.ae, %_ZNSt6vectorIN12_GLOBAL__N_112EnumConstantESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  store ptr %i.kg, ptr %i.ho, align 8, !tbaa !132
  %i.lj = getelementptr inbounds nuw [72 x i8], ptr %i.kh, i64 %i.jb
  store ptr %i.lj, ptr %i.io, align 8, !tbaa !133
  %i.lk = getelementptr inbounds nuw [72 x i8], ptr %i.kg, i64 %i.ke
  store ptr %i.lk, ptr %i.ip, align 8, !tbaa !76
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_112EnumConstantESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, %bb.ac
  %.val6.i.i.i.i.i32 = phi ptr [ %i.kg, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112EnumConstantESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_112EnumConstantEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i23, %bb.ac ]
  %i.ll = getelementptr inbounds nuw [72 x i8], ptr %.val6.i.i.i.i.i32, i64 %indvars.iv.i.i.i.i20 ; 10 uses
  %i.lm = load ptr, ptr %0, align 8, !tbaa !46
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 104
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !144
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  %i.lp = load ptr, ptr %0, align 8, !tbaa !46
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 120
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = call noundef zeroext i1 %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #14, !inline_history !145
  br i1 %i.ls, label %bb.af, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i33

bb.af:                                            ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(68) %i.ll, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %25)
  %i.lt = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.lu = load ptr, ptr %0, align 8, !tbaa !46
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 128
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.lt) #14, !inline_history !145
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i33

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i33: ; preds = %bb.af, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  call fastcc void @_ZN4llvm4yaml2IO11mapOptionalIN12_GLOBAL__N_115APIAvailabilityES4_EEvNS_9StringRefERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.1, i64 12, ptr noundef nonnull align 4 dereferenceable(4) %i.lx, i32 0)
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ll, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  %i.lz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = call noundef zeroext i1 %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !146
  br i1 %i.mc, label %bb.ag, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i34

bb.ag:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i33
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i38 = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i37, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i39 = icmp eq i64 %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i38, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i34

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i34: ; preds = %bb.ag, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i33
  %i.md = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i33 ], [ %.not.i.i.i.i.i.i.i.i.i.i.i39, %bb.ag ]
  %i.me = load ptr, ptr %0, align 8, !tbaa !46
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 120
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = call noundef zeroext i1 %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.2, i64 15, i1 noundef zeroext false, i1 noundef zeroext %i.md, ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.u) #14, !inline_history !146
  br i1 %i.mh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i34
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %24)
  %i.mi = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.mj = load ptr, ptr %0, align 8, !tbaa !46
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 128
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.mi) #14, !inline_history !146
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i35

bb.ai:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i34
  %i.mm = load i8, ptr %i.v, align 1, !tbaa !51, !range !43, !noundef !40
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.aj, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i35

bb.aj:                                            ; preds = %bb.ai
  store ptr @.str.3, ptr %i.ly, align 8, !tbaa !21
  %.sroa.527.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store i64 0, ptr %.sroa.527.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i35

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i35: ; preds = %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  store i8 0, ptr %i.iq, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.46, i64 12, ptr noundef nonnull align 1 dereferenceable(2) %i.mo, ptr noundef nonnull align 1 dereferenceable(2) %22, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ll, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  %i.mq = load ptr, ptr %0, align 8, !tbaa !46
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = call noundef zeroext i1 %i.ms(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !146
  br i1 %i.mt, label %bb.ak, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i12.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i35
  %.sroa.24.0..sroa_idx.i.i.i14.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %.sroa.24.0.copyload.i.i.i15.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i14.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i19.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i15.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i12.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i12.i.i.i.i.i.i.i: ; preds = %bb.ak, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i35
  %i.mu = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i35 ], [ %.not.i.i.i.i19.i.i.i.i.i.i.i, %bb.ak ]
  %i.mv = load ptr, ptr %0, align 8, !tbaa !46
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 120
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = call noundef zeroext i1 %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.47, i64 9, i1 noundef zeroext false, i1 noundef zeroext %i.mu, ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s) #14, !inline_history !146
  br i1 %i.my, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i12.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %21)
  %i.mz = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.na = load ptr, ptr %0, align 8, !tbaa !46
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 128
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.mz) #14, !inline_history !146
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_112EnumConstantENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

bb.am:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i12.i.i.i.i.i.i.i
  %i.nd = load i8, ptr %i.t, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.an, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_112EnumConstantENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  store ptr @.str.3, ptr %i.mp, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i36, align 8, !tbaa !23
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_112EnumConstantENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_112EnumConstantENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #14
  store i32 3, ptr %i.y, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.55, i64 11, ptr noundef nonnull align 4 dereferenceable(4) %i.nf, ptr noundef nonnull align 4 dereferenceable(4) %i.y, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  %i.ng = load ptr, ptr %0, align 8, !tbaa !46
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 112
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !144
  %i.nj = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.nk = load ptr, ptr %0, align 8, !tbaa !46
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.nj) #14, !inline_history !131
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_112EnumConstantENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  %indvars.iv.next.i.i.i.i21 = add nuw nsw i64 %indvars.iv.i.i.i.i20, 1 ; 2 uses
  %exitcond.not.i.i.i.i22 = icmp eq i64 %indvars.iv.next.i.i.i.i21, %wide.trip.count.i.i.i.i19
  br i1 %exitcond.not.i.i.i.i22, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %bb.ab, !llvm.loop !147

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i: ; preds = %bb.ao, %bb.aa
  %i.nn = load ptr, ptr %0, align 8, !tbaa !46
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !131
  %i.nq = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.nr = load ptr, ptr %0, align 8, !tbaa !46
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 128
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.nq) #14, !inline_history !130
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, %.critedge.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  br label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EEEEvNS_9StringRefERT_.exit: ; preds = %bb.x, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.nv = load ptr, ptr %0, align 8, !tbaa !46
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 56
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = call noundef zeroext i1 %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !148
  br i1 %i.ny, label %bb.ap, label %.critedge.i.i55

bb.ap:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EEEEvNS_9StringRefERT_.exit
  %.val.i.i56 = load ptr, ptr %i.nu, align 8, !tbaa !78
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val7.i.i57 = load ptr, ptr %i.nz, align 8, !tbaa !78
  %i.oa = icmp eq ptr %.val.i.i56, %.val7.i.i57
  br i1 %i.oa, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_13TagESaIS5_EEEEvNS_9StringRefERT_.exit, label %.critedge.i.i55

.critedge.i.i55:                                  ; preds = %bb.ap, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_112EnumConstantESaIS5_EEEEvNS_9StringRefERT_.exit
  call fastcc void @_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_13TagESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.42, i64 4, ptr noundef nonnull align 8 dereferenceable(24) %i.nu)
  br label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_13TagESaIS5_EEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_13TagESaIS5_EEEEvNS_9StringRefERT_.exit: ; preds = %bb.ap, %.critedge.i.i55
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.oc = load ptr, ptr %0, align 8, !tbaa !46
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 56
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = call noundef zeroext i1 %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !149
  br i1 %i.of, label %bb.aq, label %.critedge.i.i58

bb.aq:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_13TagESaIS5_EEEEvNS_9StringRefERT_.exit
  %.val.i.i95 = load ptr, ptr %i.ob, align 8, !tbaa !82
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val7.i.i96 = load ptr, ptr %i.og, align 8, !tbaa !82
  %i.oh = icmp eq ptr %.val.i.i95, %.val7.i.i96
  br i1 %i.oh, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EEEEvNS_9StringRefERT_.exit, label %.critedge.i.i58

.critedge.i.i58:                                  ; preds = %bb.aq, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_13TagESaIS5_EEEEvNS_9StringRefERT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  %i.oi = load ptr, ptr %0, align 8, !tbaa !46
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 120
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = call noundef zeroext i1 %i.ok(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.43, i64 8, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.q) #14, !inline_history !150
  br i1 %i.ol, label %bb.ar, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.i58
  %i.om = load ptr, ptr %0, align 8, !tbaa !46
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = call noundef i32 %i.oo(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !151
  %i.oq = load ptr, ptr %0, align 8, !tbaa !46
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = call noundef zeroext i1 %i.os(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !151
  br i1 %i.ot, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.val.i.i.i.i93 = load ptr, ptr %i.ob, align 8, !tbaa !152
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val16.i.i.i.i94 = load ptr, ptr %i.ou, align 8, !tbaa !153
  %i.ov = ptrtoint ptr %.val16.i.i.i.i94 to i64
  %i.ow = ptrtoint ptr %.val.i.i.i.i93 to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = sdiv exact i64 %i.ox, 168
  %i.oz = trunc i64 %i.oy to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.pa = phi i32 [ %i.oz, %bb.as ], [ %i.op, %bb.ar ] ; 2 uses
  %.not.i.i.i.i59 = icmp eq i32 %i.pa, 0
  br i1 %.not.i.i.i.i59, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %.lr.ph.i.i.i.i60

.lr.ph.i.i.i.i60:                                 ; preds = %bb.at
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %16, i64 1
  %i.pe = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.pg = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ph = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %wide.trip.count.i.i.i.i61 = zext i32 %i.pa to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.bk, %.lr.ph.i.i.i.i60
  %indvars.iv.i.i.i.i62 = phi i64 [ 0, %.lr.ph.i.i.i.i60 ], [ %indvars.iv.next.i.i.i.i63, %bb.bk ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.pj = load ptr, ptr %0, align 8, !tbaa !46
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = trunc nuw i64 %indvars.iv.i.i.i.i62 to i32
  %i.pn = call noundef zeroext i1 %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.pm, ptr noundef nonnull align 8 dereferenceable(8) %i.p) #14, !inline_history !151
  br i1 %i.pn, label %bb.av, label %bb.bk

bb.av:                                            ; preds = %bb.au
  %.val.i.i.i.i.i65 = load ptr, ptr %i.ob, align 8, !tbaa !152 ; 6 uses
  %.val5.i.i.i.i.i66 = load ptr, ptr %i.pb, align 8, !tbaa !153 ; 5 uses
  %i.po = ptrtoint ptr %.val5.i.i.i.i.i66 to i64  ; 2 uses
  %i.pp = ptrtoint ptr %.val.i.i.i.i.i65 to i64   ; 2 uses
  %i.pq = sub i64 %i.po, %i.pp                    ; 2 uses
  %i.pr = sdiv exact i64 %i.pq, 168               ; 7 uses
  %.not.i.i.i.i.i67 = icmp ugt i64 %i.pr, %indvars.iv.i.i.i.i62
  br i1 %.not.i.i.i.i.i67, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ps = add nuw nsw i64 %indvars.iv.i.i.i.i62, 1
  %i.pt = sub nuw i64 %i.ps, %i.pr                ; 9 uses
  %i.pu = load ptr, ptr %i.pc, align 8, !tbaa !84
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = sub i64 %i.pv, %i.po
  %i.px = sdiv exact i64 %i.pw, 168               ; 2 uses
  %i.py = sub nuw nsw i64 54901024028897475, %i.pr
  %i.pz = icmp ule i64 %i.px, %i.py
  call void @llvm.assume(i1 %i.pz)
  %.not23.i.i.i.i.i.i.i68 = icmp ult i64 %i.px, %i.pt
  br i1 %.not23.i.i.i.i.i.i.i68, label %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader:           ; preds = %bb.aw
  %i.qa = sub i64 %indvars.iv.i.i.i.i62, %i.pr
  %xtraiter188 = and i64 %i.pt, 7                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol
  %.08.i.i.i.i.i.i.i.i.i.i70.prol = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol ], [ %.val5.i.i.i.i.i66, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.i71.prol = phi i64 [ %i.qc, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol ], [ %i.pt, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader ]
  %prol.iter190 = phi i64 [ %prol.iter190.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70.prol, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i.i.i.i.i.i.i.i70.prol, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qb, align 8, !tbaa !154
  %i.qc = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i71.prol, -1 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70.prol, i64 168 ; 3 uses
  %prol.iter190.next = add i64 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i64 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol, !llvm.loop !169

.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader
  %.lcssa176.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader ], [ %i.qd, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i70.unr = phi ptr [ %.val5.i.i.i.i.i66, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader ], [ %i.qd, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i71.unr = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.preheader ], [ %i.qc, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol ]
  %i.qe = icmp ult i64 %i.qa, 7
  br i1 %i.qe, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i69

.lr.ph.i.i.i.i.i.i.i.i.i.i69:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i69
  %.08.i.i.i.i.i.i.i.i.i.i70 = phi ptr [ %i.qv, %.lr.ph.i.i.i.i.i.i.i.i.i.i69 ], [ %.08.i.i.i.i.i.i.i.i.i.i70.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i.i71 = phi i64 [ %i.qu, %.lr.ph.i.i.i.i.i.i.i.i.i.i69 ], [ %.057.i.i.i.i.i.i.i.i.i.i71.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i.i.i.i.i.i.i.i70, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qf, align 8, !tbaa !154
  %i.qg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 168
  %i.qh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qg, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qh, align 8, !tbaa !154
  %i.qi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 336
  %i.qj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qi, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qj, align 8, !tbaa !154
  %i.qk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 504
  %i.ql = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qk, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.ql, align 8, !tbaa !154
  %i.qm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 672
  %i.qn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qm, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qn, align 8, !tbaa !154
  %i.qo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 840
  %i.qp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 1000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qo, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qp, align 8, !tbaa !154
  %i.qq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 1008
  %i.qr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 1168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qq, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qr, align 8, !tbaa !154
  %i.qs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 1176
  %i.qt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 1336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qs, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.qt, align 8, !tbaa !154
  %i.qu = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i71, -8 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i70, i64 1344 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i72.7 = icmp eq i64 %i.qu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i72.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i69, !llvm.loop !170

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit
  %.lcssa176 = phi ptr [ %.lcssa176.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i69.prol.loopexit ], [ %i.qv, %.lr.ph.i.i.i.i.i.i.i.i.i.i69 ]
  store ptr %.lcssa176, ptr %i.pb, align 8, !tbaa !153
  %.val6.pre.i.i.i.i.i73 = load ptr, ptr %i.ob, align 8, !tbaa !152
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.aw
  %.sroa.speculated.i.i.i.i.i.i.i.i82 = call i64 @llvm.umax.i64(i64 %i.pr, i64 range(i64 -54901024028897474, 54901028323864772) %i.pt)
  %i.qw = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i82, %i.pr ; 2 uses
  %i.qx = mul nuw nsw i64 %i.qw, 168
  %i.qy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qx) #16 ; 5 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.pq ; 3 uses
  %i.ra = sub i64 %indvars.iv.i.i.i.i62, %i.pr
  %xtraiter191 = and i64 %i.pt, 7                 ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol:              ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol
  %.08.i.i.i29.i.i.i.i.i.i.i84.prol = phi ptr [ %i.rd, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol ], [ %i.qz, %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.i85.prol = phi i64 [ %i.rc, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol ], [ %i.pt, %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %prol.iter193 = phi i64 [ %prol.iter193.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %i.rb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84.prol, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i29.i.i.i.i.i.i.i84.prol, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rb, align 8, !tbaa !154
  %i.rc = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i85.prol, -1 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84.prol, i64 168 ; 2 uses
  %prol.iter193.next = add i64 %prol.iter193, 1   ; 2 uses
  %prol.iter193.cmp.not = icmp eq i64 %prol.iter193.next, %xtraiter191
  br i1 %prol.iter193.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol, !llvm.loop !171

.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol.loopexit:     ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol, %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i84.unr = phi ptr [ %i.qz, %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.rd, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i85.unr = phi i64 [ %i.pt, %_ZNKSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.rc, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol ]
  %i.re = icmp ult i64 %i.ra, 7
  br i1 %i.re, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i83

.lr.ph.i.i.i28.i.i.i.i.i.i.i83:                   ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83
  %.08.i.i.i29.i.i.i.i.i.i.i84 = phi ptr [ %i.rv, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83 ], [ %.08.i.i.i29.i.i.i.i.i.i.i84.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i.i85 = phi i64 [ %i.ru, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83 ], [ %.057.i.i.i30.i.i.i.i.i.i.i85.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol.loopexit ]
  %i.rf = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i29.i.i.i.i.i.i.i84, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rf, align 8, !tbaa !154
  %i.rg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 168
  %i.rh = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.rg, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rh, align 8, !tbaa !154
  %i.ri = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 336
  %i.rj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ri, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rj, align 8, !tbaa !154
  %i.rk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 504
  %i.rl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.rk, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rl, align 8, !tbaa !154
  %i.rm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 672
  %i.rn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.rm, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rn, align 8, !tbaa !154
  %i.ro = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 840
  %i.rp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 1000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ro, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rp, align 8, !tbaa !154
  %i.rq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 1008
  %i.rr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 1168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.rq, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rr, align 8, !tbaa !154
  %i.rs = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 1176
  %i.rt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 1336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.rs, i8 0, i64 168, i1 false)
  store i32 3, ptr %i.rt, align 8, !tbaa !154
  %i.ru = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i85, -8 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i84, i64 1344
  %.not.i.i.i31.i.i.i.i.i.i.i86.7 = icmp eq i64 %i.ru, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i86.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i83, !llvm.loop !170

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i83, %.lr.ph.i.i.i28.i.i.i.i.i.i.i83.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i87 = icmp eq ptr %.val.i.i.i.i.i65, %.val5.i.i.i.i.i66
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i87, label %_ZNSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i88

.lr.ph.i.i.i34.i.i.i.i.i.i.i88:                   ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_17TypedefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i89 = phi ptr [ %i.ss, %_ZSt19__relocate_object_aIN12_GLOBAL__N_17TypedefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.qy, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 7 uses
  %.092.i.i.i.i.i.i.i.i.i.i90 = phi ptr [ %i.sr, %_ZSt19__relocate_object_aIN12_GLOBAL__N_17TypedefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i65, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(164) %.03.i.i.i.i.i.i.i.i.i.i89, ptr noundef nonnull align 8 dereferenceable(164) %.092.i.i.i.i.i.i.i.i.i.i90, i64 120, i1 false), !alias.scope !177
  %i.rw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i89, i64 120 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 120 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 152 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i89, i64 152 ; 2 uses
  store i8 0, ptr %i.rz, align 8, !tbaa !178, !alias.scope !172, !noalias !175
  %i.sa = load i8, ptr %i.ry, align 8, !tbaa !178, !range !43, !alias.scope !175, !noalias !172, !noundef !40
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.ax, label %_ZSt19__relocate_object_aIN12_GLOBAL__N_17TypedefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i88
  %i.sc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i89, i64 136 ; 3 uses
  store ptr %i.sc, ptr %i.rw, align 8, !tbaa !179, !alias.scope !172, !noalias !175
  %i.sd = load ptr, ptr %i.rx, align 8, !tbaa !181, !alias.scope !175, !noalias !172 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 136 ; 5 uses
  %i.sf = icmp eq ptr %i.sd, %i.se
  br i1 %i.sf, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.sg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 128
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !183, !alias.scope !175, !noalias !172 ; 3 uses
  %i.si = icmp ult i64 %i.sh, 16
  call void @llvm.assume(i1 %i.si)
  %i.sj = add nuw nsw i64 %i.sh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sc, ptr noundef nonnull align 8 dereferenceable(1) %i.se, i64 %i.sj, i1 false), !alias.scope !177
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  store ptr %i.sd, ptr %i.rw, align 8, !tbaa !181, !alias.scope !172, !noalias !175
  %i.sk = load i64, ptr %i.se, align 8, !tbaa !44, !alias.scope !175, !noalias !172
  store i64 %i.sk, ptr %i.sc, align 8, !tbaa !44, !alias.scope !172, !noalias !175
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 128
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !183, !alias.scope !175, !noalias !172
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay
  %i.sl = phi i64 [ %i.sh, %bb.ay ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 128
  %i.sn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i89, i64 128
  store i64 %i.sl, ptr %i.sn, align 8, !tbaa !183, !alias.scope !172, !noalias !175
  store ptr %i.se, ptr %i.rx, align 8, !tbaa !181, !alias.scope !175, !noalias !172
  store i64 0, ptr %i.sm, align 8, !tbaa !183, !alias.scope !175, !noalias !172
  store i8 0, ptr %i.se, align 8, !tbaa !44, !alias.scope !175, !noalias !172
  store i8 1, ptr %i.rz, align 8, !tbaa !178, !alias.scope !172, !noalias !175
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_17TypedefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_17TypedefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i.i88
  %i.so = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i89, i64 160
  %i.sp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 160
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !154, !alias.scope !175, !noalias !172
  store i32 %i.sq, ptr %i.so, align 8, !tbaa !154, !alias.scope !172, !noalias !175
  store i8 0, ptr %i.ry, align 8, !tbaa !178, !alias.scope !175, !noalias !172
  %i.sr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i90, i64 168 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i89, i64 168
  %.not.i.i.i35.i.i.i.i.i.i.i91 = icmp eq ptr %i.sr, %.val5.i.i.i.i.i66
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i91, label %_ZNSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i88, !llvm.loop !184

_ZNSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_17TypedefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i92 = icmp eq ptr %.val.i.i.i.i.i65, null
  br i1 %.not.i37.i.i.i.i.i.i.i92, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_17TypedefESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  %i.st = load ptr, ptr %i.pc, align 8, !tbaa !84
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = sub i64 %i.su, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i65, i64 noundef %i.sv) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_17TypedefESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_17TypedefESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %_ZNSt6vectorIN12_GLOBAL__N_17TypedefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  store ptr %i.qy, ptr %i.ob, align 8, !tbaa !152
  %i.sw = getelementptr inbounds nuw [168 x i8], ptr %i.qz, i64 %i.pt
  store ptr %i.sw, ptr %i.pb, align 8, !tbaa !153
  %i.sx = getelementptr inbounds nuw [168 x i8], ptr %i.qy, i64 %i.qw
  store ptr %i.sx, ptr %i.pc, align 8, !tbaa !84
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_17TypedefESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, %bb.av
  %.val6.i.i.i.i.i74 = phi ptr [ %i.qy, %_ZNSt12_Vector_baseIN12_GLOBAL__N_17TypedefESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i.i73, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_17TypedefEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i65, %bb.av ]
  %i.sy = getelementptr inbounds nuw [168 x i8], ptr %.val6.i.i.i.i.i74, i64 %indvars.iv.i.i.i.i62 ; 13 uses
  %i.sz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 104
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !185
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.tc = load ptr, ptr %0, align 8, !tbaa !46
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 120
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = call noundef zeroext i1 %i.te(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.n) #14, !inline_history !186
  br i1 %i.tf, label %bb.ba, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i75

bb.ba:                                            ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(164) %i.sy, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %19)
  %i.tg = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.th = load ptr, ptr %0, align 8, !tbaa !46
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 128
  %i.tj = load ptr, ptr %i.ti, align 8
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.tg) #14, !inline_history !186
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i75

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i75: ; preds = %bb.ba, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  call fastcc void @_ZN4llvm4yaml2IO11mapOptionalIN12_GLOBAL__N_115APIAvailabilityES4_EEvNS_9StringRefERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.1, i64 12, ptr noundef nonnull align 4 dereferenceable(4) %i.tk, i32 0)
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sy, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.tm = load ptr, ptr %0, align 8, !tbaa !46
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = call noundef zeroext i1 %i.to(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !187
  br i1 %i.tp, label %bb.bb, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i76

bb.bb:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i75
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i79 = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i80 = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i79, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i81 = icmp eq i64 %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i80, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i76

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i76: ; preds = %bb.bb, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i75
  %i.tq = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i75 ], [ %.not.i.i.i.i.i.i.i.i.i.i.i81, %bb.bb ]
  %i.tr = load ptr, ptr %0, align 8, !tbaa !46
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 120
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = call noundef zeroext i1 %i.tt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.2, i64 15, i1 noundef zeroext false, i1 noundef zeroext %i.tq, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.l) #14, !inline_history !187
  br i1 %i.tu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i76
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.tl, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %18)
  %i.tv = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.tw = load ptr, ptr %0, align 8, !tbaa !46
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 128
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.tv) #14, !inline_history !187
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i77

bb.bd:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i76
  %i.tz = load i8, ptr %i.m, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ua = trunc nuw i8 %i.tz to i1
  br i1 %i.ua, label %bb.be, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i77

bb.be:                                            ; preds = %bb.bd
  store ptr @.str.3, ptr %i.tl, align 8, !tbaa !21
  %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  store i64 0, ptr %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i77

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i77: ; preds = %bb.be, %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sy, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  store i8 0, ptr %i.pd, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.46, i64 12, ptr noundef nonnull align 1 dereferenceable(2) %i.ub, ptr noundef nonnull align 1 dereferenceable(2) %16, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sy, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.ud = load ptr, ptr %0, align 8, !tbaa !46
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = call noundef zeroext i1 %i.uf(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !187
  br i1 %i.ug, label %bb.bf, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i18.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i77
  %.sroa.24.0..sroa_idx.i.i.i20.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 48
  %.sroa.24.0.copyload.i.i.i21.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i20.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i25.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i21.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i18.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i18.i.i.i.i.i.i.i: ; preds = %bb.bf, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i77
  %i.uh = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i77 ], [ %.not.i.i.i.i25.i.i.i.i.i.i.i, %bb.bf ]
  %i.ui = load ptr, ptr %0, align 8, !tbaa !46
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 120
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = call noundef zeroext i1 %i.uk(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.47, i64 9, i1 noundef zeroext false, i1 noundef zeroext %i.uh, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #14, !inline_history !187
  br i1 %i.ul, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i18.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4llvm4yamlL16mapTopLevelItemsERNS0_2IOERN12_GLOBAL__N_113TopLevelItemsE:bb.a
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit27.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i18.i.i.i.i.i.i.i
  %i.uq = load i8, ptr %i.k, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ur = trunc nuw i8 %i.uq to i1
  br i1 %i.ur, label %bb.bi, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit27.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  store ptr @.str.3, ptr %i.uc, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i78 = getelementptr inbounds nuw i8, ptr %i.sy, i64 48
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i78, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit27.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit27.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.us = getelementptr inbounds nuw i8, ptr %i.sy, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  store i8 0, ptr %i.pe, align 8, !tbaa !188
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS_9StringRefENS0_12EmptyContextEEEvS3_RSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.48, i64 11, ptr noundef nonnull align 8 dereferenceable(24) %i.us, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sy, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store i8 0, ptr %i.pf, align 8, !tbaa !188
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS_9StringRefENS0_12EmptyContextEEEvS3_RSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.49, i64 13, ptr noundef nonnull align 8 dereferenceable(24) %i.ut, ptr noundef nonnull align 8 dereferenceable(24) %11, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sy, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store i8 0, ptr %i.pg, align 4, !tbaa !189
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes16SwiftNewTypeKindENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKSA_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.125, i64 12, ptr noundef nonnull align 4 dereferenceable(8) %i.uu, ptr noundef nonnull align 4 dereferenceable(8) %9, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sy, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i8 0, ptr %i.ph, align 8, !tbaa !178
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKSD_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.52, i64 15, ptr noundef nonnull align 8 dereferenceable(40) %i.uv, ptr noundef nonnull align 8 dereferenceable(40) %7, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.uw = load i8, ptr %i.ph, align 8, !tbaa !178, !range !43, !noundef !40
  %i.ux = trunc nuw i8 %i.uw to i1
  store i8 0, ptr %i.ph, align 8, !tbaa !178
  br i1 %i.ux, label %bb.bj, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_17TypedefENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

bb.bj:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit27.i.i.i.i.i.i.i
  %i.uy = load ptr, ptr %7, align 8, !tbaa !181   ; 2 uses
  %i.uz = icmp eq ptr %i.uy, %i.pi
  br i1 %i.uz, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_17TypedefENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj
  %i.va = load i64, ptr %i.pi, align 8, !tbaa !44
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vb) #15
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_17TypedefENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_17TypedefENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit27.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.vc = load ptr, ptr %0, align 8, !tbaa !46
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 112
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !185
  %i.vf = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.vg = load ptr, ptr %0, align 8, !tbaa !46
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.vf) #14, !inline_history !151
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_17TypedefENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  %indvars.iv.next.i.i.i.i63 = add nuw nsw i64 %indvars.iv.i.i.i.i62, 1 ; 2 uses
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i63, %wide.trip.count.i.i.i.i61
  br i1 %exitcond.not.i.i.i.i64, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %bb.au, !llvm.loop !190

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i: ; preds = %bb.bk, %bb.at
  %i.vj = load ptr, ptr %0, align 8, !tbaa !46
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !151
  %i.vm = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.vn = load ptr, ptr %0, align 8, !tbaa !46
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 128
  %i.vp = load ptr, ptr %i.vo, align 8
  call void %i.vp(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.vm) #14, !inline_history !150
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_17TypedefESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, %.critedge.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  br label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EEEEvNS_9StringRefERT_.exit: ; preds = %bb.aq, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 5 uses
  %i.vr = load ptr, ptr %0, align 8, !tbaa !46
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 56
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = call noundef zeroext i1 %i.vt(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !191
  br i1 %i.vu, label %bb.bl, label %.critedge.i

bb.bl:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EEEEvNS_9StringRefERT_.exit
  %.val.i = load ptr, ptr %i.vq, align 8, !tbaa !86
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val7.i = load ptr, ptr %i.vv, align 8, !tbaa !86
  %i.vw = icmp eq ptr %.val.i, %.val7.i
  br i1 %i.vw, label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_19NamespaceESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_17TypedefESaIS5_EEEEvNS_9StringRefERT_.exit, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.vx = load ptr, ptr %0, align 8, !tbaa !46
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 120
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = call noundef zeroext i1 %i.vz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.44, i64 10, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #14, !inline_history !192
  br i1 %i.wa, label %bb.bm, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_19NamespaceESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

bb.bm:                                            ; preds = %.critedge.i
  %i.wb = load ptr, ptr %0, align 8, !tbaa !46
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = call noundef i32 %i.wd(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !193
  %i.wf = load ptr, ptr %0, align 8, !tbaa !46
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = call noundef zeroext i1 %i.wh(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !193
  br i1 %i.wi, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.val.i98 = load ptr, ptr %i.vq, align 8, !tbaa !194
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val16.i = load ptr, ptr %i.wj, align 8, !tbaa !195
  %i.wk = ptrtoint ptr %.val16.i to i64
  %i.wl = ptrtoint ptr %.val.i98 to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = sdiv exact i64 %i.wm, 264
  %i.wo = trunc i64 %i.wn to i32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.wp = phi i32 [ %i.wo, %bb.bn ], [ %i.we, %bb.bm ] ; 2 uses
  %.not = icmp eq i32 %i.wp, 0
  br i1 %.not, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_19NamespaceESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bo
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 1
  %wide.trip.count = zext i32 %i.wp to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.cc
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cc ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.wt = load ptr, ptr %0, align 8, !tbaa !46
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 32
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = trunc nuw i64 %indvars.iv to i32
  %i.wx = call noundef zeroext i1 %i.wv(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ww, ptr noundef nonnull align 8 dereferenceable(8) %i.g) #14, !inline_history !193
  br i1 %i.wx, label %bb.bq, label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i97 = load ptr, ptr %i.vq, align 8, !tbaa !194 ; 6 uses
  %.val5.i.i = load ptr, ptr %i.wq, align 8, !tbaa !195 ; 5 uses
  %i.wy = ptrtoint ptr %.val5.i.i to i64          ; 2 uses
  %i.wz = ptrtoint ptr %.val.i.i97 to i64         ; 2 uses
  %i.xa = sub i64 %i.wy, %i.wz                    ; 2 uses
  %i.xb = sdiv exact i64 %i.xa, 264               ; 7 uses
  %.not.i.i = icmp ugt i64 %i.xb, %indvars.iv
  br i1 %.not.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_19NamespaceESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xc = add nuw nsw i64 %indvars.iv, 1
  %i.xd = sub nuw nsw i64 %i.xc, %i.xb            ; 9 uses
  %i.xe = load ptr, ptr %i.wr, align 8, !tbaa !88
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = sub i64 %i.xf, %i.wy
  %i.xh = sdiv exact i64 %i.xg, 264               ; 2 uses
  %i.xi = sub nuw nsw i64 34937015291116575, %i.xb
  %i.xj = icmp ule i64 %i.xh, %i.xi
  call void @llvm.assume(i1 %i.xj)
  %.not23.i.i.i.i = icmp ult i64 %i.xh, %i.xd
  br i1 %.not23.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.br
  %i.xk = sub i64 %indvars.iv, %i.xb
  %xtraiter194 = and i64 %i.xd, 7                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.prol = phi ptr [ %i.xn, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.val5.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.prol = phi i64 [ %i.xm, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.xd, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.xl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.prol, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.08.i.i.i.i.i.i.i.prol, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.xl, align 8, !tbaa !196
  %i.xm = add nsw i64 %.057.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.prol, i64 264 ; 3 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !220

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.xn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.xn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.unr = phi i64 [ %i.xd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.xm, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.xo = icmp ult i64 %i.xk, 7
  br i1 %i.xo, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.yf, %.lr.ph.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i = phi i64 [ %i.ye, %.lr.ph.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.xp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.08.i.i.i.i.i.i.i, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.xp, align 8, !tbaa !196
  %i.xq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 264
  %i.xr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.xq, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.xr, align 8, !tbaa !196
  %i.xs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 528
  %i.xt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.xs, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.xt, align 8, !tbaa !196
  %i.xu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 792
  %i.xv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.xu, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.xv, align 8, !tbaa !196
  %i.xw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1056
  %i.xx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.xw, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.xx, align 8, !tbaa !196
  %i.xy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1320
  %i.xz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.xy, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.xz, align 8, !tbaa !196
  %i.ya = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1584
  %i.yb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ya, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yb, align 8, !tbaa !196
  %i.yc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 1848
  %i.yd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 2104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.yc, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yd, align 8, !tbaa !196
  %i.ye = add nsw i64 %.057.i.i.i.i.i.i.i, -8     ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 2112 ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ye, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !221

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.yf, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.wq, align 8, !tbaa !195
  %.val6.pre.i.i = load ptr, ptr %i.vq, align 8, !tbaa !194
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_19NamespaceESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i

_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.br
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.xb, i64 range(i64 -34937015291116574, 34937019586083872) %i.xd)
  %i.yg = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.xb ; 2 uses
  %i.yh = mul nuw nsw i64 %i.yg, 264
  %i.yi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yh) #16, !inline_history !193 ; 5 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.xa ; 3 uses
  %i.yk = sub i64 %indvars.iv, %i.xb
  %xtraiter197 = and i64 %i.xd, 7                 ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %.lr.ph.i.i.i28.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.prol:                      ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.prol = phi ptr [ %i.yn, %.lr.ph.i.i.i28.i.i.i.i.prol ], [ %i.yj, %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.prol = phi i64 [ %i.ym, %.lr.ph.i.i.i28.i.i.i.i.prol ], [ %i.xd, %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ]
  %prol.iter199 = phi i64 [ %prol.iter199.next, %.lr.ph.i.i.i28.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ]
  %i.yl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.prol, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.08.i.i.i29.i.i.i.i.prol, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yl, align 8, !tbaa !196
  %i.ym = add nsw i64 %.057.i.i.i30.i.i.i.i.prol, -1 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.prol, i64 264 ; 2 uses
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.prol, !llvm.loop !222

.lr.ph.i.i.i28.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i28.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.08.i.i.i29.i.i.i.i.unr = phi ptr [ %i.yj, %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.yn, %.lr.ph.i.i.i28.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.unr = phi i64 [ %i.xd, %_ZNKSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ym, %.lr.ph.i.i.i28.i.i.i.i.prol ]
  %i.yo = icmp ult i64 %i.yk, 7
  br i1 %i.yo, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i:                           ; preds = %.lr.ph.i.i.i28.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i
  %.08.i.i.i29.i.i.i.i = phi ptr [ %i.zf, %.lr.ph.i.i.i28.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i = phi i64 [ %i.ze, %.lr.ph.i.i.i28.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.prol.loopexit ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.08.i.i.i29.i.i.i.i, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yp, align 8, !tbaa !196
  %i.yq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 264
  %i.yr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.yq, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yr, align 8, !tbaa !196
  %i.ys = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 528
  %i.yt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ys, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yt, align 8, !tbaa !196
  %i.yu = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 792
  %i.yv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.yu, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yv, align 8, !tbaa !196
  %i.yw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1056
  %i.yx = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.yw, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yx, align 8, !tbaa !196
  %i.yy = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1320
  %i.yz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.yy, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.yz, align 8, !tbaa !196
  %i.za = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1584
  %i.zb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.za, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.zb, align 8, !tbaa !196
  %i.zc = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 1848
  %i.zd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 2104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.zc, i8 0, i64 264, i1 false)
  store i32 3, ptr %i.zd, align 8, !tbaa !196
  %i.ze = add nsw i64 %.057.i.i.i30.i.i.i.i, -8   ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i, i64 2112
  %.not.i.i.i31.i.i.i.i.7 = icmp eq i64 %i.ze, 0
  br i1 %.not.i.i.i31.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i, !llvm.loop !221

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i97, %.val5.i.i
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i:                           ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.abg, %.lr.ph.i.i.i34.i.i.i.i ], [ %i.yi, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i ] ; 19 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.abf, %.lr.ph.i.i.i34.i.i.i.i ], [ %.val.i.i97, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i ] ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %.03.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(260) %.092.i.i.i.i.i.i.i, i64 58, i1 false), !alias.scope !228
  %i.zg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 64
  %i.zh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.zi = load <2 x ptr>, ptr %i.zh, align 8, !tbaa !62, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.zi, ptr %i.zg, align 8, !tbaa !62, !alias.scope !223, !noalias !226
  %i.zj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 80
  %i.zk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 80
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !64, !alias.scope !226, !noalias !223
  store ptr %i.zl, ptr %i.zj, align 8, !tbaa !64, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.zh, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.zm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 88
  %i.zn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.zo = load <2 x ptr>, ptr %i.zn, align 8, !tbaa !62, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.zo, ptr %i.zm, align 8, !tbaa !62, !alias.scope !223, !noalias !226
  %i.zp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 104
  %i.zq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 104
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !64, !alias.scope !226, !noalias !223
  store ptr %i.zr, ptr %i.zp, align 8, !tbaa !64, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zn, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.zs = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 112
  %i.zt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 112 ; 2 uses
  %i.zu = load <2 x ptr>, ptr %i.zt, align 8, !tbaa !66, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.zu, ptr %i.zs, align 8, !tbaa !66, !alias.scope !223, !noalias !226
  %i.zv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 128
  %i.zw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 128
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !68, !alias.scope !226, !noalias !223
  store ptr %i.zx, ptr %i.zv, align 8, !tbaa !68, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zt, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.zy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 136
  %i.zz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 136 ; 2 uses
  %i.aaa = load <2 x ptr>, ptr %i.zz, align 8, !tbaa !70, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.aaa, ptr %i.zy, align 8, !tbaa !70, !alias.scope !223, !noalias !226
  %i.aab = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 152
  %i.aac = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 152
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !72, !alias.scope !226, !noalias !223
  store ptr %i.aad, ptr %i.aab, align 8, !tbaa !72, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zz, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.aae = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 160
  %i.aaf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.aag = load <2 x ptr>, ptr %i.aaf, align 8, !tbaa !74, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.aag, ptr %i.aae, align 8, !tbaa !74, !alias.scope !223, !noalias !226
  %i.aah = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 176
  %i.aai = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 176
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !76, !alias.scope !226, !noalias !223
  store ptr %i.aaj, ptr %i.aah, align 8, !tbaa !76, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aaf, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.aak = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 184
  %i.aal = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 184 ; 2 uses
  %i.aam = load <2 x ptr>, ptr %i.aal, align 8, !tbaa !78, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.aam, ptr %i.aak, align 8, !tbaa !78, !alias.scope !223, !noalias !226
  %i.aan = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 200
  %i.aao = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 200
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !80, !alias.scope !226, !noalias !223
  store ptr %i.aap, ptr %i.aan, align 8, !tbaa !80, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aal, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.aaq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 208
  %i.aar = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 208 ; 2 uses
  %i.aas = load <2 x ptr>, ptr %i.aar, align 8, !tbaa !82, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.aas, ptr %i.aaq, align 8, !tbaa !82, !alias.scope !223, !noalias !226
  %i.aat = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 224
  %i.aau = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 224
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !84, !alias.scope !226, !noalias !223
  store ptr %i.aav, ptr %i.aat, align 8, !tbaa !84, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aar, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.aaw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 232
  %i.aax = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 232 ; 2 uses
  %i.aay = load <2 x ptr>, ptr %i.aax, align 8, !tbaa !86, !alias.scope !226, !noalias !223
  store <2 x ptr> %i.aay, ptr %i.aaw, align 8, !tbaa !86, !alias.scope !223, !noalias !226
  %i.aaz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 248
  %i.aba = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 248
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !88, !alias.scope !226, !noalias !223
  store ptr %i.abb, ptr %i.aaz, align 8, !tbaa !88, !alias.scope !223, !noalias !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aax, i8 0, i64 24, i1 false), !alias.scope !226, !noalias !223
  %i.abc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 256
  %i.abd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 256
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !196, !alias.scope !226, !noalias !223
  store i32 %i.abe, ptr %i.abc, align 8, !tbaa !196, !alias.scope !223, !noalias !226
  call fastcc void @_ZN12_GLOBAL__N_19NamespaceD2Ev(ptr noundef nonnull align 8 dead_on_return(260) dereferenceable(260) %.092.i.i.i.i.i.i.i) #14, !noalias !223, !inline_history !193
  %i.abf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 264 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 264
  %.not.i.i.i35.i.i.i.i = icmp eq ptr %i.abf, %.val5.i.i
  br i1 %.not.i.i.i35.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i, !llvm.loop !229

_ZNSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i
  %.not.i37.i.i.i.i = icmp eq ptr %.val.i.i97, null
  br i1 %.not.i37.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_19NamespaceESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i
  %i.abh = load ptr, ptr %i.wr, align 8, !tbaa !88
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = sub i64 %i.abi, %i.wz
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i97, i64 noundef %i.abj) #15, !inline_history !193
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_19NamespaceESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_19NamespaceESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN12_GLOBAL__N_19NamespaceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i
  store ptr %i.yi, ptr %i.vq, align 8, !tbaa !194
  %i.abk = getelementptr inbounds nuw [264 x i8], ptr %i.yj, i64 %i.xd
  store ptr %i.abk, ptr %i.wq, align 8, !tbaa !195
  %i.abl = getelementptr inbounds nuw [264 x i8], ptr %i.yi, i64 %i.yg
  store ptr %i.abl, ptr %i.wr, align 8, !tbaa !88
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_19NamespaceESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_19NamespaceESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_19NamespaceESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i, %bb.bq
  %.val6.i.i = phi ptr [ %i.yi, %_ZNSt12_Vector_baseIN12_GLOBAL__N_19NamespaceESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i ], [ %.val6.pre.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_19NamespaceEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i ], [ %.val.i.i97, %bb.bq ]
  %i.abm = getelementptr inbounds nuw [264 x i8], ptr %.val6.i.i, i64 %indvars.iv ; 10 uses
  %i.abn = load ptr, ptr %0, align 8, !tbaa !46
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 104
  %i.abp = load ptr, ptr %i.abo, align 8
  call void %i.abp(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !230
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.abq = load ptr, ptr %0, align 8, !tbaa !46
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 120
  %i.abs = load ptr, ptr %i.abr, align 8
  %i.abt = call noundef zeroext i1 %i.abs(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14, !inline_history !231
  br i1 %i.abt, label %bb.bt, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit

bb.bt:                                            ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_19NamespaceESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(260) %i.abm, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.abu = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.abv = load ptr, ptr %0, align 8, !tbaa !46
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 128
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.abu) #14, !inline_history !231
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit: ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_19NamespaceESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  call fastcc void @_ZN4llvm4yaml2IO11mapOptionalIN12_GLOBAL__N_115APIAvailabilityES4_EEvNS_9StringRefERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.1, i64 12, ptr noundef nonnull align 4 dereferenceable(4) %i.aby, i32 0), !inline_history !232
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abm, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.aca = load ptr, ptr %0, align 8, !tbaa !46
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  %i.acc = load ptr, ptr %i.acb, align 8
  %i.acd = call noundef zeroext i1 %i.acc(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !233
  br i1 %i.acd, label %bb.bu, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i100

bb.bu:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit
  %.sroa.24.0..sroa_idx.i.i.i102 = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  %.sroa.24.0.copyload.i.i.i103 = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i102, align 8, !tbaa !23
  %.not.i.i.i.i107 = icmp eq i64 %.sroa.24.0.copyload.i.i.i103, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i100

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i100:       ; preds = %bb.bu, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit
  %i.ace = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit ], [ %.not.i.i.i.i107, %bb.bu ]
  %i.acf = load ptr, ptr %0, align 8, !tbaa !46
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 120
  %i.ach = load ptr, ptr %i.acg, align 8
  %i.aci = call noundef zeroext i1 %i.ach(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.2, i64 15, i1 noundef zeroext false, i1 noundef zeroext %i.ace, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #14, !inline_history !233
  br i1 %i.aci, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i100
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.abz, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.acj = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.ack = load ptr, ptr %0, align 8, !tbaa !46
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 128
  %i.acm = load ptr, ptr %i.acl, align 8
  call void %i.acm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.acj) #14, !inline_history !233
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit109

bb.bw:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i100
  %i.acn = load i8, ptr %i.d, align 1, !tbaa !51, !range !43, !noundef !40
  %i.aco = trunc nuw i8 %i.acn to i1
  br i1 %i.aco, label %bb.bx, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit109

bb.bx:                                            ; preds = %bb.bw
  store ptr @.str.3, ptr %i.abz, align 8, !tbaa !21
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  store i64 0, ptr %.sroa.5131.0..sroa_idx, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit109

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit109: ; preds = %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abm, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i8 0, ptr %i.ws, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.46, i64 12, ptr noundef nonnull align 1 dereferenceable(2) %i.acp, ptr noundef nonnull align 1 dereferenceable(2) %4, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
end_hunk_1
begin_hunk_2_@_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EEEEvNS_9StringRefERT_:bb.a
  %i.r = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %12 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %13 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %14 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %15 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.aa = alloca ptr, align 8                     ; 4 uses
  %i.ab = alloca i8, align 1                      ; 5 uses
  %16 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = alloca i8, align 1                      ; 3 uses
  %17 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca i8, align 1                      ; 3 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca i8, align 1                      ; 4 uses
  %18 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca i8, align 1                      ; 4 uses
  %19 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca i8, align 1                      ; 4 uses
  %20 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca i8, align 1                      ; 4 uses
  %21 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ap = alloca ptr, align 8                     ; 4 uses
  %i.aq = alloca i8, align 1                      ; 4 uses
  %i.ar = alloca ptr, align 8                     ; 4 uses
  %i.as = alloca i8, align 1                      ; 4 uses
  %22 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %23 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca i8, align 1                      ; 4 uses
  %24 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.av = alloca ptr, align 8                     ; 4 uses
  %i.aw = alloca i8, align 1                      ; 3 uses
  %25 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ax = alloca ptr, align 8                     ; 4 uses
  %i.ay = alloca i8, align 1                      ; 3 uses
  %i.az = alloca ptr, align 8                     ; 4 uses
  %i.ba = alloca i8, align 1                      ; 3 uses
  %26 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.bb = alloca ptr, align 8                     ; 4 uses
  %i.bc = alloca ptr, align 8                     ; 4 uses
  %i.bd = alloca i8, align 1                      ; 3 uses
  %27 = alloca %"class.std::optional.80", align 8 ; 6 uses
  %28 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %29 = alloca %"class.std::optional", align 1    ; 4 uses
  %30 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %31 = alloca %"class.std::optional", align 1    ; 4 uses
  %32 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %33 = alloca %"class.std::optional.74", align 8 ; 4 uses
  %34 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %35 = alloca %"class.std::optional.74", align 8 ; 4 uses
  %36 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.be = alloca ptr, align 8                     ; 4 uses
  %i.bf = alloca i8, align 1                      ; 4 uses
  %37 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %38 = alloca %"class.std::optional", align 1    ; 4 uses
  %39 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.bg = alloca ptr, align 8                     ; 4 uses
  %i.bh = alloca i8, align 1                      ; 4 uses
  %40 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.bi = alloca ptr, align 8                     ; 4 uses
  %i.bj = alloca i8, align 1                      ; 4 uses
  %41 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.bk = alloca ptr, align 8                     ; 4 uses
  %i.bl = alloca i8, align 1                      ; 3 uses
  %42 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.bm = alloca i32, align 4                     ; 4 uses
  %i.bn = alloca ptr, align 8                     ; 4 uses
  %i.bo = alloca ptr, align 8                     ; 4 uses
  %i.bp = alloca i8, align 1                      ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !261
  br i1 %i.bt, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %3, align 8, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val7.i = load ptr, ptr %i.bu, align 8, !tbaa !62
  %i.bv = icmp eq ptr %.val.i, %.val7.i
  br i1 %i.bv, label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp) #14
  %i.bw = load ptr, ptr %0, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #14, !inline_history !262
  br i1 %i.bz, label %bb.c, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

bb.c:                                             ; preds = %.critedge.i
  %i.ca = load ptr, ptr %0, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !263
  %i.ce = load ptr, ptr %0, align 8, !tbaa !46
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !263
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !264
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val16.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !265
  %i.cj = ptrtoint ptr %.val16.i.i.i to i64
  %i.ck = ptrtoint ptr %.val.i.i.i to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 224
  %i.cn = trunc i64 %i.cm to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.co = phi i32 [ %i.cn, %bb.d ], [ %i.cd, %bb.c ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %38, i64 1
  %i.cs = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %31, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %29, i64 1
  %i.cw = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.co to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.in, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.in ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #14
  %i.df = load ptr, ptr %0, align 8, !tbaa !46
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.dj = call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #14, !inline_history !263
  br i1 %i.dj, label %bb.g, label %bb.in

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !264 ; 6 uses
  %.val5.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !265 ; 5 uses
  %i.dk = ptrtoint ptr %.val5.i.i.i.i to i64      ; 2 uses
  %i.dl = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %i.dn = sdiv exact i64 %i.dm, 224               ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.dn, %indvars.iv.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.do = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.dp = sub nuw i64 %i.do, %i.dn                ; 9 uses
  %i.dq = load ptr, ptr %i.cq, align 8, !tbaa !64
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.dk
  %i.dt = sdiv exact i64 %i.ds, 224               ; 2 uses
  %i.du = sub nuw nsw i64 41175768021673106, %i.dn
  %i.dv = icmp ule i64 %i.dt, %i.du
  call void @llvm.assume(i1 %i.dv)
  %.not23.i.i.i.i.i.i = icmp ult i64 %i.dt, %i.dp
  br i1 %.not23.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.h
  %i.dw = sub i64 %indvars.iv.i.i.i, %i.dn
  %xtraiter = and i64 %i.dp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.dx, align 8, !tbaa !266
  %i.dy = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 224 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !278

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = icmp ult i64 %i.dw, 7
  br i1 %i.ea, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i.i.i.i.i.i.i, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.eb, align 8, !tbaa !266
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 224
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ec, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.ed, align 8, !tbaa !266
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 448
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ee, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.ef, align 8, !tbaa !266
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 672
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.eg, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.eh, align 8, !tbaa !266
  %i.ei = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 896
  %i.ej = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ei, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.ej, align 8, !tbaa !266
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1120
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ek, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.el, align 8, !tbaa !266
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1344
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.em, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.en, align 8, !tbaa !266
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1568
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.eo, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.ep, align 8, !tbaa !266
  %i.eq = add nsw i64 %.057.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1792 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !279

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.cp, align 8, !tbaa !265
  %.val6.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !264
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 range(i64 -41175768021673105, 41175772316640403) %i.dp)
  %i.es = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.dn ; 2 uses
  %i.et = mul nuw nsw i64 %i.es, 224
  %i.eu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #16 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.dm ; 3 uses
  %i.ew = sub i64 %indvars.iv.i.i.i, %i.dn
  %xtraiter41 = and i64 %i.dp, 7                  ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.prol:                  ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.prol = phi ptr [ %i.ez, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ %i.ev, %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.prol = phi i64 [ %i.ey, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ %i.dp, %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i29.i.i.i.i.i.i.prol, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.ex, align 8, !tbaa !266
  %i.ey = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 224 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol, !llvm.loop !280

.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.unr = phi ptr [ %i.ev, %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ez, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.unr = phi i64 [ %i.dp, %_ZNKSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ey, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ]
  %i.fa = icmp ult i64 %i.ew, 7
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i28.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i.i28.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i29.i.i.i.i.i.i, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.fb, align 8, !tbaa !266
  %i.fc = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 224
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fc, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.fd, align 8, !tbaa !266
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 448
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fe, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.ff, align 8, !tbaa !266
  %i.fg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 672
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fg, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.fh, align 8, !tbaa !266
  %i.fi = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 896
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fi, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.fj, align 8, !tbaa !266
  %i.fk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1120
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fk, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.fl, align 8, !tbaa !266
  %i.fm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1344
  %i.fn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fm, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.fn, align 8, !tbaa !266
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1568
  %i.fp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fo, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.fp, align 8, !tbaa !266
  %i.fq = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i, -8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1792
  %.not.i.i.i31.i.i.i.i.i.i.7 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i, !llvm.loop !279

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i:                       ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, %_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i ], [ %i.eu, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i ] ; 11 uses
  %.092.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hf, %_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i ], [ %.val.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i ] ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(220) %.03.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(220) %.092.i.i.i.i.i.i.i.i.i, i64 124, i1 false), !alias.scope !286
  %i.fs = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 128 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 160 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  store i8 0, ptr %i.fv, align 8, !tbaa !178, !alias.scope !281, !noalias !284
  %i.fw = load i8, ptr %i.fu, align 8, !tbaa !178, !range !43, !alias.scope !284, !noalias !281, !noundef !40
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.i, label %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EED2Ev.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 144 ; 3 uses
  store ptr %i.fy, ptr %i.fs, align 8, !tbaa !179, !alias.scope !281, !noalias !284
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !181, !alias.scope !284, !noalias !281 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 144 ; 5 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 136
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !183, !alias.scope !284, !noalias !281 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 16
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nuw nsw i64 %i.gd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fy, ptr noundef nonnull align 8 dereferenceable(1) %i.ga, i64 %i.gf, i1 false), !alias.scope !286
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  store ptr %i.fz, ptr %i.fs, align 8, !tbaa !181, !alias.scope !281, !noalias !284
  %i.gg = load i64, ptr %i.ga, align 8, !tbaa !44, !alias.scope !284, !noalias !281
  store i64 %i.gg, ptr %i.fy, align 8, !tbaa !44, !alias.scope !281, !noalias !284
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 136
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !183, !alias.scope !284, !noalias !281
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.gh = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gd, %bb.j ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 136
  %i.gj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 136
  store i64 %i.gh, ptr %i.gj, align 8, !tbaa !183, !alias.scope !281, !noalias !284
  store ptr %i.ga, ptr %i.ft, align 8, !tbaa !181, !alias.scope !284, !noalias !281
  store i64 0, ptr %i.gi, align 8, !tbaa !183, !alias.scope !284, !noalias !281
  store i8 0, ptr %i.ga, align 8, !tbaa !44, !alias.scope !284, !noalias !281
  store i8 1, ptr %i.fv, align 8, !tbaa !178, !alias.scope !281, !noalias !284
  %.pre.i.pre.i.i = load i8, ptr %i.fu, align 8, !tbaa !178, !range !43
  %i.gk = trunc nuw i8 %.pre.i.pre.i.i to i1
  br label %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i
  %.pre.i.i.i = phi i1 [ %i.gk, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i34.i.i.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 168
  %i.gm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gn = load <2 x ptr>, ptr %i.gm, align 8, !tbaa !287, !alias.scope !284, !noalias !281
  store <2 x ptr> %i.gn, ptr %i.gl, align 8, !tbaa !287, !alias.scope !281, !noalias !284
  %i.go = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 184
  %i.gp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 184
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !288, !alias.scope !284, !noalias !281
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !288, !alias.scope !281, !noalias !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false), !alias.scope !284, !noalias !281
  %i.gr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 192
  %i.gs = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 192 ; 2 uses
  %i.gt = load <2 x ptr>, ptr %i.gs, align 8, !tbaa !289, !alias.scope !284, !noalias !281
  store <2 x ptr> %i.gt, ptr %i.gr, align 8, !tbaa !289, !alias.scope !281, !noalias !284
  %i.gu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 208
  %i.gv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 208
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !290, !alias.scope !284, !noalias !281
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !290, !alias.scope !281, !noalias !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i8 0, i64 24, i1 false), !alias.scope !284, !noalias !281
  %i.gx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 216
  %i.gy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 216
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !266, !alias.scope !284, !noalias !281
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !266, !alias.scope !281, !noalias !284
  store i8 0, ptr %i.fu, align 8, !tbaa !178
  br i1 %.pre.i.i.i, label %bb.k, label %_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i

bb.k:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EED2Ev.exit.i.i.i.i
  %i.ha = load ptr, ptr %i.ft, align 8, !tbaa !181 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 144 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !44
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #15
  br label %_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i

_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i:           ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EED2Ev.exit.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 224 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 224
  %.not.i.i.i35.i.i.i.i.i.i = icmp eq ptr %i.hf, %.val5.i.i.i.i
  br i1 %.not.i.i.i35.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i, !llvm.loop !291

_ZNSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_15ClassD2Ev.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i37.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ClassESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i
  %i.hh = load ptr, ptr %i.cq, align 8, !tbaa !64
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.hj) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ClassESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_15ClassESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIN12_GLOBAL__N_15ClassESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i
  store ptr %i.eu, ptr %3, align 8, !tbaa !264
  %i.hk = getelementptr inbounds nuw [224 x i8], ptr %i.ev, i64 %i.dp
  store ptr %i.hk, ptr %i.cp, align 8, !tbaa !265
  %i.hl = getelementptr inbounds nuw [224 x i8], ptr %i.eu, i64 %i.es
  store ptr %i.hl, ptr %i.cq, align 8, !tbaa !64
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ClassESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, %bb.g
  %.val6.i.i.i.i = phi ptr [ %i.eu, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ClassESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ClassEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.g ]
  %i.hm = getelementptr inbounds nuw [224 x i8], ptr %.val6.i.i.i.i, i64 %indvars.iv.i.i.i ; 26 uses
  %i.hn = load ptr, ptr %0, align 8, !tbaa !46
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 104
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !292
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #14
  %i.hq = load ptr, ptr %0, align 8, !tbaa !46
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 120
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = call noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #14, !inline_history !293
  br i1 %i.ht, label %bb.m, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.hm, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %42)
  %i.hu = load ptr, ptr %i.bk, align 8, !tbaa !49
  %i.hv = load ptr, ptr %0, align 8, !tbaa !46
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 128
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.hu) #14, !inline_history !293
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i: ; preds = %bb.m, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #14
  %i.hz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call noundef zeroext i1 %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !294
  br i1 %i.ic, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i
  %i.id = load i8, ptr %i.hy, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ie = icmp eq i8 %i.id, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i
  %i.if = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i ], [ %i.ie, %bb.n ]
  %i.ig = load ptr, ptr %0, align 8, !tbaa !46
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 120
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call noundef zeroext i1 %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.45, i64 21, i1 noundef zeroext false, i1 noundef zeroext %i.if, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #14, !inline_history !294
  br i1 %i.ij, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm4yaml7yamlizeIbEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS3_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.hy, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %41)
  %i.ik = load ptr, ptr %i.bi, align 8, !tbaa !49
  %i.il = load ptr, ptr %0, align 8, !tbaa !46
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 128
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ik) #14, !inline_history !294
  br label %_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.io = load i8, ptr %i.bj, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.r, label %_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.hy, align 1, !tbaa !51
  br label %_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #14
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
end_hunk_2
begin_hunk_3_@_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EEEEvNS_9StringRefERT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #14
  %i.jj = load ptr, ptr %0, align 8, !tbaa !46
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = call noundef zeroext i1 %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !295
  br i1 %i.jm, label %bb.w, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i28.i.i.i.i.i.i

bb.w:                                             ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i30.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %.sroa.24.0.copyload.i.i.i31.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i30.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i35.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i31.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i28.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i28.i.i.i.i.i.i: ; preds = %bb.w, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i
  %i.jn = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i ], [ %.not.i.i.i.i35.i.i.i.i.i.i, %bb.w ]
  %i.jo = load ptr, ptr %0, align 8, !tbaa !46
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 120
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = call noundef zeroext i1 %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.47, i64 9, i1 noundef zeroext false, i1 noundef zeroext %i.jn, ptr noundef nonnull align 1 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.be) #14, !inline_history !295
  br i1 %i.jr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i28.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %37)
  %i.js = load ptr, ptr %i.be, align 8, !tbaa !49
  %i.jt = load ptr, ptr %0, align 8, !tbaa !46
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.js) #14, !inline_history !295
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit37.i.i.i.i.i.i

bb.y:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i28.i.i.i.i.i.i
  %i.jw = load i8, ptr %i.bf, align 1, !tbaa !51, !range !43, !noundef !40
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.z, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit37.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  store ptr @.str.3, ptr %i.ji, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit37.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit37.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #14
  store i8 0, ptr %i.cs, align 8, !tbaa !188
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS_9StringRefENS0_12EmptyContextEEEvS3_RSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.48, i64 11, ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %35, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #14
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #14
  store i8 0, ptr %i.ct, align 8, !tbaa !188
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS_9StringRefENS0_12EmptyContextEEEvS3_RSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.49, i64 13, ptr noundef nonnull align 8 dereferenceable(24) %i.jz, ptr noundef nonnull align 8 dereferenceable(24) %33, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  store i8 0, ptr %i.cu, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.50, i64 23, ptr noundef nonnull align 1 dereferenceable(2) %i.ka, ptr noundef nonnull align 1 dereferenceable(2) %31, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hm, i64 122
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  store i8 0, ptr %i.cv, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.51, i64 16, ptr noundef nonnull align 1 dereferenceable(2) %i.kb, ptr noundef nonnull align 1 dereferenceable(2) %29, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hm, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  store i8 0, ptr %i.cw, align 8, !tbaa !178
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKSD_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.52, i64 15, ptr noundef nonnull align 8 dereferenceable(40) %i.kc, ptr noundef nonnull align 8 dereferenceable(40) %27, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %28)
  %i.kd = load i8, ptr %i.cw, align 8, !tbaa !178, !range !43, !noundef !40
  %i.ke = trunc nuw i8 %i.kd to i1
  store i8 0, ptr %i.cw, align 8, !tbaa !178
  br i1 %i.ke, label %bb.aa, label %_ZN4llvm4yaml2IO11mapOptionalISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit37.i.i.i.i.i.i
  %i.kf = load ptr, ptr %27, align 8, !tbaa !181  ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.cx
  br i1 %i.kg, label %_ZN4llvm4yaml2IO11mapOptionalISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.kh = load i64, ptr %i.cx, align 8, !tbaa !44
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #15
  br label %_ZN4llvm4yaml2IO11mapOptionalISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit37.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hm, i64 168 ; 5 uses
  %i.kk = load ptr, ptr %0, align 8, !tbaa !46
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = call noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !296
  br i1 %i.kn, label %bb.ab, label %.critedge.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !287
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hm, i64 176
  %.val7.i.i.i.i.i.i.i.i = load ptr, ptr %i.ko, align 8, !tbaa !287
  %i.kp = icmp eq ptr %.val.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i
  br i1 %i.kp, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.ab, %_ZN4llvm4yaml2IO11mapOptionalISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #14
  %i.kq = load ptr, ptr %0, align 8, !tbaa !46
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 120
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = call noundef zeroext i1 %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.53, i64 7, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #14, !inline_history !297
  br i1 %i.kt, label %bb.ac, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.ku = load ptr, ptr %0, align 8, !tbaa !46
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = call noundef i32 %i.kw(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !298
  %i.ky = load ptr, ptr %0, align 8, !tbaa !46
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = call noundef zeroext i1 %i.la(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !298
  br i1 %i.lb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !299
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hm, i64 176
  %.val16.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lc, align 8, !tbaa !300
  %i.ld = ptrtoint ptr %.val16.i.i.i.i.i.i.i.i.i.i to i64
  %i.le = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = sdiv exact i64 %i.lf, 184
  %i.lh = trunc i64 %i.lg to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.li = phi i32 [ %i.lh, %bb.ad ], [ %i.kx, %bb.ac ] ; 2 uses
  %.not.i.i.i.i38.i.i.i.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not.i.i.i.i38.i.i.i.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ae
  %i.lj = getelementptr inbounds nuw i8, ptr %i.hm, i64 176 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hm, i64 184 ; 3 uses
  %wide.trip.count.i.i.i.i.i.i.i.i.i.i = zext i32 %i.li to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.eq, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i, %bb.eq ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #14
  %i.ll = load ptr, ptr %0, align 8, !tbaa !46
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = trunc nuw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i to i32
  %i.lp = call noundef zeroext i1 %i.ln(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.lo, ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #14, !inline_history !298
  br i1 %i.lp, label %bb.ag, label %bb.eq

bb.ag:                                            ; preds = %bb.af
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !299 ; 6 uses
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lj, align 8, !tbaa !300 ; 5 uses
  %i.lq = ptrtoint ptr %.val5.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.lr = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ls = sub i64 %i.lq, %i.lr                    ; 2 uses
  %i.lt = sdiv exact i64 %i.ls, 184               ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.lt, %indvars.iv.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lu = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i, 1
  %i.lv = sub nuw i64 %i.lu, %i.lt                ; 9 uses
  %i.lw = load ptr, ptr %i.lk, align 8, !tbaa !288
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.lq
  %i.lz = sdiv exact i64 %i.ly, 184               ; 2 uses
  %i.ma = sub nuw nsw i64 50127021939428129, %i.lt
  %i.mb = icmp ule i64 %i.lz, %i.ma
  call void @llvm.assume(i1 %i.mb)
  %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.lz, %i.lv
  br i1 %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.ah
  %i.mc = sub i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i, %i.lt
  %xtraiter44 = and i64 %i.lv, 7                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.me, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.md = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.md, align 8, !tbaa !301
  %i.me = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 184 ; 3 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !316

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa39.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.me, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.mg = icmp ult i64 %i.mc, 7
  br i1 %i.mg, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.mh, align 8, !tbaa !301
  %i.mi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 184
  %i.mj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.mi, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.mj, align 8, !tbaa !301
  %i.mk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 368
  %i.ml = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.mk, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.ml, align 8, !tbaa !301
  %i.mm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 552
  %i.mn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.mm, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.mn, align 8, !tbaa !301
  %i.mo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 736
  %i.mp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.mo, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.mp, align 8, !tbaa !301
  %i.mq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 920
  %i.mr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.mq, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.mr, align 8, !tbaa !301
  %i.ms = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1104
  %i.mt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ms, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.mt, align 8, !tbaa !301
  %i.mu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1288
  %i.mv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.mu, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.mv, align 8, !tbaa !301
  %i.mw = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1472 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.mw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !317

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa39 = phi ptr [ %.lcssa39.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.mx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa39, ptr %i.lj, align 8, !tbaa !300
  %.val6.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !299
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lt, i64 range(i64 -50127021939428128, 50127026234395426) %i.lv)
  %i.my = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.lt ; 2 uses
  %i.mz = mul nuw nsw i64 %i.my, 184
  %i.na = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #16 ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ls ; 3 uses
  %i.nc = sub i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i, %i.lt
  %xtraiter47 = and i64 %i.lv, 7                  ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:    ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.nf, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.nb, %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ne, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.lv, %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %prol.iter49 = phi i64 [ %prol.iter49.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nd, align 8, !tbaa !301
  %i.ne = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 184 ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !318

.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.nb, %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nf, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.lv, %_ZNKSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ne, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ng = icmp ult i64 %i.nc, 7
  br i1 %i.ng, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nx, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nw, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nh, align 8, !tbaa !301
  %i.ni = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 184
  %i.nj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ni, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nj, align 8, !tbaa !301
  %i.nk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 368
  %i.nl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.nk, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nl, align 8, !tbaa !301
  %i.nm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 552
  %i.nn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.nm, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nn, align 8, !tbaa !301
  %i.no = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 736
  %i.np = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.no, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.np, align 8, !tbaa !301
  %i.nq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 920
  %i.nr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.nq, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nr, align 8, !tbaa !301
  %i.ns = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1104
  %i.nt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ns, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nt, align 8, !tbaa !301
  %i.nu = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1288
  %i.nv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.nu, i8 0, i64 184, i1 false)
  store i32 3, ptr %i.nv, align 8, !tbaa !301
  %i.nw = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1472
  %.not.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.nw, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !317

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.on, %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.na, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.om, %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(180) %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(180) %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 20, i1 false), !alias.scope !324
  %i.ny = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.nz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.oa = load <2 x ptr>, ptr %i.nz, align 8, !tbaa !325, !alias.scope !322, !noalias !319
  store <2 x ptr> %i.oa, ptr %i.ny, align 8, !tbaa !325, !alias.scope !319, !noalias !322
  %i.ob = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.oc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !326, !alias.scope !322, !noalias !319
  store ptr %i.od, ptr %i.ob, align 8, !tbaa !326, !alias.scope !319, !noalias !322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nz, i8 0, i64 24, i1 false), !alias.scope !322, !noalias !319
  %i.oe = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.of = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.og = load <2 x ptr>, ptr %i.of, align 8, !tbaa !49, !alias.scope !322, !noalias !319
  store <2 x ptr> %i.og, ptr %i.oe, align 8, !tbaa !49, !alias.scope !319, !noalias !322
  %i.oh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.oi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !327, !alias.scope !322, !noalias !319
  store ptr %i.oj, ptr %i.oh, align 8, !tbaa !327, !alias.scope !319, !noalias !322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.of, i8 0, i64 24, i1 false), !alias.scope !322, !noalias !319
  %i.ok = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  %i.ol = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.ok, ptr noundef nonnull align 8 dereferenceable(108) %i.ol, i64 108, i1 false), !alias.scope !324
  %i.om = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 184 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 184
  %.not.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.om, %.val5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !328

_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i37.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_16MethodESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oo = load ptr, ptr %i.lk, align 8, !tbaa !288
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = sub i64 %i.op, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.oq) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_16MethodESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_16MethodESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN12_GLOBAL__N_16MethodESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.na, ptr %i.kj, align 8, !tbaa !299
  %i.or = getelementptr inbounds nuw [184 x i8], ptr %i.nb, i64 %i.lv
  store ptr %i.or, ptr %i.lj, align 8, !tbaa !300
  %i.os = getelementptr inbounds nuw [184 x i8], ptr %i.na, i64 %i.my
  store ptr %i.os, ptr %i.lk, align 8, !tbaa !288
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_16MethodESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag
  %.val6.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.na, %_ZNSt12_Vector_baseIN12_GLOBAL__N_16MethodESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16MethodEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.ag ]
  %i.ot = getelementptr inbounds nuw [184 x i8], ptr %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i ; 31 uses
  %i.ou = load ptr, ptr %0, align 8, !tbaa !46
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 104
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !329
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #14
  %i.ox = load ptr, ptr %0, align 8, !tbaa !46
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 120
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = call noundef zeroext i1 %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.56, i64 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.az) #14, !inline_history !330
  br i1 %i.pa, label %bb.aj, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(180) %i.ot, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %26)
  %i.pb = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.pc = load ptr, ptr %0, align 8, !tbaa !46
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 128
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.pb) #14, !inline_history !330
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #14
  %i.pg = load ptr, ptr %0, align 8, !tbaa !46
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 120
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = call noundef zeroext i1 %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.57, i64 10, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #14, !inline_history !331
  br i1 %i.pj, label %bb.ak, label %_ZN4llvm4yaml2IO11mapRequiredIN12_GLOBAL__N_110MethodKindEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pk = load ptr, ptr %0, align 8, !tbaa !46
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 160
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !332
  %i.pn = load ptr, ptr %0, align 8, !tbaa !46
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load ptr, ptr %i.po, align 8
  %i.pq = call noundef zeroext i1 %i.pp(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !333
  br i1 %i.pq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pr = load i32, ptr %i.pf, align 4, !tbaa !44
  %i.ps = icmp eq i32 %i.pr, 0
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.pt = phi i1 [ false, %bb.ak ], [ %i.ps, %bb.al ]
  %i.pu = load ptr, ptr %0, align 8, !tbaa !46
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 168
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = call noundef zeroext i1 %i.pw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.67, i64 5, i1 noundef zeroext %i.pt) #14, !inline_history !333
  br i1 %i.px, label %bb.an, label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.pf, align 4, !tbaa !44
  br label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %i.py = load ptr, ptr %0, align 8, !tbaa !46
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = call noundef zeroext i1 %i.qa(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !333
  br i1 %i.qb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qc = load i32, ptr %i.pf, align 4, !tbaa !44
  %i.qd = icmp eq i32 %i.qc, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qe = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qd, %bb.ao ]
  %i.qf = load ptr, ptr %0, align 8, !tbaa !46
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 168
  %i.qh = load ptr, ptr %i.qg, align 8
  %i.qi = call noundef zeroext i1 %i.qh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.68, i64 8, i1 noundef zeroext %i.qe) #14, !inline_history !333
  br i1 %i.qi, label %bb.aq, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_110MethodKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  store i32 1, ptr %i.pf, align 4, !tbaa !44
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_110MethodKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_110MethodKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.qj = load ptr, ptr %0, align 8, !tbaa !46
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 184
  %i.ql = load ptr, ptr %i.qk, align 8
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !332
  %i.qm = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.qn = load ptr, ptr %0, align 8, !tbaa !46
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 128
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.qm) #14, !inline_history !331
  br label %_ZN4llvm4yaml2IO11mapRequiredIN12_GLOBAL__N_110MethodKindEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredIN12_GLOBAL__N_110MethodKindEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_110MethodKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  call fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ParamESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.58, i64 10, ptr noundef nonnull align 8 dereferenceable(24) %i.qq)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ot, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  %i.qs = load ptr, ptr %0, align 8, !tbaa !46
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = call noundef zeroext i1 %i.qu(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !334
  br i1 %i.qv, label %bb.ar, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredIN12_GLOBAL__N_110MethodKindEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qw = load ptr, ptr %i.qr, align 8, !tbaa !49
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ot, i64 56
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !49
  %i.qz = icmp eq ptr %i.qw, %i.qy
  br i1 %i.qz, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN5clang15NullabilityKindESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.ar, %_ZN4llvm4yaml2IO11mapRequiredIN12_GLOBAL__N_110MethodKindEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #14
  %i.ra = load ptr, ptr %0, align 8, !tbaa !46
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 120
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = call noundef zeroext i1 %i.rc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.59, i64 11, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.av) #14, !inline_history !335
  br i1 %i.rd, label %bb.as, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN5clang15NullabilityKindESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeISt6vectorIN5clang15NullabilityKindESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.qr, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %25)
  %i.re = load ptr, ptr %i.av, align 8, !tbaa !49
  %i.rf = load ptr, ptr %0, align 8, !tbaa !46
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 128
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.re) #14, !inline_history !335
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN5clang15NullabilityKindESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN5clang15NullabilityKindESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EEEEvNS_9StringRefERT_:bb.a
  %i.agw = icmp eq i32 %i.agv, 1
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit.i.i.i53.i.i.i
  %i.agx = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit.i.i.i53.i.i.i ], [ %i.agw, %bb.ei ]
  %i.agy = load ptr, ptr %0, align 8, !tbaa !46
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 168
  %i.aha = load ptr, ptr %i.agz, align 8
  %i.ahb = call noundef zeroext i1 %i.aha(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.102, i64 4, i1 noundef zeroext %i.agx) #14, !inline_history !352
  br i1 %i.ahb, label %bb.ek, label %_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit6.i.i.i54.i.i.i

bb.ek:                                            ; preds = %bb.ej
  store i32 1, ptr %i.afr, align 4, !tbaa !127
  br label %_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit6.i.i.i54.i.i.i

_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit6.i.i.i54.i.i.i: ; preds = %bb.ek, %bb.ej
  %i.ahc = load ptr, ptr %0, align 8, !tbaa !46
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = call noundef zeroext i1 %i.ahe(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !352
  br i1 %i.ahf, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit6.i.i.i54.i.i.i
  %i.ahg = load i32, ptr %i.afr, align 4, !tbaa !127
  %i.ahh = icmp eq i32 %i.ahg, 2
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit6.i.i.i54.i.i.i
  %i.ahi = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseIN5clang9api_notes15SwiftSafetyKindEEEvRT_NS_9StringRefES6_.exit6.i.i.i54.i.i.i ], [ %i.ahh, %bb.el ]
  %i.ahj = load ptr, ptr %0, align 8, !tbaa !46
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 168
  %i.ahl = load ptr, ptr %i.ahk, align 8
  %i.ahm = call noundef zeroext i1 %i.ahl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.103, i64 6, i1 noundef zeroext %i.ahi) #14, !inline_history !352
  br i1 %i.ahm, label %bb.en, label %_ZN4llvm4yaml7yamlizeIN5clang9api_notes15SwiftSafetyKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS6_bRNS0_12EmptyContextE.exit.i55.i.i.i

bb.en:                                            ; preds = %bb.em
  store i32 2, ptr %i.afr, align 4, !tbaa !127
  br label %_ZN4llvm4yaml7yamlizeIN5clang9api_notes15SwiftSafetyKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS6_bRNS0_12EmptyContextE.exit.i55.i.i.i

_ZN4llvm4yaml7yamlizeIN5clang9api_notes15SwiftSafetyKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS6_bRNS0_12EmptyContextE.exit.i55.i.i.i: ; preds = %bb.en, %bb.em
  %i.ahn = load ptr, ptr %0, align 8, !tbaa !46
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 184
  %i.ahp = load ptr, ptr %i.aho, align 8
  call void %i.ahp(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !351
  %i.ahq = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.ahr = load ptr, ptr %0, align 8, !tbaa !46
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 128
  %i.aht = load ptr, ptr %i.ahs, align 8
  call void %i.aht(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ahq) #14, !inline_history !350
  br label %_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_.exit56.i.i.i

bb.eo:                                            ; preds = %bb.ed
  %i.ahu = load i8, ptr %i.j, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ahv = trunc nuw i8 %i.ahu to i1
  br i1 %i.ahv, label %bb.ep, label %_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_.exit56.i.i.i

bb.ep:                                            ; preds = %bb.eo
  store i32 3, ptr %i.afr, align 4, !tbaa !127
  br label %_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_.exit56.i.i.i

_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_.exit56.i.i.i: ; preds = %bb.ep, %bb.eo, %_ZN4llvm4yaml7yamlizeIN5clang9api_notes15SwiftSafetyKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS6_bRNS0_12EmptyContextE.exit.i55.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.ahw = load ptr, ptr %0, align 8, !tbaa !46
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 112
  %i.ahy = load ptr, ptr %i.ahx, align 8
  call void %i.ahy(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !329
  %i.ahz = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.aia = load ptr, ptr %0, align 8, !tbaa !46
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 40
  %i.aic = load ptr, ptr %i.aib, align 8
  call void %i.aic(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ahz) #14, !inline_history !298
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_.exit56.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #14
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.i.i.i.i.i.i, label %bb.af, !llvm.loop !353

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.eq, %bb.ae
  %i.aid = load ptr, ptr %0, align 8, !tbaa !46
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 48
  %i.aif = load ptr, ptr %i.aie, align 8
  call void %i.aif(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !298
  %i.aig = load ptr, ptr %i.bc, align 8, !tbaa !49
  %i.aih = load ptr, ptr %0, align 8, !tbaa !46
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 128
  %i.aij = load ptr, ptr %i.aii, align 8
  call void %i.aij(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.aig) #14, !inline_history !297
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16MethodESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #14
  br label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i, %bb.ab
  %i.aik = getelementptr inbounds nuw i8, ptr %i.hm, i64 192 ; 5 uses
  %i.ail = load ptr, ptr %0, align 8, !tbaa !46
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 56
  %i.ain = load ptr, ptr %i.aim, align 8
  %i.aio = call noundef zeroext i1 %i.ain(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !354
  br i1 %i.aio, label %bb.er, label %.critedge.i.i39.i.i.i.i.i.i

bb.er:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i
  %.val.i.i80.i.i.i.i.i.i = load ptr, ptr %i.aik, align 8, !tbaa !289
  %i.aip = getelementptr inbounds nuw i8, ptr %i.hm, i64 200
  %.val7.i.i81.i.i.i.i.i.i = load ptr, ptr %i.aip, align 8, !tbaa !289
  %i.aiq = icmp eq ptr %.val.i.i80.i.i.i.i.i.i, %.val7.i.i81.i.i.i.i.i.i
  br i1 %i.aiq, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_15ClassENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i, label %.critedge.i.i39.i.i.i.i.i.i

.critedge.i.i39.i.i.i.i.i.i:                      ; preds = %bb.er, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16MethodESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #14
  %i.air = load ptr, ptr %0, align 8, !tbaa !46
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 120
  %i.ait = load ptr, ptr %i.ais, align 8
  %i.aiu = call noundef zeroext i1 %i.ait(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.54, i64 10, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.af) #14, !inline_history !355
  br i1 %i.aiu, label %bb.es, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_18PropertyESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i

bb.es:                                            ; preds = %.critedge.i.i39.i.i.i.i.i.i
  %i.aiv = load ptr, ptr %0, align 8, !tbaa !46
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = call noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !356
  %i.aiz = load ptr, ptr %0, align 8, !tbaa !46
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16
  %i.ajb = load ptr, ptr %i.aja, align 8
  %i.ajc = call noundef zeroext i1 %i.ajb(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !356
  br i1 %i.ajc, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %.val.i.i.i.i78.i.i.i.i.i.i = load ptr, ptr %i.aik, align 8, !tbaa !357
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.hm, i64 200
  %.val16.i.i.i.i79.i.i.i.i.i.i = load ptr, ptr %i.ajd, align 8, !tbaa !358
  %i.aje = ptrtoint ptr %.val16.i.i.i.i79.i.i.i.i.i.i to i64
  %i.ajf = ptrtoint ptr %.val.i.i.i.i78.i.i.i.i.i.i to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  %i.ajh = sdiv exact i64 %i.ajg, 112
  %i.aji = trunc i64 %i.ajh to i32
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.ajj = phi i32 [ %i.aji, %bb.et ], [ %i.aiy, %bb.es ] ; 2 uses
  %.not.i.i.i.i40.i.i.i.i.i.i = icmp eq i32 %i.ajj, 0
  br i1 %.not.i.i.i.i40.i.i.i.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_18PropertyESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i41.i.i.i.i.i.i

.lr.ph.i.i.i.i41.i.i.i.i.i.i:                     ; preds = %bb.eu
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.hm, i64 200 ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.hm, i64 208 ; 3 uses
  %wide.trip.count.i.i.i.i42.i.i.i.i.i.i = zext i32 %i.ajj to i64
  br label %bb.ev

bb.ev:                                            ; preds = %bb.im, %.lr.ph.i.i.i.i41.i.i.i.i.i.i
  %indvars.iv.i.i.i.i43.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i41.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i44.i.i.i.i.i.i, %bb.im ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  %i.ajm = load ptr, ptr %0, align 8, !tbaa !46
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  %i.ajo = load ptr, ptr %i.ajn, align 8
  %i.ajp = trunc nuw i64 %indvars.iv.i.i.i.i43.i.i.i.i.i.i to i32
  %i.ajq = call noundef zeroext i1 %i.ajo(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ajp, ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #14, !inline_history !356
  br i1 %i.ajq, label %bb.ew, label %bb.im

bb.ew:                                            ; preds = %bb.ev
  %.val.i.i.i.i.i46.i.i.i.i.i.i = load ptr, ptr %i.aik, align 8, !tbaa !357 ; 6 uses
  %.val5.i.i.i.i.i47.i.i.i.i.i.i = load ptr, ptr %i.ajk, align 8, !tbaa !358 ; 5 uses
  %i.ajr = ptrtoint ptr %.val5.i.i.i.i.i47.i.i.i.i.i.i to i64 ; 2 uses
  %i.ajs = ptrtoint ptr %.val.i.i.i.i.i46.i.i.i.i.i.i to i64 ; 2 uses
  %i.ajt = sub i64 %i.ajr, %i.ajs                 ; 2 uses
  %i.aju = sdiv exact i64 %i.ajt, 112             ; 7 uses
  %.not.i.i.i.i.i48.i.i.i.i.i.i = icmp ugt i64 %i.aju, %indvars.iv.i.i.i.i43.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i48.i.i.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18PropertyESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ajv = add nuw nsw i64 %indvars.iv.i.i.i.i43.i.i.i.i.i.i, 1
  %i.ajw = sub nuw i64 %i.ajv, %i.aju             ; 9 uses
  %i.ajx = load ptr, ptr %i.ajl, align 8, !tbaa !290
  %i.ajy = ptrtoint ptr %i.ajx to i64
  %i.ajz = sub i64 %i.ajy, %i.ajr
  %i.aka = sdiv exact i64 %i.ajz, 112             ; 2 uses
  %i.akb = sub nuw nsw i64 82351536043346212, %i.aju
  %i.akc = icmp ule i64 %i.aka, %i.akb
  call void @llvm.assume(i1 %i.akc)
  %.not23.i.i.i.i.i.i.i49.i.i.i.i.i.i = icmp ult i64 %i.aka, %i.ajw
  br i1 %.not23.i.i.i.i.i.i.i49.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader: ; preds = %bb.ex
  %i.akd = sub i64 %indvars.iv.i.i.i.i43.i.i.i.i.i.i, %i.aju
  %xtraiter50 = and i64 %i.ajw, 7                 ; 2 uses
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i.prol = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i.i47.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.i52.i.i.i.i.i.i.prol = phi i64 [ %i.akf, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol ], [ %i.ajw, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader ]
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader ]
  %i.ake = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i.prol, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i.prol, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.ake, align 8, !tbaa !359
  %i.akf = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i52.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i.prol, i64 112 ; 3 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol, !llvm.loop !365

.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader
  %.lcssa40.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader ], [ %i.akg, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i.i47.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader ], [ %i.akg, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i52.i.i.i.i.i.i.unr = phi i64 [ %i.ajw, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.preheader ], [ %i.akf, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol ]
  %i.akh = icmp ult i64 %i.akd, 7
  br i1 %i.akh, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i = phi ptr [ %i.aky, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i.i52.i.i.i.i.i.i = phi i64 [ %i.akx, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.i52.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit ]
  %i.aki = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.aki, align 8, !tbaa !359
  %i.akj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 112
  %i.akk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.akj, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.akk, align 8, !tbaa !359
  %i.akl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 224
  %i.akm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.akl, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.akm, align 8, !tbaa !359
  %i.akn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 336
  %i.ako = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.akn, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.ako, align 8, !tbaa !359
  %i.akp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 448
  %i.akq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.akp, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.akq, align 8, !tbaa !359
  %i.akr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 560
  %i.aks = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.akr, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.aks, align 8, !tbaa !359
  %i.akt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 672
  %i.aku = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.akt, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.aku, align 8, !tbaa !359
  %i.akv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 784
  %i.akw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.akv, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.akw, align 8, !tbaa !359
  %i.akx = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i52.i.i.i.i.i.i, -8 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, i64 896 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i53.i.i.i.i.i.i.7 = icmp eq i64 %i.akx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i, !llvm.loop !366

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit
  %.lcssa40 = phi ptr [ %.lcssa40.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i.prol.loopexit ], [ %i.aky, %.lr.ph.i.i.i.i.i.i.i.i.i.i50.i.i.i.i.i.i ]
  store ptr %.lcssa40, ptr %i.ajk, align 8, !tbaa !358
  %.val6.pre.i.i.i.i.i54.i.i.i.i.i.i = load ptr, ptr %i.aik, align 8, !tbaa !357
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18PropertyESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ex
  %.sroa.speculated.i.i.i.i.i.i.i.i67.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aju, i64 range(i64 -82351536043346211, 82351540338313509) %i.ajw)
  %i.akz = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i67.i.i.i.i.i.i, %i.aju ; 2 uses
  %i.ala = mul nuw nsw i64 %i.akz, 112
  %i.alb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ala) #16 ; 5 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %i.ajt ; 3 uses
  %i.ald = sub i64 %indvars.iv.i.i.i.i43.i.i.i.i.i.i, %i.aju
  %xtraiter53 = and i64 %i.ajw, 7                 ; 2 uses
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol:  ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i.prol = phi ptr [ %i.alg, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol ], [ %i.alc, %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.i70.i.i.i.i.i.i.prol = phi i64 [ %i.alf, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol ], [ %i.ajw, %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %prol.iter55 = phi i64 [ %prol.iter55.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ale = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i.prol, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i.prol, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.ale, align 8, !tbaa !359
  %i.alf = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i70.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i.prol, i64 112 ; 2 uses
  %prol.iter55.next = add i64 %prol.iter55, 1     ; 2 uses
  %prol.iter55.cmp.not = icmp eq i64 %prol.iter55.next, %xtraiter53
  br i1 %prol.iter55.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol, !llvm.loop !367

.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i.unr = phi ptr [ %i.alc, %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.alg, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i70.i.i.i.i.i.i.unr = phi i64 [ %i.ajw, %_ZNKSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.alf, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol ]
  %i.alh = icmp ult i64 %i.ald, 7
  br i1 %i.alh, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i = phi ptr [ %i.aly, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i.i70.i.i.i.i.i.i = phi i64 [ %i.alx, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.i70.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol.loopexit ]
  %i.ali = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.ali, align 8, !tbaa !359
  %i.alj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 112
  %i.alk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.alj, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.alk, align 8, !tbaa !359
  %i.all = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 224
  %i.alm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.all, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.alm, align 8, !tbaa !359
  %i.aln = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 336
  %i.alo = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aln, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.alo, align 8, !tbaa !359
  %i.alp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 448
  %i.alq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.alp, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.alq, align 8, !tbaa !359
  %i.alr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 560
  %i.als = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.alr, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.als, align 8, !tbaa !359
  %i.alt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 672
  %i.alu = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.alt, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.alu, align 8, !tbaa !359
  %i.alv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 784
  %i.alw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.alv, i8 0, i64 112, i1 false)
  store i32 3, ptr %i.alw, align 8, !tbaa !359
  %i.alx = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i70.i.i.i.i.i.i, -8 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i69.i.i.i.i.i.i, i64 896
  %.not.i.i.i31.i.i.i.i.i.i.i71.i.i.i.i.i.i.7 = icmp eq i64 %i.alx, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i71.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i, !llvm.loop !366

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i68.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i46.i.i.i.i.i.i, %.val5.i.i.i.i.i47.i.i.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i73.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i.i73.i.i.i.i.i.i:       ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i.i73.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i74.i.i.i.i.i.i = phi ptr [ %i.ama, %.lr.ph.i.i.i34.i.i.i.i.i.i.i73.i.i.i.i.i.i ], [ %i.alb, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i.i.i75.i.i.i.i.i.i = phi ptr [ %i.alz, %.lr.ph.i.i.i34.i.i.i.i.i.i.i73.i.i.i.i.i.i ], [ %.val.i.i.i.i.i46.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.03.i.i.i.i.i.i.i.i.i.i74.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(112) %.092.i.i.i.i.i.i.i.i.i.i75.i.i.i.i.i.i, i64 112, i1 false), !alias.scope !368
  %i.alz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i75.i.i.i.i.i.i, i64 112 ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i74.i.i.i.i.i.i, i64 112
  %.not.i.i.i35.i.i.i.i.i.i.i76.i.i.i.i.i.i = icmp eq ptr %i.alz, %.val5.i.i.i.i.i47.i.i.i.i.i.i
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i76.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i73.i.i.i.i.i.i, !llvm.loop !372

_ZNSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i73.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i77.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i46.i.i.i.i.i.i, null
  br i1 %.not.i37.i.i.i.i.i.i.i77.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18PropertyESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.amb = load ptr, ptr %i.ajl, align 8, !tbaa !290
  %i.amc = ptrtoint ptr %i.amb to i64
  %i.amd = sub i64 %i.amc, %i.ajs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i46.i.i.i.i.i.i, i64 noundef %i.amd) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18PropertyESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_18PropertyESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ey, %_ZNSt6vectorIN12_GLOBAL__N_18PropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.alb, ptr %i.aik, align 8, !tbaa !357
  %i.ame = getelementptr inbounds nuw [112 x i8], ptr %i.alc, i64 %i.ajw
  store ptr %i.ame, ptr %i.ajk, align 8, !tbaa !358
  %i.amf = getelementptr inbounds nuw [112 x i8], ptr %i.alb, i64 %i.akz
  store ptr %i.amf, ptr %i.ajl, align 8, !tbaa !290
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18PropertyESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18PropertyESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_18PropertyESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ew
  %.val6.i.i.i.i.i55.i.i.i.i.i.i = phi ptr [ %i.alb, %_ZNSt12_Vector_baseIN12_GLOBAL__N_18PropertyESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i.i54.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18PropertyEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i46.i.i.i.i.i.i, %bb.ew ]
  %i.amg = getelementptr inbounds nuw [112 x i8], ptr %.val6.i.i.i.i.i55.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i43.i.i.i.i.i.i ; 24 uses
  %i.amh = load ptr, ptr %0, align 8, !tbaa !46
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 104
  %i.amj = load ptr, ptr %i.ami, align 8
  call void %i.amj(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !373
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  %i.amk = load ptr, ptr %0, align 8, !tbaa !46
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 120
  %i.amm = load ptr, ptr %i.aml, align 8
  %i.amn = call noundef zeroext i1 %i.amm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #14, !inline_history !374
  br i1 %i.amn, label %bb.ez, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i56.i.i.i.i.i.i

bb.ez:                                            ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18PropertyESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(108) %i.amg, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %17)
  %i.amo = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.amp = load ptr, ptr %0, align 8, !tbaa !46
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 128
  %i.amr = load ptr, ptr %i.amq, align 8
  call void %i.amr(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.amo) #14, !inline_history !374
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i56.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i56.i.i.i.i.i.i: ; preds = %bb.ez, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18PropertyESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amg, i64 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  store i8 1, ptr %i.ab, align 1, !tbaa !51
  %i.amt = load ptr, ptr %0, align 8, !tbaa !46
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  %i.amv = load ptr, ptr %i.amu, align 8
  %i.amw = call noundef zeroext i1 %i.amv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !375
  br i1 %i.amw, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i56.i.i.i.i.i.i
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amg, i64 20
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.amx, align 4, !tbaa !376, !range !43, !noundef !40
  %i.amy = trunc nuw i8 %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.amz = xor i1 %i.amy, true
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i56.i.i.i.i.i.i
  %i.ana = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i56.i.i.i.i.i.i ], [ %i.amz, %bb.fa ]
  %i.anb = load ptr, ptr %0, align 8, !tbaa !46
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 16
  %i.and = load ptr, ptr %i.anc, align 8
  %i.ane = call noundef zeroext i1 %i.and(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !375
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.amg, i64 20
  %.val.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !376, !range !43
  %i.anf = trunc nuw i8 %.val.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  br i1 %i.ane, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.anf, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i64 4294967296, ptr %i.ams, align 4
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fb
  br i1 %i.anf, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.ang = load ptr, ptr %0, align 8, !tbaa !46
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 120
  %i.ani = load ptr, ptr %i.anh, align 8
  %i.anj = call noundef zeroext i1 %i.ani(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.99, i64 12, i1 noundef zeroext false, i1 noundef zeroext %i.ana, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #14, !inline_history !375
  br i1 %i.anj, label %bb.ff, label %bb.fq

bb.ff:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ank = load ptr, ptr %0, align 8, !tbaa !46
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  %i.anm = load ptr, ptr %i.anl, align 8
  %i.ann = call noundef zeroext i1 %i.anm(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !375
  br i1 %i.ann, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ano = call noundef ptr @_ZNK4llvm4yaml5Input14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(640) %0) #14 ; 4 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 32
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !256
  %i.anr = icmp ne i32 %i.anq, 1
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ano, null
  %.not.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i = or i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.anr
  br i1 %.not.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ano, i64 72
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ans, align 8, !tbaa !21
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ano, i64 80
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %16, align 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.db, align 8
  %i.ant = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef signext 32, i64 noundef -1) #14
  %i.anu = add i64 %i.ant, 1
  %i.anv = call i64 @llvm.usub.sat.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.anu)
  %i.anw = load i64, ptr %i.db, align 8, !tbaa !254 ; 2 uses
  %i.anx = sub i64 %i.anw, %i.anv
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.anw, i64 %i.anx)
  %.not.i.i.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i: ; preds = %bb.fh
  %i.any = load ptr, ptr %16, align 8, !tbaa !255 ; 2 uses
  %i.anz = load i32, ptr %i.any, align 1
  %i.aoa = xor i32 %i.anz, 1852796476
  %i.aob = getelementptr i8, ptr %i.any, i64 4
  %i.aoc = load i16, ptr %i.aob, align 1
  %i.aod = zext i16 %i.aoc to i32
  %i.aoe = xor i32 %i.aod, 15973
  %i.aof = or i32 %i.aoa, %i.aoe
  %i.aog = icmp ne i32 %i.aof, 0
  %i.aoh = zext i1 %i.aog to i32
  %i.aoi = icmp eq i32 %i.aoh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br i1 %i.aoi, label %bb.fi, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fi:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i
  store i64 0, ptr %i.ams, align 4
  br label %bb.fp

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fg, %bb.ff
  %i.aoj = load ptr, ptr %0, align 8, !tbaa !46
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 160
  %i.aol = load ptr, ptr %i.aok, align 8
  call void %i.aol(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !377
  %i.aom = load ptr, ptr %0, align 8, !tbaa !46
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  %i.aoo = load ptr, ptr %i.aon, align 8
  %i.aop = call noundef zeroext i1 %i.aoo(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !378
  br i1 %i.aop, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aoq = load i32, ptr %i.ams, align 4, !tbaa !44
  %i.aor = icmp eq i32 %i.aoq, 0
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aos = phi i1 [ false, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aor, %bb.fj ]
  %i.aot = load ptr, ptr %0, align 8, !tbaa !46
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 168
  %i.aov = load ptr, ptr %i.aou, align 8
  %i.aow = call noundef zeroext i1 %i.aov(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.67, i64 5, i1 noundef zeroext %i.aos) #14, !inline_history !378
  br i1 %i.aow, label %bb.fl, label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.ams, align 4, !tbaa !44
  br label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_110MethodKindEEEvRT_NS_9StringRefES5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %i.aox = load ptr, ptr %0, align 8, !tbaa !46
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.aoz = load ptr, ptr %i.aoy, align 8
  %i.apa = call noundef zeroext i1 %i.aoz(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !378
  br i1 %i.apa, label %bb.fm, label %bb.fn
end_hunk_4
begin_hunk_5_@_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EEEEvNS_9StringRefERT_:bb.a
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_15ClassENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_15ClassENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i: ; preds = %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_18PropertyESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i.i.i.i.i.i, %bb.er
  %i.bch = getelementptr inbounds nuw i8, ptr %i.hm, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #14
  store i32 3, ptr %i.bm, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes15SwiftSafetyKindENS0_12EmptyContextEEEvNS_9StringRefERT_RKS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.55, i64 11, ptr noundef nonnull align 4 dereferenceable(4) %i.bch, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #14
  %i.bci = load ptr, ptr %0, align 8, !tbaa !46
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 112
  %i.bck = load ptr, ptr %i.bcj, align 8
  call void %i.bck(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !292
  %i.bcl = load ptr, ptr %i.bn, align 8, !tbaa !49
  %i.bcm = load ptr, ptr %0, align 8, !tbaa !46
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 40
  %i.bco = load ptr, ptr %i.bcn, align 8
  call void %i.bco(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bcl) #14, !inline_history !263
  br label %bb.in

bb.in:                                            ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_15ClassENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #14
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, label %bb.f, !llvm.loop !381

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i: ; preds = %bb.in, %bb.e
  %i.bcp = load ptr, ptr %0, align 8, !tbaa !46
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 48
  %i.bcr = load ptr, ptr %i.bcq, align 8
  call void %i.bcr(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !263
  %i.bcs = load ptr, ptr %i.bo, align 8, !tbaa !49
  %i.bct = load ptr, ptr %0, align 8, !tbaa !46
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 128
  %i.bcv = load ptr, ptr %i.bcu, align 8
  call void %i.bcv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bcs) #14, !inline_history !262
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_15ClassESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #14
  br label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit

_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit: ; preds = %bb.b, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_15ClassESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_18FunctionESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %5 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %9 = alloca %"class.std::optional", align 1     ; 4 uses
  %10 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %12 = alloca %"class.std::optional.120", align 4 ; 4 uses
  %13 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %14 = alloca %"class.std::optional.114", align 1 ; 4 uses
  %15 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  %16 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %17 = alloca %"class.std::optional.162", align 8 ; 6 uses
  %18 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %19 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %20 = alloca %"class.std::optional.156", align 8 ; 13 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i8, align 1                       ; 3 uses
  %21 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca i8, align 1                       ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !382
  br i1 %i.x, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %3, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val7.i = load ptr, ptr %i.y, align 8, !tbaa !66
  %i.z = icmp eq ptr %.val.i, %.val7.i
  br i1 %i.z, label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_18FunctionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  %i.aa = load ptr, ptr %0, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s) #14, !inline_history !383
  br i1 %i.ad, label %bb.c, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_18FunctionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

bb.c:                                             ; preds = %.critedge.i
  %i.ae = load ptr, ptr %0, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !384
  %i.ai = load ptr, ptr %0, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !384
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !385
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val16.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !386
  %i.an = ptrtoint ptr %.val16.i.i.i to i64
  %i.ao = ptrtoint ptr %.val.i.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 224
  %i.ar = trunc i64 %i.aq to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = phi i32 [ %i.ar, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_18FunctionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 1
  %wide.trip.count.i.i.i = zext i32 %i.as to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.bu, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bu ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  %i.bf = load ptr, ptr %0, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bj = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.r) #14, !inline_history !384
  br i1 %i.bj, label %bb.g, label %bb.bu

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !385 ; 6 uses
  %.val5.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !386 ; 5 uses
  %i.bk = ptrtoint ptr %.val5.i.i.i.i to i64      ; 2 uses
  %i.bl = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = sdiv exact i64 %i.bm, 224               ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.bn, %indvars.iv.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18FunctionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.bp = sub nuw i64 %i.bo, %i.bn                ; 9 uses
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !68
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bk
  %i.bt = sdiv exact i64 %i.bs, 224               ; 2 uses
  %i.bu = sub nuw nsw i64 41175768021673106, %i.bn
  %i.bv = icmp ule i64 %i.bt, %i.bu
  call void @llvm.assume(i1 %i.bv)
  %.not23.i.i.i.i.i.i = icmp ult i64 %i.bt, %i.bp
  br i1 %.not23.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.h
  %i.bw = sub i64 %indvars.iv.i.i.i, %i.bn
  %xtraiter = and i64 %i.bp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.bx, align 8, !tbaa !387
  %i.by = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 224 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !394

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ca = icmp ult i64 %i.bw, 7
  br i1 %i.ca, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i.i.i.i.i.i.i, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cb, align 8, !tbaa !387
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cc, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cd, align 8, !tbaa !387
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 448
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ce, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cf, align 8, !tbaa !387
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 672
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cg, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.ch, align 8, !tbaa !387
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 896
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ci, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cj, align 8, !tbaa !387
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1120
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ck, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cl, align 8, !tbaa !387
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1344
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cm, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cn, align 8, !tbaa !387
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1568
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.co, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cp, align 8, !tbaa !387
  %i.cq = add nsw i64 %.057.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1792 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !395

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.at, align 8, !tbaa !386
  %.val6.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !385
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18FunctionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 range(i64 -41175768021673105, 41175772316640403) %i.bp)
  %i.cs = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bn ; 2 uses
  %i.ct = mul nuw nsw i64 %i.cs, 224
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #16 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.bm ; 3 uses
  %i.cw = sub i64 %indvars.iv.i.i.i, %i.bn
  %xtraiter33 = and i64 %i.bp, 7                  ; 2 uses
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.prol:                  ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ %i.cv, %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ %i.bp, %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %prol.iter35 = phi i64 [ %prol.iter35.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i29.i.i.i.i.i.i.prol, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.cx, align 8, !tbaa !387
  %i.cy = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 224 ; 2 uses
  %prol.iter35.next = add i64 %prol.iter35, 1     ; 2 uses
  %prol.iter35.cmp.not = icmp eq i64 %prol.iter35.next, %xtraiter33
  br i1 %prol.iter35.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol, !llvm.loop !396

.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.unr = phi ptr [ %i.cv, %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %_ZNKSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.cy, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ]
  %i.da = icmp ult i64 %i.cw, 7
  br i1 %i.da, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i28.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i28.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i29.i.i.i.i.i.i, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.db, align 8, !tbaa !387
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 224
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.dc, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.dd, align 8, !tbaa !387
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 448
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.de, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.df, align 8, !tbaa !387
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 672
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.dg, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.dh, align 8, !tbaa !387
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 896
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.di, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.dj, align 8, !tbaa !387
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1120
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.dk, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.dl, align 8, !tbaa !387
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1344
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.dm, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.dn, align 8, !tbaa !387
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1568
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.do, i8 0, i64 224, i1 false)
  store i32 3, ptr %i.dp, align 8, !tbaa !387
  %i.dq = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i, -8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 1792
  %.not.i.i.i31.i.i.i.i.i.i.7 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i, !llvm.loop !395

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i:                       ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fe, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.cu, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i ] ; 11 uses
  %.092.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fd, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(221) %.04.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(221) %.092.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !402, !alias.scope !403
  %i.ds = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.dv, align 8, !tbaa !404, !alias.scope !397, !noalias !400
  %i.dw = load i8, ptr %i.du, align 8, !tbaa !404, !range !43, !alias.scope !400, !noalias !397, !noundef !40
  %i.dx = trunc nuw i8 %i.dw to i1                ; 2 uses
  br i1 %i.dx, label %bb.i, label %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.dz, align 8, !tbaa !405, !alias.scope !397, !noalias !400
  %i.ea = load i8, ptr %i.dy, align 8, !tbaa !405, !range !43, !alias.scope !400, !noalias !397, !noundef !40
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.j, label %_ZNSt22_Optional_payload_baseIN12_GLOBAL__N_113FunctionWhereEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ec = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !407, !alias.scope !400, !noalias !397
  store <2 x ptr> %i.ec, ptr %i.ds, align 8, !tbaa !407, !alias.scope !397, !noalias !400
  %i.ed = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !409, !alias.scope !400, !noalias !397
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !409, !alias.scope !397, !noalias !400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, i8 0, i64 24, i1 false), !alias.scope !400, !noalias !397
  store i8 1, ptr %i.dz, align 8, !tbaa !405, !alias.scope !397, !noalias !400
  br label %_ZNSt22_Optional_payload_baseIN12_GLOBAL__N_113FunctionWhereEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN12_GLOBAL__N_113FunctionWhereEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store i8 1, ptr %i.dv, align 8, !tbaa !404, !alias.scope !397, !noalias !400
  br label %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt22_Optional_payload_baseIN12_GLOBAL__N_113FunctionWhereEE12_M_constructIJS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 56
  %i.eh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ei = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !325, !alias.scope !400, !noalias !397
  store <2 x ptr> %i.ei, ptr %i.eg, align 8, !tbaa !325, !alias.scope !397, !noalias !400
  %i.ej = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 72
  %i.ek = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !326, !alias.scope !400, !noalias !397
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !326, !alias.scope !397, !noalias !400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false), !alias.scope !400, !noalias !397
  %i.em = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 80
  %i.en = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 80 ; 2 uses
  %i.eo = load <2 x ptr>, ptr %i.en, align 8, !tbaa !49, !alias.scope !400, !noalias !397
  store <2 x ptr> %i.eo, ptr %i.em, align 8, !tbaa !49, !alias.scope !397, !noalias !400
  %i.ep = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 96
  %i.eq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 96
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !327, !alias.scope !400, !noalias !397
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !327, !alias.scope !397, !noalias !400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 0, i64 24, i1 false), !alias.scope !400, !noalias !397
  %i.es = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 104
  %i.et = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %i.es, ptr noundef nonnull align 8 dereferenceable(117) %i.et, i64 117, i1 false), !alias.scope !403
  store i8 0, ptr %i.du, align 8, !tbaa !404, !alias.scope !400, !noalias !397
  br i1 %i.dx, label %bb.k, label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !405, !range !43, !alias.scope !400, !noalias !397, !noundef !40
  %i.ew = trunc nuw i8 %i.ev to i1
  store i8 0, ptr %i.eu, align 8, !tbaa !405, !alias.scope !400, !noalias !397
  br i1 %i.ew, label %bb.l, label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ex = load ptr, ptr %i.dt, align 8, !tbaa !411, !alias.scope !400, !noalias !397 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !409, !alias.scope !400, !noalias !397
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #15, !noalias !403
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 224 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 224
  %.not.i.i.i35.i.i.i.i.i.i = icmp eq ptr %i.fd, %.val5.i.i.i.i
  br i1 %.not.i.i.i35.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i, !llvm.loop !412

_ZNSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_18FunctionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i37.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18FunctionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i
  %i.ff = load ptr, ptr %i.au, align 8, !tbaa !68
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.fh) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18FunctionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_18FunctionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN12_GLOBAL__N_18FunctionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i
  store ptr %i.cu, ptr %3, align 8, !tbaa !385
  %i.fi = getelementptr inbounds nuw [224 x i8], ptr %i.cv, i64 %i.bp
  store ptr %i.fi, ptr %i.at, align 8, !tbaa !386
  %i.fj = getelementptr inbounds nuw [224 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.fj, ptr %i.au, align 8, !tbaa !68
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18FunctionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18FunctionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_18FunctionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, %bb.g
  %.val6.i.i.i.i = phi ptr [ %i.cu, %_ZNSt12_Vector_baseIN12_GLOBAL__N_18FunctionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18FunctionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.g ]
  %i.fk = getelementptr inbounds nuw [224 x i8], ptr %.val6.i.i.i.i, i64 %indvars.iv.i.i.i ; 36 uses
  %i.fl = load ptr, ptr %0, align 8, !tbaa !46
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !413
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.fo = load ptr, ptr %0, align 8, !tbaa !46
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call noundef zeroext i1 %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #14, !inline_history !414
  br i1 %i.fr, label %bb.o, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18FunctionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(221) %i.fk, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %21)
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.ft = load ptr, ptr %0, align 8, !tbaa !46
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 128
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.fs) #14, !inline_history !414
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_18FunctionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  store i8 0, ptr %i.av, align 8, !tbaa !404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i8 1, ptr %i.n, align 1, !tbaa !51
  %i.fx = load ptr, ptr %0, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef zeroext i1 %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !415
  br i1 %i.ga, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %.val22.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gb, align 8, !tbaa !404, !range !43, !noundef !40
  %i.gc = trunc nuw i8 %.val22.i.i.i.i.i.i.i.i.i to i1
  %i.gd = xor i1 %i.gc, true
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i
  %i.ge = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i ], [ %i.gd, %bb.p ]
  %i.gf = load ptr, ptr %0, align 8, !tbaa !46
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call noundef zeroext i1 %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !415
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 48 ; 9 uses
  %.val.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !tbaa !404, !range !43
  %i.gj = trunc nuw i8 %.val.pre.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  br i1 %i.gi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.gj, label %.thread.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_113FunctionWhereD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_113FunctionWhereD2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store i8 0, ptr %i.gk, align 8, !tbaa !405
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !tbaa !404
  br label %.thread.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  br i1 %i.gj, label %.thread.i.i.i.i.i.i.i.i.i, label %.thread23.i.i.i.i.i.i.i.i

.thread23.i.i.i.i.i.i.i.i:                        ; preds = %bb.s
  store i8 0, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !tbaa !404
  br label %_ZN4llvm4yaml2IO21processKeyWithDefaultIN12_GLOBAL__N_113FunctionWhereENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS9_bRT0_.exit.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.s, %_ZN12_GLOBAL__N_113FunctionWhereD2Ev.exit.i.i.i.i.i.i.i.i.i, %bb.r
  %i.gl = load ptr, ptr %0, align 8, !tbaa !46
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 120
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = call noundef zeroext i1 %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.104, i64 5, i1 noundef zeroext false, i1 noundef zeroext %i.ge, ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.m) #14, !inline_history !415
  br i1 %i.go, label %bb.t, label %bb.aj

bb.t:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_:bb.a
  %i.n = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.n, ptr %i.h, align 8, !tbaa !44
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !44
  store i8 %i.p, ptr %i.o, align 1, !tbaa !44
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.q = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !183
  %i.s = load ptr, ptr %0, align 8, !tbaa !181
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store i8 1, ptr %i.b, align 8, !tbaa !178
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !178
  br i1 %i.d, label %bb.i, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #15
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm4yaml12ScalarTraitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE6outputERKS7_PvRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4llvm4yaml12ScalarTraitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE5inputENS_9StringRefEPvRS7_(ptr, i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15ParamESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional.134", align 4 ; 4 uses
  %5 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %6 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %9 = alloca %"class.std::optional", align 1     ; 4 uses
  %10 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %11 = alloca %"class.std::optional", align 1    ; 4 uses
  %12 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %13 = alloca %"class.std::optional.120", align 4 ; 4 uses
  %14 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %15 = alloca %"class.std::optional.114", align 1 ; 4 uses
  %16 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 3 uses
  %17 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !425
  br i1 %i.q, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %3, align 8, !tbaa !325
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val7.i = load ptr, ptr %i.r, align 8, !tbaa !325
  %i.s = icmp eq ptr %.val.i, %.val7.i
  br i1 %i.s, label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_15ParamESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.t = load ptr, ptr %0, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.l) #14, !inline_history !426
  br i1 %i.w, label %bb.c, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_15ParamESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

bb.c:                                             ; preds = %.critedge.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !427
  %i.ab = load ptr, ptr %0, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !427
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !428
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val16.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !429
  %i.ag = ptrtoint ptr %.val16.i.i.i to i64
  %i.ah = ptrtoint ptr %.val.i.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 80
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %i.ak, %bb.d ], [ %i.aa, %bb.c ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_15ParamESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  %wide.trip.count.i.i.i = zext i32 %i.al to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aa ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.au = load ptr, ptr %0, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ay = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.k) #14, !inline_history !427
  br i1 %i.ay, label %bb.g, label %bb.aa

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !428 ; 6 uses
  %.val5.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !429 ; 5 uses
  %i.az = ptrtoint ptr %.val5.i.i.i.i to i64      ; 2 uses
  %i.ba = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = sdiv exact i64 %i.bb, 80                ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.bc, %indvars.iv.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ParamESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.be = sub nuw i64 %i.bd, %i.bc                ; 9 uses
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !326
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.az
  %i.bi = sdiv exact i64 %i.bh, 80                ; 2 uses
  %i.bj = sub nuw nsw i64 115292150460684697, %i.bc
  %i.bk = icmp ule i64 %i.bi, %i.bj
  call void @llvm.assume(i1 %i.bk)
  %.not23.i.i.i.i.i.i = icmp ult i64 %i.bi, %i.be
  br i1 %.not23.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.h
  %i.bl = sub i64 %indvars.iv.i.i.i, %i.bc
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.08.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.bm, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 7
  store i8 1, ptr %i.bn, align 1, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %i.bp = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 80 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !430

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.br = icmp ult i64 %i.bl, 3
  br i1 %i.br, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.08.i.i.i.i.i.i.i.i.i, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.bs, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 7
  store i8 1, ptr %i.bt, align 1, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.bw, align 1, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 87
  store i8 1, ptr %i.bx, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.ca, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 167
  store i8 1, ptr %i.cb, align 1, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.ce, align 1, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 247
  store i8 1, ptr %i.cf, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = add nsw i64 %.057.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 320 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !431

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.am, align 8, !tbaa !429
  %.val6.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !428
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ParamESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 range(i64 -115292150460684696, 115292154755651994) %i.be)
  %i.cj = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bc ; 2 uses
  %i.ck = mul nuw nsw i64 %i.cj, 80
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #16 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bb ; 3 uses
  %i.cn = sub i64 %indvars.iv.i.i.i, %i.bc
  %xtraiter7 = and i64 %i.be, 3                   ; 2 uses
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  br i1 %lcmp.mod8.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.prol:                  ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.prol = phi ptr [ %i.cs, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ %i.cm, %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 5 uses
  %.057.i.i.i30.i.i.i.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ %i.be, %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %prol.iter9 = phi i64 [ %prol.iter9.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.08.i.i.i29.i.i.i.i.i.i.prol, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.co, align 1, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 7
  store i8 1, ptr %i.cp, align 1, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  %i.cr = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.prol, i64 80 ; 2 uses
  %prol.iter9.next = add i64 %prol.iter9, 1       ; 2 uses
  %prol.iter9.cmp.not = icmp eq i64 %prol.iter9.next, %xtraiter7
  br i1 %prol.iter9.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.prol, !llvm.loop !432

.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.unr = phi ptr [ %i.cm, %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.cs, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.unr = phi i64 [ %i.be, %_ZNKSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol ]
  %i.ct = icmp ult i64 %i.cn, 3
  br i1 %i.ct, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i28.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i28.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.08.i.i.i29.i.i.i.i.i.i, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.cu, align 1, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 7
  store i8 1, ptr %i.cv, align 1, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.cy, align 1, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 87
  store i8 1, ptr %i.cz, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 160
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.db, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.dc, align 1, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 167
  store i8 1, ptr %i.dd, align 1, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 240
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.dg, align 1, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 247
  store i8 1, ptr %i.dh, align 1, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  %i.dj = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i, -4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i, i64 320
  %.not.i.i.i31.i.i.i.i.i.i.3 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i, !llvm.loop !431

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i:                       ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i34.i.i.i.i.i.i ], [ %i.cl, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i34.i.i.i.i.i.i ], [ %.val.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.03.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %.092.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !alias.scope !433
  %i.dl = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 80 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 80
  %.not.i.i.i35.i.i.i.i.i.i = icmp eq ptr %i.dl, %.val5.i.i.i.i
  br i1 %.not.i.i.i35.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i, !llvm.loop !437

_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i37.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ParamESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i
  %i.dn = load ptr, ptr %i.an, align 8, !tbaa !326
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.dp) #15
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ParamESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_15ParamESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIN12_GLOBAL__N_15ParamESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i
  store ptr %i.cl, ptr %3, align 8, !tbaa !428
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %i.cm, i64 %i.be
  store ptr %i.dq, ptr %i.am, align 8, !tbaa !429
  %i.dr = getelementptr inbounds nuw [80 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.dr, ptr %i.an, align 8, !tbaa !326
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ParamESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ParamESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ParamESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, %bb.g
  %.val6.i.i.i.i = phi ptr [ %i.cl, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15ParamESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15ParamEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.g ]
  %i.ds = getelementptr inbounds nuw [80 x i8], ptr %.val6.i.i.i.i, i64 %indvars.iv.i.i.i ; 15 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !46
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !438
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.dw = load ptr, ptr %0, align 8, !tbaa !46
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef zeroext i1 %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.69, i64 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.i) #14, !inline_history !439
  br i1 %i.dz, label %bb.j, label %_ZN4llvm4yaml2IO11mapRequiredIiEEvNS_9StringRefERT_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ParamESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @_ZN4llvm4yaml7yamlizeIiEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS3_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.ds, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %17)
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.eb = load ptr, ptr %0, align 8, !tbaa !46
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ea) #14, !inline_history !439
  br label %_ZN4llvm4yaml2IO11mapRequiredIiEEvNS_9StringRefERT_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredIiEEvNS_9StringRefERT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15ParamESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store i8 0, ptr %i.ao, align 1, !tbaa !125
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang15NullabilityKindENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS9_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.59, i64 11, ptr noundef nonnull align 1 dereferenceable(2) %i.ee, ptr noundef nonnull align 1 dereferenceable(2) %15, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  store i8 0, ptr %i.ap, align 4, !tbaa !339
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang9api_notes25RetainCountConventionKindENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKSA_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.61, i64 21, ptr noundef nonnull align 4 dereferenceable(8) %i.ef, ptr noundef nonnull align 4 dereferenceable(8) %13, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store i8 0, ptr %i.aq, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.70, i64 8, ptr noundef nonnull align 1 dereferenceable(2) %i.eg, ptr noundef nonnull align 1 dereferenceable(2) %11, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store i8 0, ptr %i.ar, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.71, i64 13, ptr noundef nonnull align 1 dereferenceable(2) %i.eh, ptr noundef nonnull align 1 dereferenceable(2) %9, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.ej = load ptr, ptr %0, align 8, !tbaa !46
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !440
  br i1 %i.em, label %bb.k, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredIiEEvNS_9StringRefERT_.exit.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZN4llvm4yaml2IO11mapRequiredIiEEvNS_9StringRefERT_.exit.i.i.i.i.i.i
  %i.en = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredIiEEvNS_9StringRefERT_.exit.i.i.i.i.i.i ], [ %.not.i.i.i.i.i.i.i.i.i.i, %bb.k ]
  %i.eo = load ptr, ptr %0, align 8, !tbaa !46
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call noundef zeroext i1 %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.72, i64 4, i1 noundef zeroext false, i1 noundef zeroext %i.en, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.g) #14, !inline_history !440
  br i1 %i.er, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.es = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.et = load ptr, ptr %0, align 8, !tbaa !46
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.es) #14, !inline_history !440
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i
  %i.ew = load i8, ptr %i.h, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.n, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  store ptr @.str.3, ptr %i.ei, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i8 1, ptr %i.f, align 1, !tbaa !51
  %i.ez = load ptr, ptr %0, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef zeroext i1 %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !441
  br i1 %i.fc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %.val22.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fd, align 8, !tbaa !442, !range !43, !noundef !40
  %i.fe = trunc nuw i8 %.val22.i.i.i.i.i.i.i.i.i to i1
  %i.ff = xor i1 %i.fe, true
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i
  %i.fg = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i ], [ %i.ff, %bb.o ]
  %i.fh = load ptr, ptr %0, align 8, !tbaa !46
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = call noundef zeroext i1 %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !441
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 56 ; 4 uses
  %.val.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !tbaa !442, !range !43
  %i.fl = trunc nuw i8 %.val.pre.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  br i1 %i.fk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.fl, label %.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN12_GLOBAL__N_117BoundsSafetyNotesEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8optionalIN12_GLOBAL__N_117BoundsSafetyNotesEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, i8 0, i64 16, i1 false)
  store ptr @.str.3, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !tbaa !442
  br label %.thread.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.fl, label %.thread.i.i.i.i.i.i.i.i.i, label %.thread10.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.r, %_ZNSt8optionalIN12_GLOBAL__N_117BoundsSafetyNotesEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i.i.i.i.i, %bb.q
  %i.fm = load ptr, ptr %0, align 8, !tbaa !46
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.73, i64 12, i1 noundef zeroext false, i1 noundef zeroext %i.fg, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #14, !inline_history !441
  br i1 %i.fp, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.fq = load ptr, ptr %0, align 8, !tbaa !46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call noundef zeroext i1 %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !441
  br i1 %i.ft, label %.critedge.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fu = call noundef ptr @_ZNK4llvm4yaml5Input14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(640) %0) #14 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_default_appendEm:bb.a
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !409
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #15
  br label %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !411
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !416
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !409
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm9StringRefEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_13TagESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %5 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %8 = alloca %"class.std::optional", align 1     ; 4 uses
  %9 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %11 = alloca %"class.std::optional.114", align 1 ; 4 uses
  %12 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %13 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  %14 = alloca %"class.std::optional", align 1    ; 4 uses
  %15 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %16 = alloca %"class.std::optional", align 1    ; 4 uses
  %17 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %18 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %19 = alloca %"class.std::optional", align 1    ; 4 uses
  %20 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %21 = alloca %"class.std::optional.186", align 4 ; 4 uses
  %22 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %23 = alloca %"class.std::optional.80", align 8 ; 6 uses
  %24 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %25 = alloca %"class.std::optional.80", align 8 ; 6 uses
  %26 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %27 = alloca %"class.std::optional.80", align 8 ; 6 uses
  %28 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %29 = alloca %"class.std::optional.80", align 8 ; 6 uses
  %30 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %31 = alloca %"class.std::optional.80", align 8 ; 6 uses
  %32 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %33 = alloca %"class.std::optional.80", align 8 ; 6 uses
  %34 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %35 = alloca %"class.std::optional.74", align 8 ; 4 uses
  %36 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %37 = alloca %"class.std::optional.74", align 8 ; 4 uses
  %38 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %39 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %40 = alloca %"class.std::optional", align 1    ; 4 uses
  %41 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %42 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca i8, align 1                       ; 3 uses
  %43 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  %i.y = load ptr, ptr %0, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #14
  br i1 %i.ab, label %bb.b, label %bb.cn

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %0, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !475
  %i.ag = load ptr, ptr %0, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !475
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %3, align 8, !tbaa !476
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val16.i = load ptr, ptr %i.ak, align 8, !tbaa !477
  %i.al = ptrtoint ptr %.val16.i to i64
  %i.am = ptrtoint ptr %.val.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 456
  %i.ap = trunc i64 %i.ao to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = phi i32 [ %i.ap, %bb.c ], [ %i.af, %bb.b ] ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_13TagESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %40, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 1
  %wide.trip.count = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.cm
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cm ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  %i.bp = load ptr, ptr %0, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = trunc nuw i64 %indvars.iv to i32
  %i.bt = call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.v) #14, !inline_history !475
  br i1 %i.bt, label %bb.f, label %bb.cm

bb.f:                                             ; preds = %bb.e
  %.val.i6 = load ptr, ptr %3, align 8, !tbaa !476 ; 6 uses
  %.val5.i = load ptr, ptr %i.ar, align 8, !tbaa !477 ; 5 uses
  %i.bu = ptrtoint ptr %.val5.i to i64            ; 2 uses
  %i.bv = ptrtoint ptr %.val.i6 to i64            ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = sdiv exact i64 %i.bw, 456               ; 7 uses
  %.not.i = icmp ugt i64 %i.bx, %indvars.iv
  br i1 %.not.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_13TagESaIS4_EEE7elementERNS0_2IOERS6_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = add nuw nsw i64 %indvars.iv, 1
  %i.bz = sub nuw nsw i64 %i.by, %i.bx            ; 9 uses
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !80
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bu
  %i.cd = sdiv exact i64 %i.cc, 456               ; 2 uses
  %i.ce = sub nuw nsw i64 20226693063278017, %i.bx
  %i.cf = icmp ule i64 %i.cd, %i.ce
  call void @llvm.assume(i1 %i.cf)
  %.not23.i.i.i = icmp ult i64 %i.cd, %i.bz
  br i1 %.not23.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.g
  %i.cg = sub i64 %indvars.iv, %i.bx
  %xtraiter = and i64 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.prol ], [ %.val5.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.08.i.i.i.i.i.i.prol, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.ch, align 8, !tbaa !478
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ci, i8 0, i64 72, i1 false)
  %i.cj = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 456 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !493

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %.val5.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cl = icmp ult i64 %i.cg, 3
  br i1 %i.cl, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.08.i.i.i.i.i.i, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.cm, align 8, !tbaa !478
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i8 0, i64 72, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 456
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.co, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.cp, align 8, !tbaa !478
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cq, i8 0, i64 72, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 912
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 1288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.cr, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.cs, align 8, !tbaa !478
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 1296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, i8 0, i64 72, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 1368
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 1744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.cu, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.cv, align 8, !tbaa !478
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 1752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cw, i8 0, i64 72, i1 false)
  %i.cx = add nsw i64 %.057.i.i.i.i.i.i, -4       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 1824 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !494

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.ar, align 8, !tbaa !477
  %.val6.pre.i = load ptr, ptr %3, align 8, !tbaa !476
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_13TagESaIS4_EEE7elementERNS0_2IOERS6_m.exit

_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 range(i64 -20226693063278016, 20226697358245314) %i.bz)
  %i.cz = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.bx ; 2 uses
  %i.da = mul nuw nsw i64 %i.cz, 456
  %i.db = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #16 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.bw ; 3 uses
  %i.dd = sub i64 %indvars.iv, %i.bx
  %xtraiter3 = and i64 %i.bz, 3                   ; 2 uses
  %lcmp.mod4.not = icmp eq i64 %xtraiter3, 0
  br i1 %lcmp.mod4.not, label %.lr.ph.i.i.i28.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.prol:                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i28.i.i.i.prol
  %.08.i.i.i29.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i28.i.i.i.prol ], [ %i.dc, %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %.057.i.i.i30.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i28.i.i.i.prol ], [ %i.bz, %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %prol.iter5 = phi i64 [ %prol.iter5.next, %.lr.ph.i.i.i28.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.prol, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.08.i.i.i29.i.i.i.prol, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.de, align 8, !tbaa !478
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.prol, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.df, i8 0, i64 72, i1 false)
  %i.dg = add nsw i64 %.057.i.i.i30.i.i.i.prol, -1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter5.next = add i64 %prol.iter5, 1       ; 2 uses
  %prol.iter5.cmp.not = icmp eq i64 %prol.iter5.next, %xtraiter3
  br i1 %prol.iter5.cmp.not, label %.lr.ph.i.i.i28.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.prol, !llvm.loop !495

.lr.ph.i.i.i28.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i28.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.08.i.i.i29.i.i.i.unr = phi ptr [ %i.dc, %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dh, %.lr.ph.i.i.i28.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.unr = phi i64 [ %i.bz, %_ZNKSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dg, %.lr.ph.i.i.i28.i.i.i.prol ]
  %i.di = icmp ult i64 %i.dd, 3
  br i1 %i.di, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i, label %.lr.ph.i.i.i28.i.i.i

.lr.ph.i.i.i28.i.i.i:                             ; preds = %.lr.ph.i.i.i28.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i
  %.08.i.i.i29.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i28.i.i.i ], [ %.08.i.i.i29.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i30.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i28.i.i.i ], [ %.057.i.i.i30.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.prol.loopexit ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.08.i.i.i29.i.i.i, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.dj, align 8, !tbaa !478
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, i8 0, i64 72, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 456
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.dl, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.dm, align 8, !tbaa !478
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i8 0, i64 72, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 912
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 1288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.do, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.dp, align 8, !tbaa !478
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 1296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i8 0, i64 72, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 1368
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 1744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.dr, i8 0, i64 384, i1 false)
  store i32 3, ptr %i.ds, align 8, !tbaa !478
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 1752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, i8 0, i64 72, i1 false)
  %i.du = add nsw i64 %.057.i.i.i30.i.i.i, -4     ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i, i64 1824
  %.not.i.i.i31.i.i.i.3 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i31.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i, label %.lr.ph.i.i.i28.i.i.i, !llvm.loop !494

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i, %.lr.ph.i.i.i28.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i = icmp eq ptr %.val.i6, %.val5.i
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_13TagESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i, label %.lr.ph.i.i.i34.i.i.i

.lr.ph.i.i.i34.i.i.i:                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_13TagES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.iv, %_ZSt19__relocate_object_aIN12_GLOBAL__N_13TagES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.db, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i ] ; 33 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.iu, %_ZSt19__relocate_object_aIN12_GLOBAL__N_13TagES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %.val.i6, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_13TagEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i ] ; 46 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(456) %.092.i.i.i.i.i.i, i64 112, i1 false), !alias.scope !501
  %i.dw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 112 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 112 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 144
  %i.dz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 144 ; 2 uses
  store i8 0, ptr %i.dz, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  %i.ea = load i8, ptr %i.dy, align 8, !tbaa !178, !range !43, !alias.scope !499, !noalias !496, !noundef !40
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.h, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i34.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 128 ; 3 uses
  store ptr %i.ec, ptr %i.dw, align 8, !tbaa !179, !alias.scope !496, !noalias !499
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !181, !alias.scope !499, !noalias !496 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 128 ; 5 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.eg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 120
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !183, !alias.scope !499, !noalias !496 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ec, ptr noundef nonnull align 8 dereferenceable(1) %i.ee, i64 %i.ej, i1 false), !alias.scope !501
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.ed, ptr %i.dw, align 8, !tbaa !181, !alias.scope !496, !noalias !499
  %i.ek = load i64, ptr %i.ee, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i64 %i.ek, ptr %i.ec, align 8, !tbaa !44, !alias.scope !496, !noalias !499
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 120
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.el = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.eh, %bb.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 120
  %i.en = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 120
  store i64 %i.el, ptr %i.en, align 8, !tbaa !183, !alias.scope !496, !noalias !499
  store ptr %i.ee, ptr %i.dx, align 8, !tbaa !181, !alias.scope !499, !noalias !496
  store i64 0, ptr %i.em, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  store i8 0, ptr %i.ee, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i8 1, ptr %i.dz, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.i.i.i.i.i.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 152 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 152 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 184
  %i.er = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 184 ; 2 uses
  store i8 0, ptr %i.er, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  %i.es = load i8, ptr %i.eq, align 8, !tbaa !178, !range !43, !alias.scope !499, !noalias !496, !noundef !40
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.j, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit14.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.i.i.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 168 ; 3 uses
  store ptr %i.eu, ptr %i.eo, align 8, !tbaa !179, !alias.scope !496, !noalias !499
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !181, !alias.scope !499, !noalias !496 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 168 ; 5 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ey = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 160
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !183, !alias.scope !499, !noalias !496 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  %i.fb = add nuw nsw i64 %i.ez, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eu, ptr noundef nonnull align 8 dereferenceable(1) %i.ew, i64 %i.fb, i1 false), !alias.scope !501
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i13.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i: ; preds = %bb.j
  store ptr %i.ev, ptr %i.eo, align 8, !tbaa !181, !alias.scope !496, !noalias !499
  %i.fc = load i64, ptr %i.ew, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i64 %i.fc, ptr %i.eu, align 8, !tbaa !44, !alias.scope !496, !noalias !499
  %.phi.trans.insert1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 160
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i.i, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i13.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i13.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, %bb.k
  %i.fd = phi i64 [ %.pre2.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i ], [ %i.ez, %bb.k ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 160
  %i.ff = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 160
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !183, !alias.scope !496, !noalias !499
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !181, !alias.scope !499, !noalias !496
  store i64 0, ptr %i.fe, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  store i8 0, ptr %i.ew, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i8 1, ptr %i.er, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit14.i.i.i.i.i.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit14.i.i.i.i.i.i.i.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i13.i.i.i.i.i.i.i.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.i.i.i.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 192 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 192 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 224
  %i.fj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 224 ; 2 uses
  store i8 0, ptr %i.fj, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  %i.fk = load i8, ptr %i.fi, align 8, !tbaa !178, !range !43, !alias.scope !499, !noalias !496, !noundef !40
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.l, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit17.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit14.i.i.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 208 ; 3 uses
  store ptr %i.fm, ptr %i.fg, align 8, !tbaa !179, !alias.scope !496, !noalias !499
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !181, !alias.scope !499, !noalias !496 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 208 ; 5 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.fq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 200
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !183, !alias.scope !499, !noalias !496 ; 3 uses
  %i.fs = icmp ult i64 %i.fr, 16
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nuw nsw i64 %i.fr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fm, ptr noundef nonnull align 8 dereferenceable(1) %i.fo, i64 %i.ft, i1 false), !alias.scope !501
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i: ; preds = %bb.l
  store ptr %i.fn, ptr %i.fg, align 8, !tbaa !181, !alias.scope !496, !noalias !499
  %i.fu = load i64, ptr %i.fo, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i64 %i.fu, ptr %i.fm, align 8, !tbaa !44, !alias.scope !496, !noalias !499
  %.phi.trans.insert3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 200
  %.pre4.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert3.i.i.i.i.i.i.i, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, %bb.m
  %i.fv = phi i64 [ %.pre4.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i ], [ %i.fr, %bb.m ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 200
  %i.fx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 200
  store i64 %i.fv, ptr %i.fx, align 8, !tbaa !183, !alias.scope !496, !noalias !499
  store ptr %i.fo, ptr %i.fh, align 8, !tbaa !181, !alias.scope !499, !noalias !496
  store i64 0, ptr %i.fw, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  store i8 0, ptr %i.fo, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i8 1, ptr %i.fj, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit17.i.i.i.i.i.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit17.i.i.i.i.i.i.i.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i16.i.i.i.i.i.i.i.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit14.i.i.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 232 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 232 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 264
  %i.gb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 264 ; 2 uses
  store i8 0, ptr %i.gb, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  %i.gc = load i8, ptr %i.ga, align 8, !tbaa !178, !range !43, !alias.scope !499, !noalias !496, !noundef !40
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.n, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit20.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit17.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 248 ; 3 uses
  store ptr %i.ge, ptr %i.fy, align 8, !tbaa !179, !alias.scope !496, !noalias !499
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !181, !alias.scope !499, !noalias !496 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 248 ; 5 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i18.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.gi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 240
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !183, !alias.scope !499, !noalias !496 ; 3 uses
  %i.gk = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gk)
  %i.gl = add nuw nsw i64 %i.gj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ge, ptr noundef nonnull align 8 dereferenceable(1) %i.gg, i64 %i.gl, i1 false), !alias.scope !501
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i19.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i18.i.i.i.i.i.i.i.i: ; preds = %bb.n
  store ptr %i.gf, ptr %i.fy, align 8, !tbaa !181, !alias.scope !496, !noalias !499
  %i.gm = load i64, ptr %i.gg, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i64 %i.gm, ptr %i.ge, align 8, !tbaa !44, !alias.scope !496, !noalias !499
  %.phi.trans.insert5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 240
  %.pre6.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i.i.i.i, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i19.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i19.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i18.i.i.i.i.i.i.i.i, %bb.o
  %i.gn = phi i64 [ %.pre6.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i18.i.i.i.i.i.i.i.i ], [ %i.gj, %bb.o ]
  %i.go = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 240
  %i.gp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 240
  store i64 %i.gn, ptr %i.gp, align 8, !tbaa !183, !alias.scope !496, !noalias !499
  store ptr %i.gg, ptr %i.fz, align 8, !tbaa !181, !alias.scope !499, !noalias !496
  store i64 0, ptr %i.go, align 8, !tbaa !183, !alias.scope !499, !noalias !496
  store i8 0, ptr %i.gg, align 8, !tbaa !44, !alias.scope !499, !noalias !496
  store i8 1, ptr %i.gb, align 8, !tbaa !178, !alias.scope !496, !noalias !499
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit20.i.i.i.i.i.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit20.i.i.i.i.i.i.i.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i19.i.i.i.i.i.i.i.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit17.i.i.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 272 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_13TagESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_:bb.a
  %i.ql = call noundef zeroext i1 %i.qk(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.122, i64 9, i1 noundef zeroext %i.qh) #14, !inline_history !513
  br i1 %i.ql, label %bb.bg, label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit17.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  store i32 2, ptr %i.mp, align 4, !tbaa !44
  br label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit17.i.i.i.i.i.i

_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit17.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %i.qm = load ptr, ptr %0, align 8, !tbaa !46
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = call noundef zeroext i1 %i.qo(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !513
  br i1 %i.qp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit17.i.i.i.i.i.i
  %i.qq = load i32, ptr %i.mp, align 4, !tbaa !44
  %i.qr = icmp eq i32 %i.qq, 3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit17.i.i.i.i.i.i
  %i.qs = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit17.i.i.i.i.i.i ], [ %i.qr, %bb.bh ]
  %i.qt = load ptr, ptr %0, align 8, !tbaa !46
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 168
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = call noundef zeroext i1 %i.qv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.123, i64 12, i1 noundef zeroext %i.qs) #14, !inline_history !513
  br i1 %i.qw, label %bb.bj, label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit18.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  store i32 3, ptr %i.mp, align 4, !tbaa !44
  br label %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit18.i.i.i.i.i.i

_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit18.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %i.qx = load ptr, ptr %0, align 8, !tbaa !46
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = call noundef zeroext i1 %i.qz(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !513
  br i1 %i.ra, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit18.i.i.i.i.i.i
  %i.rb = load i32, ptr %i.mp, align 4, !tbaa !44
  %i.rc = icmp eq i32 %i.rb, 3
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit18.i.i.i.i.i.i
  %i.rd = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEvRT_NS_9StringRefES5_.exit18.i.i.i.i.i.i ], [ %i.rc, %bb.bk ]
  %i.re = load ptr, ptr %0, align 8, !tbaa !46
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 168
  %i.rg = load ptr, ptr %i.rf, align 8
  %i.rh = call noundef zeroext i1 %i.rg(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.124, i64 12, i1 noundef zeroext %i.rd) #14, !inline_history !513
  br i1 %i.rh, label %bb.bm, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_124EnumConvenienceAliasKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  store i32 3, ptr %i.mp, align 4, !tbaa !44
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_124EnumConvenienceAliasKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_124EnumConvenienceAliasKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %i.ri = load ptr, ptr %0, align 8, !tbaa !46
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 184
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !512
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_124EnumConvenienceAliasKindEEENSt9enable_ifIXsr27has_ScalarEnumerationTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE.exit.i.i.i.i, %bb.ar
  %i.rl = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.rm = load ptr, ptr %0, align 8, !tbaa !46
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 128
  %i.ro = load ptr, ptr %i.rn, align 8
  call void %i.ro(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.rl) #14, !inline_history !510
  br label %_ZN4llvm4yaml2IO11mapOptionalISt8optionalIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEEvNS_9StringRefERT_.exit.i

bb.bo:                                            ; preds = %.thread.i.i.i.i
  %.pre.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !51, !range !43
  %i.rp = trunc nuw i8 %.pre.i.i.i.i to i1
  br i1 %i.rp, label %.thread9.i.i.i.i, label %_ZN4llvm4yaml2IO11mapOptionalISt8optionalIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEEvNS_9StringRefERT_.exit.i

.thread9.i.i.i.i:                                 ; preds = %bb.bo, %bb.an
  store i64 0, ptr %i.mp, align 4
  br label %_ZN4llvm4yaml2IO11mapOptionalISt8optionalIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEEvNS_9StringRefERT_.exit.i

_ZN4llvm4yaml2IO11mapOptionalISt8optionalIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEEvNS_9StringRefERT_.exit.i: ; preds = %.thread9.i.i.i.i, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  %i.rq = getelementptr inbounds nuw i8, ptr %i.jb, i64 372
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  store i8 0, ptr %i.bl, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.114, i64 13, ptr noundef nonnull align 1 dereferenceable(2) %i.rq, ptr noundef nonnull align 1 dereferenceable(2) %16, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %17), !inline_history !507
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.rr = getelementptr inbounds nuw i8, ptr %i.jb, i64 374
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store i8 0, ptr %i.bm, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.115, i64 14, ptr noundef nonnull align 1 dereferenceable(2) %i.rr, ptr noundef nonnull align 1 dereferenceable(2) %14, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %15), !inline_history !507
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.rs = getelementptr inbounds nuw i8, ptr %i.jb, i64 384
  call fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_18FunctionESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.53, i64 7, ptr noundef nonnull align 8 dereferenceable(24) %i.rs), !inline_history !507
  %i.rt = getelementptr inbounds nuw i8, ptr %i.jb, i64 408 ; 5 uses
  %i.ru = load ptr, ptr %0, align 8, !tbaa !46
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 56
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = call noundef zeroext i1 %i.rw(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !514
  br i1 %i.rx, label %bb.bp, label %.critedge.i.i.i

bb.bp:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt8optionalIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEEvNS_9StringRefERT_.exit.i
  %.val.i.i.i = load ptr, ptr %i.rt, align 8, !tbaa !502
  %i.ry = getelementptr inbounds nuw i8, ptr %i.jb, i64 416
  %.val7.i.i.i = load ptr, ptr %i.ry, align 8, !tbaa !502
  %i.rz = icmp eq ptr %.val.i.i.i, %.val7.i.i.i
  br i1 %i.rz, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_15FieldESaIS5_EEEEvNS_9StringRefERT_.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.bp, %_ZN4llvm4yaml2IO11mapOptionalISt8optionalIN12_GLOBAL__N_124EnumConvenienceAliasKindEEEEvNS_9StringRefERT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.sa = load ptr, ptr %0, align 8, !tbaa !46
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 120
  %i.sc = load ptr, ptr %i.sb, align 8
  %i.sd = call noundef zeroext i1 %i.sc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.116, i64 6, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.k) #14, !inline_history !515
  br i1 %i.sd, label %bb.bq, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_15FieldESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i.i

bb.bq:                                            ; preds = %.critedge.i.i.i
  %i.se = load ptr, ptr %0, align 8, !tbaa !46
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = call noundef i32 %i.sg(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !516
  %i.si = load ptr, ptr %0, align 8, !tbaa !46
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8
  %i.sl = call noundef zeroext i1 %i.sk(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !516
  br i1 %i.sl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.val.i.i.i.i.i = load ptr, ptr %i.rt, align 8, !tbaa !517
  %i.sm = getelementptr inbounds nuw i8, ptr %i.jb, i64 416
  %.val16.i.i.i.i.i = load ptr, ptr %i.sm, align 8, !tbaa !518
  %i.sn = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.so = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.sp = sub i64 %i.sn, %i.so
  %i.sq = sdiv exact i64 %i.sp, 96
  %i.sr = trunc i64 %i.sq to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ss = phi i32 [ %i.sr, %bb.br ], [ %i.sh, %bb.bq ] ; 2 uses
  %.not.i.i.i.i72.i = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i.i.i72.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_15FieldESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bs
  %i.st = getelementptr inbounds nuw i8, ptr %i.jb, i64 416 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.jb, i64 424 ; 3 uses
  %wide.trip.count.i.i.i.i.i = zext i32 %i.ss to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.ck, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.ck ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.sv = load ptr, ptr %0, align 8, !tbaa !46
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = trunc nuw i64 %indvars.iv.i.i.i.i.i to i32
  %i.sz = call noundef zeroext i1 %i.sx(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.sy, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #14, !inline_history !516
  br i1 %i.sz, label %bb.bu, label %bb.ck

bb.bu:                                            ; preds = %bb.bt
  %.val.i.i.i.i.i.i = load ptr, ptr %i.rt, align 8, !tbaa !517 ; 6 uses
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.st, align 8, !tbaa !518 ; 5 uses
  %i.ta = ptrtoint ptr %.val5.i.i.i.i.i.i to i64  ; 2 uses
  %i.tb = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.tc = sub i64 %i.ta, %i.tb                    ; 2 uses
  %i.td = sdiv exact i64 %i.tc, 96                ; 7 uses
  %.not.i.i.i.i.i.i7 = icmp ugt i64 %i.td, %indvars.iv.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i7, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15FieldESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.te = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1
  %i.tf = sub nuw i64 %i.te, %i.td                ; 9 uses
  %i.tg = load ptr, ptr %i.su, align 8, !tbaa !503
  %i.th = ptrtoint ptr %i.tg to i64
  %i.ti = sub i64 %i.th, %i.ta
  %i.tj = sdiv exact i64 %i.ti, 96                ; 2 uses
  %i.tk = sub nuw nsw i64 96076792050570581, %i.td
  %i.tl = icmp ule i64 %i.tj, %i.tk
  call void @llvm.assume(i1 %i.tl)
  %.not23.i.i.i.i.i.i.i.i = icmp ult i64 %i.tj, %i.tf
  br i1 %.not23.i.i.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.bv
  %i.tm = sub i64 %indvars.iv.i.i.i.i.i, %i.td
  %xtraiter6 = and i64 %i.tf, 7                   ; 2 uses
  %lcmp.mod7.not = icmp eq i64 %xtraiter6, 0
  br i1 %lcmp.mod7.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.tp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.to, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.tf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter8 = phi i64 [ %prol.iter8.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.tn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.prol, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.tn, align 8, !tbaa !519
  %i.to = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.prol, i64 96 ; 3 uses
  %prol.iter8.next = add i64 %prol.iter8, 1       ; 2 uses
  %prol.iter8.cmp.not = icmp eq i64 %prol.iter8.next, %xtraiter6
  br i1 %prol.iter8.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !521

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa2.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.tp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.tp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.tf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.to, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.tq = icmp ult i64 %i.tm, 7
  br i1 %i.tq, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.uh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ug, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.tr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.tr, align 8, !tbaa !519
  %i.ts = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 96
  %i.tt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ts, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.tt, align 8, !tbaa !519
  %i.tu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 192
  %i.tv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.tu, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.tv, align 8, !tbaa !519
  %i.tw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %i.tx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.tw, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.tx, align 8, !tbaa !519
  %i.ty = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 384
  %i.tz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ty, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.tz, align 8, !tbaa !519
  %i.ua = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 480
  %i.ub = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ua, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ub, align 8, !tbaa !519
  %i.uc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 576
  %i.ud = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.uc, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ud, align 8, !tbaa !519
  %i.ue = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 672
  %i.uf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ue, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.uf, align 8, !tbaa !519
  %i.ug = add nsw i64 %.057.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ug, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !522

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa2 = phi ptr [ %.lcssa2.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.uh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa2, ptr %i.st, align 8, !tbaa !518
  %.val6.pre.i.i.i.i.i.i = load ptr, ptr %i.rt, align 8, !tbaa !517
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15FieldESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bv
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.td, i64 range(i64 -96076792050570580, 96076796345537878) %i.tf)
  %i.ui = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.td ; 2 uses
  %i.uj = mul nuw nsw i64 %i.ui, 96
  %i.uk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uj) #16, !inline_history !507 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.tc ; 3 uses
  %i.um = sub i64 %indvars.iv.i.i.i.i.i, %i.td
  %xtraiter9 = and i64 %i.tf, 7                   ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0
  br i1 %lcmp.mod10.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol:              ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.up, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol ], [ %i.ul, %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.057.i.i.i30.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.uo, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol ], [ %i.tf, %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i ]
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i ]
  %i.un = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.prol, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i29.i.i.i.i.i.i.i.i.prol, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.un, align 8, !tbaa !519
  %i.uo = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i.prol, i64 96 ; 2 uses
  %prol.iter11.next = add i64 %prol.iter11, 1     ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9
  br i1 %prol.iter11.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol, !llvm.loop !523

.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ul, %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i ], [ %i.up, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.tf, %_ZNKSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i ], [ %i.uo, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol ]
  %i.uq = icmp ult i64 %i.um, 7
  br i1 %i.uq, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i.i = phi ptr [ %i.vh, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i30.i.i.i.i.i.i.i.i = phi i64 [ %i.vg, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ur = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.08.i.i.i29.i.i.i.i.i.i.i.i, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ur, align 8, !tbaa !519
  %i.us = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 96
  %i.ut = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.us, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ut, align 8, !tbaa !519
  %i.uu = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 192
  %i.uv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.uu, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.uv, align 8, !tbaa !519
  %i.uw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 288
  %i.ux = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.uw, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.ux, align 8, !tbaa !519
  %i.uy = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 384
  %i.uz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.uy, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.uz, align 8, !tbaa !519
  %i.va = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 480
  %i.vb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.va, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.vb, align 8, !tbaa !519
  %i.vc = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 576
  %i.vd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.vc, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.vd, align 8, !tbaa !519
  %i.ve = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 672
  %i.vf = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ve, i8 0, i64 96, i1 false)
  store i32 3, ptr %i.vf, align 8, !tbaa !519
  %i.vg = add nsw i64 %.057.i.i.i30.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.i, i64 768
  %.not.i.i.i31.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.vg, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i, !llvm.loop !522

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i.i.i:                   ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vj, %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i ], [ %i.uk, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vi, %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.03.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %.092.i.i.i.i.i.i.i.i.i.i.i, i64 96, i1 false), !alias.scope !524
  %i.vi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i, i64 96
  %.not.i.i.i35.i.i.i.i.i.i.i.i = icmp eq ptr %i.vi, %.val5.i.i.i.i.i.i
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i, !llvm.loop !528

_ZNSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i37.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_15FieldESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i
  %i.vk = load ptr, ptr %i.su, align 8, !tbaa !503
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = sub i64 %i.vl, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.vm) #15, !inline_history !507
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_15FieldESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_15FieldESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bw, %_ZNSt6vectorIN12_GLOBAL__N_15FieldESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i.i
  store ptr %i.uk, ptr %i.rt, align 8, !tbaa !517
  %i.vn = getelementptr inbounds nuw [96 x i8], ptr %i.ul, i64 %i.tf
  store ptr %i.vn, ptr %i.st, align 8, !tbaa !518
  %i.vo = getelementptr inbounds nuw [96 x i8], ptr %i.uk, i64 %i.ui
  store ptr %i.vo, ptr %i.su, align 8, !tbaa !503
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15FieldESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15FieldESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_15FieldESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i, %bb.bu
  %.val6.i.i.i.i.i.i = phi ptr [ %i.uk, %_ZNSt12_Vector_baseIN12_GLOBAL__N_15FieldESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_15FieldEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %bb.bu ]
  %i.vp = getelementptr inbounds nuw [96 x i8], ptr %.val6.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i ; 14 uses
  %i.vq = load ptr, ptr %0, align 8, !tbaa !46
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 104
  %i.vs = load ptr, ptr %i.vr, align 8
  call void %i.vs(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !529
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.vt = load ptr, ptr %0, align 8, !tbaa !46
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 120
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = call noundef zeroext i1 %i.vv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str, i64 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.g) #14, !inline_history !530
  br i1 %i.vw, label %bb.bx, label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15FieldESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(92) %i.vp, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %13), !inline_history !507
  %i.vx = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.vy = load ptr, ptr %0, align 8, !tbaa !46
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 128
  %i.wa = load ptr, ptr %i.vz, align 8
  call void %i.wa(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.vx) #14, !inline_history !530
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bx, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_15FieldESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store i8 0, ptr %i.bn, align 1, !tbaa !125
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIN5clang15NullabilityKindENS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS9_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.59, i64 11, ptr noundef nonnull align 1 dereferenceable(2) %i.wb, ptr noundef nonnull align 1 dereferenceable(2) %11, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %12), !inline_history !507
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  call fastcc void @_ZN4llvm4yaml2IO11mapOptionalIN12_GLOBAL__N_115APIAvailabilityES4_EEvNS_9StringRefERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.1, i64 12, ptr noundef nonnull align 4 dereferenceable(4) %i.wc, i32 0), !inline_history !507
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vp, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.we = load ptr, ptr %0, align 8, !tbaa !46
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = call noundef zeroext i1 %i.wg(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !531
  br i1 %i.wh, label %bb.by, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.by:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.by, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i
  %i.wi = phi i1 [ false, %_ZN4llvm4yaml2IO11mapRequiredINS_9StringRefEEEvS3_RT_.exit.i.i.i.i.i.i.i.i ], [ %.not.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by ]
  %i.wj = load ptr, ptr %0, align 8, !tbaa !46
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 120
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = call noundef zeroext i1 %i.wl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.2, i64 15, i1 noundef zeroext false, i1 noundef zeroext %i.wi, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #14, !inline_history !531
  br i1 %i.wm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %10), !inline_history !507
  %i.wn = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.wo = load ptr, ptr %0, align 8, !tbaa !46
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 128
  %i.wq = load ptr, ptr %i.wp, align 8
  call void %i.wq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.wn) #14, !inline_history !531
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.wr = load i8, ptr %i.f, align 1, !tbaa !51, !range !43, !noundef !40
  %i.ws = trunc nuw i8 %i.wr to i1
  br i1 %i.ws, label %bb.cb, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  store ptr @.str.3, ptr %i.wd, align 8, !tbaa !21
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  store i64 0, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store i8 0, ptr %i.bo, align 1, !tbaa !8
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultIbNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.46, i64 12, ptr noundef nonnull align 1 dereferenceable(2) %i.wt, ptr noundef nonnull align 1 dereferenceable(2) %8, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %9), !inline_history !507
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vp, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.wv = load ptr, ptr %0, align 8, !tbaa !46
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8
  %i.wy = call noundef zeroext i1 %i.wx(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !531
  br i1 %i.wy, label %bb.cc, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i18.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 64
  %.sroa.24.0.copyload.i.i.i19.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i18.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i23.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i19.i.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i.i: ; preds = %bb.cc, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i.i
  %i.wz = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit.i.i.i.i.i.i.i.i ], [ %.not.i.i.i.i23.i.i.i.i.i.i.i.i, %bb.cc ]
  %i.xa = load ptr, ptr %0, align 8, !tbaa !46
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 120
  %i.xc = load ptr, ptr %i.xb, align 8
  %i.xd = call noundef zeroext i1 %i.xc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.47, i64 9, i1 noundef zeroext false, i1 noundef zeroext %i.wz, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #14, !inline_history !531
  br i1 %i.xd, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_9StringRefEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.wu, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %7), !inline_history !507
  %i.xe = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.xf = load ptr, ptr %0, align 8, !tbaa !46
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 128
  %i.xh = load ptr, ptr %i.xg, align 8
  call void %i.xh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.xe) #14, !inline_history !531
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i16.i.i.i.i.i.i.i.i
  %i.xi = load i8, ptr %i.d, align 1, !tbaa !51, !range !43, !noundef !40
  %i.xj = trunc nuw i8 %i.xi to i1
  br i1 %i.xj, label %bb.cf, label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  store ptr @.str.3, ptr %i.wu, align 8, !tbaa !21
  %.sroa.540.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 64
  store i64 0, ptr %.sroa.540.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.xk = getelementptr inbounds nuw i8, ptr %i.vp, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.xl = load ptr, ptr %0, align 8, !tbaa !46
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = call noundef zeroext i1 %i.xn(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !531
  br i1 %i.xo, label %bb.cg, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i.i
  %.sroa.24.0..sroa_idx.i.i.i28.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 80
  %.sroa.24.0.copyload.i.i.i29.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i28.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  %.not.i.i.i.i33.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload.i.i.i29.i.i.i.i.i.i.i.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i26.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i.i
  %i.xp = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_9StringRefES3_EEvS3_RT_RKT0_.exit25.i.i.i.i.i.i.i.i ], [ %.not.i.i.i.i33.i.i.i.i.i.i.i.i, %bb.cg ]
  %i.xq = load ptr, ptr %0, align 8, !tbaa !46
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 120
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = call noundef zeroext i1 %i.xs(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.72, i64 4, i1 noundef zeroext false, i1 noundef zeroext %i.xp, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14, !inline_history !531
  br i1 %i.xt, label %bb.ch, label %bb.ci
end_hunk_8
