Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV8Decompressor?download=true
inline.NumInlined: 650
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_:bb.a
  br label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit: ; preds = %bb.j, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %i.p = phi ptr [ null, %bb.j ], [ %i.bd, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 5 uses
  %i.q = phi ptr [ null, %bb.j ], [ %i.be, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 11 uses
  %i.r = icmp samesign ult i64 %indvars.iv, %i.o
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2, !tbaa !42   ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !42   ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43   ; 3 uses
  %i.y = and i32 %i.x, 65535                      ; 2 uses
  %i.z = lshr i32 %i.x, 16                        ; 2 uses
  %.sroa.447.0.insert.ext = zext i16 %i.v to i64
  %.sroa.447.0.insert.shift = shl nuw nsw i64 %.sroa.447.0.insert.ext, 32
  %.sroa.046.0.insert.ext = zext i16 %i.t to i64
  %.sroa.046.0.insert.insert = or disjoint i64 %.sroa.447.0.insert.shift, %.sroa.046.0.insert.ext ; 2 uses
  %.sroa.050.sroa.8.0.insert.ext = zext nneg i32 %i.z to i64
  %.sroa.050.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.050.sroa.8.0.insert.ext, 32
  %.sroa.050.sroa.0.0.insert.ext = zext nneg i32 %i.y to i64
  %.sroa.050.sroa.0.0.insert.insert = or disjoint i64 %.sroa.050.sroa.8.0.insert.shift, %.sroa.050.sroa.0.0.insert.ext ; 2 uses
  %.sroa.9.8.extract.trunc55 = zext i16 %i.t to i32
  %i.aa = add nuw nsw i32 %i.y, %.sroa.9.8.extract.trunc55
  %.sroa.9.12.extract.trunc60 = zext i16 %i.v to i32
  %i.ab = add nuw nsw i32 %i.z, %.sroa.9.12.extract.trunc60
  %.not.i8.i = icmp samesign ule i32 %i.aa, %.sroa.093.0.extract.trunc
  %i.ac = icmp samesign ule i32 %i.ab, %.sroa.599.0.extract.trunc
  %i.ad = select i1 %.not.i8.i, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.k, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke: ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit, %bb.m, %bb.l, %bb.k
  %i.ae = phi ptr [ @.str.11, %bb.m ], [ @.str.10, %bb.l ], [ @.str.9, %bb.k ], [ @.str.8, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit ]
  store ptr %i.q, ptr %0, align 8
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ae, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_) #14
          to label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.cont unwind label %.loopexit.split-lp

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.cont: ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %0, align 8
  br label %bb.w

.loopexit.split-lp:                               ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.k:                                             ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit
  %i.af = icmp ne i16 %i.t, 0
  %i.ag = icmp ne i16 %i.v, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.l, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

bb.l:                                             ; preds = %bb.k
  %i.ai = and i32 %i.x, 65537
  %or.cond105 = icmp eq i32 %i.ai, 0
  br i1 %or.cond105, label %bb.m, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

bb.m:                                             ; preds = %bb.l
  %i.aj = and i16 %i.t, 1
  %.not31 = icmp eq i16 %i.aj, 0
  %i.ak = and i16 %i.v, 1
  %.not32 = icmp eq i16 %i.ak, 0
  %or.cond106 = select i1 %.not31, i1 %.not32, i1 false
  br i1 %or.cond106, label %bb.n, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.p, %i.al
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.050.sroa.0.0.insert.insert, ptr %i.p, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.046.0.insert.insert, ptr %.sroa.9.0..sroa_idx, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.am, ptr %i.m, align 8, !tbaa !47
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.an = ptrtoint ptr %i.p to i64
  %i.ao = ptrtoint ptr %i.q to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775792
  br i1 %i.aq, label %bb.q, label %_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  store ptr %i.q, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.ar = ashr exact i64 %i.ap, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 576460752303423487)
  %i.av = select i1 %i.at, i64 576460752303423487, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #24
          to label %.noexc38 unwind label %.loopexit ; 5 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %.sroa.050.sroa.0.0.insert.insert, ptr %i.ay, align 4
  %.sroa.9.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.046.0.insert.insert, ptr %.sroa.9.0..sroa_idx52, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.noexc38 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.q, %.noexc38 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !48, !alias.scope !49
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !53

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc38
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc38 ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ap) #26
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.bb, ptr %i.m, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !44
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o
  %i.bd = phi ptr [ %i.bb, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.am, %bb.o ] ; 2 uses
  %i.be = phi ptr [ %i.ax, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.q, %bb.o ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %bb.s, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit, !llvm.loop !54

bb.s:                                             ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  store ptr %i.be, ptr %0, align 8
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 4                 ; 2 uses
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bk)
  %.sroa.041.0.copyload.i = load i64, ptr %i.be, align 4
  %i.bl = icmp eq i64 %.sroa.041.0.copyload.i, 0
  br i1 %i.bl, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i, label %.invoke

.invoke:                                          ; preds = %.critedge.i.i, %bb.u, %._crit_edge.i, %bb.s
  %i.bm = phi ptr [ @.str.25, %._crit_edge.i ], [ @.str.22, %bb.s ], [ @.str.24, %.critedge.i.i ], [ @.str.23, %bb.u ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.bm, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_116isValidImageGridENS_8iPoint2DENS_10Array1DRefIKNS_12iRectangle2DEEE) #14
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i: ; preds = %bb.s
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.11.8.extract.trunc.i = trunc i64 %.sroa.11.0.copyload.i to i32 ; 4 uses
  %.sroa.11.12.extract.shift.i = lshr i64 %.sroa.11.0.copyload.i, 32 ; 2 uses
  %.sroa.11.12.extract.trunc.i = trunc nuw nsw i64 %.sroa.11.12.extract.shift.i to i32 ; 2 uses
  %.not.i8.i.i = icmp samesign ule i32 %.sroa.11.8.extract.trunc.i, %.sroa.093.0.extract.trunc
  %i.bn = icmp sle i32 %.sroa.11.12.extract.trunc.i, %.sroa.599.0.extract.trunc
  tail call void @llvm.assume(i1 %.not.i8.i.i)
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp sgt i32 %.sroa.11.8.extract.trunc.i, 0
  %i.bp = icmp ne i64 %.sroa.11.12.extract.shift.i, 0
  tail call void @llvm.assume(i1 %i.bo)
  tail call void @llvm.assume(i1 %i.bp)
  %.not115.i = icmp eq i32 %i.bj, 1
  br i1 %.not115.i, label %._crit_edge.i, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i: ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i
  %i.bq = and i64 %i.bi, 2147483647
  br label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i

._crit_edge.i:                                    ; preds = %bb.v, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i
  %.sroa.11.12.extract.trunc57.pre-phi.i = phi i32 [ %.sroa.11.12.extract.trunc.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.7.12.extract.trunc.i, %bb.v ]
  %.sroa.11.8.extract.trunc51.pre-phi.i = phi i32 [ %.sroa.11.8.extract.trunc.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.7.8.extract.trunc.i, %bb.v ]
  %.sroa.041.sroa.9.0.lcssa.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.414.0.extract.trunc.i13.i, %bb.v ]
  %.sroa.041.sroa.0.0.lcssa.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.013.0.extract.trunc.i11.i, %bb.v ]
  %i.br = add nsw i32 %.sroa.041.sroa.0.0.lcssa.i, %.sroa.11.8.extract.trunc51.pre-phi.i
  %i.bs = add nsw i32 %.sroa.041.sroa.9.0.lcssa.i, %.sroa.11.12.extract.trunc57.pre-phi.i
  %i.bt = icmp eq i32 %i.br, %.sroa.093.0.extract.trunc
  %i.bu = icmp eq i32 %i.bs, %.sroa.599.0.extract.trunc
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %_ZN8rawspeed12_GLOBAL__N_116isValidImageGridENS_8iPoint2DENS_10Array1DRefIKNS_12iRectangle2DEEE.exit, label %.invoke

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i: ; preds = %bb.v, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %.sroa.088.0119.i = phi i32 [ %.sroa.11.8.extract.trunc.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.088.1.i, %bb.v ] ; 2 uses
  %.sroa.11.0118.i = phi i64 [ %.sroa.11.0.copyload.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.7.0.copyload.i, %bb.v ] ; 2 uses
  %.sroa.041.sroa.0.0117.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.013.0.extract.trunc.i11.i, %bb.v ]
  %.sroa.041.sroa.9.0116.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.414.0.extract.trunc.i13.i, %bb.v ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %.sroa.023.0.copyload.i = load i64, ptr %i.bw, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.013.0.extract.trunc.i11.i = trunc i64 %.sroa.023.0.copyload.i to i32 ; 5 uses
  %.sroa.414.0.extract.shift.i12.i = lshr i64 %.sroa.023.0.copyload.i, 32 ; 2 uses
  %.sroa.414.0.extract.trunc.i13.i = trunc nuw nsw i64 %.sroa.414.0.extract.shift.i12.i to i32 ; 4 uses
  %7 = and i64 %.sroa.023.0.copyload.i, -9223372034707292160
  %8 = icmp eq i64 %7, 0
  tail call void @llvm.assume(i1 %8)
  %.sroa.7.8.extract.trunc.i = trunc i64 %.sroa.7.0.copyload.i to i32 ; 4 uses
  %i.bx = add nuw nsw i32 %.sroa.7.8.extract.trunc.i, %.sroa.013.0.extract.trunc.i11.i
  %.sroa.7.12.extract.shift.i = lshr i64 %.sroa.7.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32 ; 2 uses
  %i.by = add nsw i32 %.sroa.7.12.extract.trunc.i, %.sroa.414.0.extract.trunc.i13.i ; 2 uses
  %.not.i8.i19.i = icmp sle i32 %i.bx, %.sroa.093.0.extract.trunc
  %i.bz = icmp sle i32 %i.by, %.sroa.599.0.extract.trunc
  tail call void @llvm.assume(i1 %.not.i8.i19.i)
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp sgt i32 %.sroa.7.8.extract.trunc.i, 0
  %i.cb = icmp ne i64 %.sroa.7.12.extract.shift.i, 0
  tail call void @llvm.assume(i1 %i.ca)
  tail call void @llvm.assume(i1 %i.cb)
  %.sroa.041.sroa.9.0.insert.ext.i = zext i32 %.sroa.041.sroa.9.0116.i to i64
  %.sroa.9.8.extract.shift.i.i = lshr i64 %.sroa.11.0118.i, 32
  %.sroa.9.8.extract.trunc.i.i = trunc nuw i64 %.sroa.9.8.extract.shift.i.i to i32
  %i.cc = trunc i64 %.sroa.11.0118.i to i32
  %.sroa.017.0.extract.trunc.i.i = add i32 %.sroa.041.sroa.0.0117.i, %i.cc
  %i.cd = icmp eq i32 %.sroa.017.0.extract.trunc.i.i, %.sroa.013.0.extract.trunc.i11.i
  %i.ce = icmp eq i64 %.sroa.414.0.extract.shift.i12.i, %.sroa.041.sroa.9.0.insert.ext.i
  %i.cf = and i1 %i.cd, %i.ce
  %i.cg = add nsw i32 %.sroa.041.sroa.9.0116.i, %.sroa.9.8.extract.trunc.i.i ; 2 uses
  %i.ch = icmp eq i32 %i.cg, %i.by
  %or.cond.i = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %or.cond.i, label %bb.t, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i
  %i.ci = icmp eq i32 %.sroa.013.0.extract.trunc.i11.i, 0
  %i.cj = icmp eq i32 %i.cg, %.sroa.414.0.extract.trunc.i13.i
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %bb.u, label %.invoke

bb.t:                                             ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i
  %i.cl = add nuw nsw i32 %.sroa.088.0119.i, %.sroa.7.8.extract.trunc.i
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.i
  %.not5.i = icmp eq i32 %.sroa.088.0119.i, %.sroa.093.0.extract.trunc
  br i1 %.not5.i, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.088.1.i = phi i32 [ %i.cl, %bb.t ], [ 0, %bb.u ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i39 = icmp eq i64 %indvars.iv.next.i, %i.bq
  br i1 %.not.i39, label %._crit_edge.i, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i, !llvm.loop !55

.thread:                                          ; preds = %.invoke
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZN8rawspeed12_GLOBAL__N_116isValidImageGridENS_8iPoint2DENS_10Array1DRefIKNS_12iRectangle2DEEE.exit: ; preds = %._crit_edge.i
  ret void

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.pn.pn.pn.pn.pn148 = phi { ptr, i32 } [ %i.cm, %.thread ], [ %.pn.pn.pn.pn.pn, %bb.w ]
  %i.cn = phi ptr [ %i.be, %.thread ], [ %i.q, %bb.w ] ; 2 uses
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #26
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit: ; preds = %bb.w, %bb.x
  %.pn.pn.pn.pn.pn149 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.w ], [ %.pn.pn.pn.pn.pn148, %bb.x ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn149
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV8DecompressorC2ENS_8RawImageENS0_18DecompressorParamsE(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 80)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef readonly byval(%"struct.rawspeed::PanasonicV8Decompressor::DecompressorParams") align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !59
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !59
  store ptr null, ptr %1, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !63
  %i.e = load ptr, ptr %0, align 8, !tbaa !60     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.g = load i32, ptr %i.f, align 8, !tbaa !69
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.b, label %.invoke

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 553
  %i.i = load i8, ptr %i.h, align 1, !tbaa !139
  %.not17 = icmp eq i8 %i.i, 0
  br i1 %.not17, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 596
  %i.k = load i32, ptr %i.j, align 4, !tbaa !140
  %.not18 = icmp eq i32 %i.k, 2
  br i1 %.not18, label %bb.e, label %.invoke

bb.d:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = load <2 x i32>, ptr %i.m, align 8
  %i.o = load <2 x i32>, ptr %i.d, align 8
  %i.p = icmp eq <2 x i32> %i.n, %i.o             ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.f, label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.e
  %i.t = phi ptr [ @.str.13, %bb.e ], [ @.str.12, %bb.c ], [ @.str.12, %bb.b ], [ @.str.12, %bb.a ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.t, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8DecompressorC2ENS_8RawImageENS0_18DecompressorParamsE) #14
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.06.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !67 ; 4 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !43 ; 2 uses
  %i.v = icmp sgt i32 %.sroa.27.0.copyload, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw i32 %.sroa.27.0.copyload, 1
  %.idx.i.i = zext i32 %i.w to i64
  %i.x = add nsw i64 %.idx.i.i, -2                ; 5 uses
  %i.y = lshr exact i64 %i.x, 1
  %i.z = add nuw i64 %i.y, 1                      ; 4 uses
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter = and i64 %i.z, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1", %.new
  %.sroa.05.010.i.i.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.insert.insert.i.i.i.i.1, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1" ] ; 2 uses
  %.09.i.i.i = phi ptr [ %.sroa.06.0.copyload, %.new ], [ %i.aw, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1" ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1" ]
  %.0.val.i.i.i = load i8, ptr %.09.i.i.i, align 1, !tbaa !32 ; 3 uses
  %i.ab = getelementptr i8, ptr %.09.i.i.i, i64 1
  %.0.val7.i.i.i = load i8, ptr %i.ab, align 1    ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.05.010.i.i.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.010.i.i.i, 32 ; 2 uses
  %i.ac = icmp eq i8 %.0.val.i.i.i, 7
  %i.ad = icmp eq i8 %.0.val7.i.i.i, 0
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.af = zext i8 %.0.val.i.i.i to i32
  %i.ag = icmp ne i8 %.0.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = zext i8 %.0.val7.i.i.i to i32
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i.i to i1
  %.sroa.speculated.i.i.i.i.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i.i.i, i32 range(i32 1, 511) %i.ai)
  %i.ak = select i1 %i.aj, i32 %.sroa.speculated.i.i.i.i.i, i32 %i.ai
  br label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i"

"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i": ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.4.0.i.i.i.i = phi i64 [ %.sroa.4.0.extract.shift.i.i.i.i, %.lr.ph.i.i.i ], [ 1, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %bb.g ] ; 2 uses
  %.sroa.4.0.insert.shift.i.i.i.i = and i64 %.sroa.4.0.i.i.i.i, 255
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %.0.val.i.i.i.1 = load i8, ptr %i.al, align 1, !tbaa !32 ; 3 uses
  %i.am = getelementptr i8, ptr %.09.i.i.i, i64 3
  %.0.val7.i.i.i.1 = load i8, ptr %i.am, align 1  ; 2 uses
  %i.an = icmp eq i8 %.0.val.i.i.i.1, 7
  %i.ao = icmp eq i8 %.0.val7.i.i.i.1, 0
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1", label %bb.h

bb.h:                                             ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i"
  %i.aq = zext i8 %.0.val.i.i.i.1 to i32
  %i.ar = icmp ne i8 %.0.val.i.i.i.1, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = zext i8 %.0.val7.i.i.i.1 to i32
  %i.at = add nuw nsw i32 %i.as, %i.aq            ; 2 uses
  %i.au = trunc i64 %.sroa.4.0.i.i.i.i to i1
  %.sroa.speculated.i.i.i.i.i.1 = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.i.i.i.i, i32 range(i32 1, 511) %i.at)
  %i.av = select i1 %i.au, i32 %.sroa.speculated.i.i.i.i.i.1, i32 %i.at
  br label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1"

"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1": ; preds = %bb.h, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i"
  %.sroa.4.0.i.i.i.i.1 = phi i64 [ %.sroa.4.0.insert.shift.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i" ], [ 1, %bb.h ]
  %.sroa.0.0.i.i.i.i.1 = phi i32 [ %.sroa.0.0.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i" ], [ %i.av, %bb.h ] ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i.i.1 = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.1, 32
  %.sroa.0.0.insert.ext.i.i.i.i.1 = zext i32 %.sroa.0.0.i.i.i.i.1 to i64
  %.sroa.0.0.insert.insert.i.i.i.i.1 = or disjoint i64 %.sroa.4.0.insert.ext.i.i.i.i.1, %.sroa.0.0.insert.ext.i.i.i.i.1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !141

.unr-lcssa:                                       ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1"
  %i.ax = and i64 %i.x, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.epil.preheader, label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.epil"

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.unr-lcssa, %bb.f
  %.sroa.05.010.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.insert.insert.i.i.i.i.1, %.unr-lcssa ] ; 2 uses
  %.09.i.i.i.epil.init = phi ptr [ %.sroa.06.0.copyload, %bb.f ], [ %i.aw, %.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i64 %i.z to i1
end_hunk_0
