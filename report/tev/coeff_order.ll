Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/coeff_order?download=true
inline.NumInlined: 396
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3jxl17DecodePermutationEP22JxlMemoryManagerStructmmPjPNS_9BitReaderE:bb.a
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !41
  br label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.h
  %i.at = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.ai, %bb.h ] ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ay) #18
  br label %_ZN3jxl7ANSCodeD2Ev.exit

_ZN3jxl7ANSCodeD2Ev.exit:                         ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(168) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.az = load ptr, ptr %5, align 8, !tbaa !56    ; 4 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3jxl7ANSCodeD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bf) #18
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl7ANSCodeD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %.sroa.012.2
}

declare i32 @_ZN3jxl16DecodeHistogramsEP22JxlMemoryManagerStructPNS_9BitReaderEmPNS_7ANSCodeEPNSt3__16vectorIhNS6_9allocatorIhEEEEb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN3jxl15ANSSymbolReader6CreateEPKNS_7ANSCodeEPNS_9BitReaderEm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr") align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_115ReadPermutationEmmPjPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS6_9allocatorIhEEEE(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef nonnull %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %"class.std::__1::vector.22", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::vector.22", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread, label %bb.b

_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %_ZN3jxl17CoeffOrderContextEj.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.c, label %bb.c, label %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  unreachable

_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit:    ; preds = %bb.b
  %i.d = shl nuw i64 %1, 2                        ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #20 ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.i = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35

bb.d:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  unreachable

_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit
  %i.j = shl nuw i64 %1, 3                        ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #20 ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 %i.j
  store ptr %i.l, ptr %i.h, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !59
  %i.m = trunc i64 %1 to i32                      ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN3jxl17CoeffOrderContextEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.m, i1 true) ; 3 uses
  %i.p = xor i32 %i.o, 31
  %.neg.i.i = ashr exact i32 -2147483648, %i.o
  %i.q = add i32 %.neg.i.i, %i.m
  %i.r = lshr i32 %i.q, %i.p
  %reass.sub = sub i32 %i.r, %i.o
  %i.s = add i32 %reass.sub, 32
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 7)
  %i.u = zext nneg i32 %i.t to i64
  br label %_ZN3jxl17CoeffOrderContextEj.exit

_ZN3jxl17CoeffOrderContextEj.exit:                ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35, %bb.e
  %i.v = phi ptr [ %i.f, %bb.e ], [ %i.f, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35 ], [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread ]
  %.pr = phi ptr [ %i.k, %bb.e ], [ %i.k, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35 ], [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread ] ; 8 uses
  %i.w = phi ptr [ %i.e, %bb.e ], [ %i.e, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35 ], [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread ] ; 5 uses
  %i.x = phi ptr [ %i.g, %bb.e ], [ %i.g, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35 ], [ %i.a, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread ]
  %i.y = phi ptr [ %i.h, %bb.e ], [ %i.h, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35 ], [ %i.b, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread ]
  %.0.i = phi i64 [ %i.u, %bb.e ], [ 0, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i35 ], [ 0, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit36.thread ]
  %i.z = load ptr, ptr %5, align 8, !tbaa !56, !noalias !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !60, !noalias !88
  %i.ac = zext i8 %i.ab to i64
  %i.ad = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %4, i64 noundef %i.ac, ptr noundef %3) #17
  %i.ae = add i64 %i.ad, %0
  %i.af = and i64 %i.ae, 4294967295               ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.af, %1
  br i1 %i.ag, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit, label %.preheader

.preheader:                                       ; preds = %_ZN3jxl17CoeffOrderContextEj.exit
  %.not3355 = icmp ult i64 %0, %i.af
  br i1 %.not3355, label %.lr.ph, label %.critedge

bb.f:                                             ; preds = %_ZN3jxl17CoeffOrderContextEj.exit40
  %i.ah = add i64 %.02956, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.af
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !76

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.02857 = phi i32 [ %i.av, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.02956 = phi i64 [ %i.ah, %bb.f ], [ %0, %.preheader ] ; 3 uses
  %i.ai = icmp eq i32 %.02857, 0
  br i1 %i.ai, label %_ZN3jxl17CoeffOrderContextEj.exit40, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.02857, i1 true) ; 3 uses
  %i.ak = xor i32 %i.aj, 31
  %.neg.i.i37 = ashr exact i32 -2147483648, %i.aj
  %i.al = add i32 %.neg.i.i37, %.02857
  %i.am = lshr i32 %i.al, %i.ak
  %reass.sub58 = sub i32 %i.am, %i.aj
  %i.an = add i32 %reass.sub58, 32
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 7)
  %i.ap = zext nneg i32 %i.ao to i64
  br label %_ZN3jxl17CoeffOrderContextEj.exit40

_ZN3jxl17CoeffOrderContextEj.exit40:              ; preds = %.lr.ph, %bb.g
  %.0.i39 = phi i64 [ %i.ap, %bb.g ], [ 0, %.lr.ph ]
  %i.aq = load ptr, ptr %5, align 8, !tbaa !56, !noalias !89
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i39
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !60, !noalias !89
  %i.at = zext i8 %i.as to i64
  %i.au = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %4, i64 noundef %i.at, ptr noundef %3) #17 ; 2 uses
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.02956
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !59
  %i.ax = and i64 %i.au, 4294967295
  %i.ay = sub nuw nsw i64 %1, %.02956
  %.not = icmp ugt i64 %i.ay, %i.ax
  br i1 %.not, label %bb.f, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit

.critedge:                                        ; preds = %bb.f, %.preheader
  %i.az = icmp eq ptr %2, null
  br i1 %i.az, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  br i1 %.not.i, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.bb = xor i64 %i.ba, 63
  %i.bc = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %i.bd = icmp samesign ult i64 %i.bc, 2
  %i.be = sub nuw nsw i64 64, %i.ba
  %.0.i.i = select i1 %i.bd, i64 %i.bb, i64 %i.be ; 3 uses
  %i.bf = shl nuw i64 1, %.0.i.i                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.bf, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %8 = trunc <4 x i64> %vec.ind to <4 x i32>      ; 2 uses
  %9 = add <4 x i32> %8, splat (i32 1)
  %10 = trunc <4 x i64> %vec.ind to <4 x i32>     ; 2 uses
  %i.bg = add <4 x i32> %10, splat (i32 5)
  %11 = xor <4 x i32> %8, splat (i32 -1)
  %i.bh = sub <4 x i32> splat (i32 -5), %10
  %i.bi = and <4 x i32> %9, %11
  %i.bj = and <4 x i32> %i.bg, %i.bh
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> %i.bi, ptr %i.bk, align 4, !tbaa !59, !alias.scope !91, !noalias !93
  store <4 x i32> %i.bj, ptr %i.bl, align 4, !tbaa !59, !alias.scope !91, !noalias !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %.preheader.i.preheader, label %vector.body, !llvm.loop !83

scalar.ph:                                        ; preds = %bb.i, %scalar.ph
  %.06386.i = phi i64 [ %i.bn, %scalar.ph ], [ 0, %bb.i ] ; 2 uses
  %i.bn = add nuw i64 %.06386.i, 1                ; 3 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = and i32 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %.06386.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !59, !alias.scope !91, !noalias !93
  %exitcond.not.i = icmp eq i64 %i.bn, %i.bf
  br i1 %exitcond.not.i, label %.preheader.i.preheader, label %scalar.ph, !llvm.loop !84

.preheader.i.preheader:                           ; preds = %vector.body, %scalar.ph
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.06293.i = phi i64 [ %i.cq, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.06293.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59, !alias.scope !90, !noalias !94 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add i64 %.06293.i, %i.bu
  %i.bw = icmp ult i64 %i.bv, %1
  br i1 %i.bw, label %bb.j, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit.thread

bb.j:                                             ; preds = %.preheader.i
  %i.bx = add i32 %i.bt, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.090.i = phi i64 [ 0, %bb.j ], [ %i.cf, %bb.l ] ; 2 uses
  %.05289.i = phi i64 [ 0, %bb.j ], [ %spec.select72.i, %bb.l ] ; 2 uses
  %.05388.i = phi i64 [ %i.bf, %bb.j ], [ %i.bz, %bb.l ] ; 2 uses
  %.05587.i = phi i32 [ %i.bx, %bb.j ], [ %spec.select.i, %bb.l ] ; 2 uses
  %i.by = add i64 %.05388.i, %.05289.i            ; 3 uses
  %.not69.not.i = icmp eq i64 %i.by, 0
  br i1 %.not69.not.i, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = lshr i64 %.05388.i, 1
  %i.ca = getelementptr [4 x i8], ptr %.pr, i64 %i.by
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59, !alias.scope !91, !noalias !93 ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %.05587.i           ; 2 uses
  %i.ce = select i1 %i.cd, i32 %i.cc, i32 0
  %spec.select.i = sub nuw i32 %.05587.i, %i.ce
  %spec.select72.i = select i1 %i.cd, i64 %i.by, i64 %.05289.i ; 3 uses
  %i.cf = add nuw nsw i64 %.090.i, 1
  %exitcond95.not.i = icmp eq i64 %.090.i, %.0.i.i
  br i1 %exitcond95.not.i, label %bb.m, label %bb.k, !llvm.loop !85

bb.m:                                             ; preds = %bb.l
  %i.cg = trunc i64 %spec.select72.i to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.06293.i
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !59, !alias.scope !92, !noalias !95
  %i.ci = add i64 %spec.select72.i, 1             ; 2 uses
  %.not7091.i = icmp ugt i64 %i.ci, %i.bf
  br i1 %.not7091.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.492.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ci, %bb.m ] ; 4 uses
  %i.cj = getelementptr [4 x i8], ptr %.pr, i64 %.492.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4     ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !59, !alias.scope !91, !noalias !93
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !59, !alias.scope !91, !noalias !93
  %i.cn = sub i64 0, %.492.i
  %i.co = and i64 %.492.i, %i.cn
  %i.cp = add i64 %i.co, %.492.i                  ; 2 uses
  %.not70.i = icmp ugt i64 %i.cp, %i.bf
  br i1 %.not70.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %i.cq = add nuw i64 %.06293.i, 1                ; 2 uses
  %exitcond96.not.i = icmp eq i64 %i.cq, %1
  br i1 %exitcond96.not.i, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit.thread, label %.preheader.i, !llvm.loop !87

_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit: ; preds = %_ZN3jxl17CoeffOrderContextEj.exit40, %.critedge, %_ZN3jxl17CoeffOrderContextEj.exit, %bb.h
  %.sroa.045.0 = phi i32 [ 1, %bb.h ], [ 1, %_ZN3jxl17CoeffOrderContextEj.exit ], [ 0, %.critedge ], [ 1, %_ZN3jxl17CoeffOrderContextEj.exit40 ] ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, label %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit.thread

_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit.thread: ; preds = %.preheader.i, %._crit_edge.i, %bb.k, %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit
  %.sroa.045.073 = phi i32 [ %.sroa.045.0, %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit ], [ 1, %bb.k ], [ 0, %._crit_edge.i ], [ 1, %.preheader.i ]
  store ptr %.pr, ptr %i.x, align 8, !tbaa !66
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %.pr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cu) #18
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit, %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit.thread
  %.sroa.045.074 = phi i32 [ %.sroa.045.0, %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit ], [ %.sroa.045.073, %_ZN3jxl16DecodeLehmerCodeIjEENS_6StatusEPKjPjmPT_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.not.i.i42 = icmp eq ptr %i.w, null
  br i1 %.not.i.i42, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit43, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit
  %i.cv = ptrtoint ptr %i.v to i64
  %i.cw = ptrtoint ptr %i.w to i64
  %i.cx = sub i64 %i.cv, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cx) #18
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit43

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit43: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i32 %.sroa.045.074
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl17DecodeCoeffOrdersEP22JxlMemoryManagerStructtjPjPNS_9BitReaderE(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nofree noundef captures(address) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %"class.std::__1::vector", align 8  ; 10 uses
  %6 = alloca %"struct.jxl::ANSCode", align 8     ; 17 uses
  %7 = alloca %"class.jxl::ANSSymbolReader", align 8 ; 14 uses
  %8 = alloca %"class.std::__1::vector.22", align 8 ; 14 uses
  %9 = alloca %"class.jxl::StatusOr", align 8     ; 8 uses
  %10 = alloca %"class.jxl::ANSSymbolReader", align 8 ; 6 uses
  %11 = alloca %"class.jxl::AcStrategy", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, i8 0, i64 96, i1 false)
  call void @_ZN3jxl10LZ77ParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 0, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  store i32 1245184, ptr %i.c, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 0, ptr %i.e, align 4, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.g, i8 0, i64 52, i1 false)
  store <4 x i32> <i32 1048576, i32 4, i32 16, i32 2>, ptr %i.h, align 4, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(488) %i.i, i8 0, i64 488, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.j = zext i16 %1 to i32                       ; 2 uses
  %.not = icmp ne i16 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %.preheader108

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @_ZN3jxl16DecodeHistogramsEP22JxlMemoryManagerStructPNS_9BitReaderEmPNS_7ANSCodeEPNSt3__16vectorIhNS6_9allocatorIhEEEEb(ptr noundef %0, ptr noundef %4, i64 noundef 8, ptr noundef nonnull %6, ptr noundef nonnull %5, i1 noundef zeroext false) #16 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN3jxl15ANSSymbolReader6CreateEPKNS_7ANSCodeEPNS_9BitReaderEm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %9, ptr noundef nonnull %6, ptr noundef %4, i64 noundef 0) #16
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 608 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(604) %10, ptr noundef nonnull align 8 dereferenceable(612) %9, i64 44, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(532) %i.r, ptr noundef nonnull align 8 dereferenceable(532) %i.s, i64 532, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(604) %7, ptr noundef nonnull align 8 dereferenceable(604) %10, i64 44, i1 false)
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #16 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(532) %i.u, ptr noundef nonnull align 8 dereferenceable(532) %i.r, i64 532, i1 false)
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %.pr = load i32, ptr %i.m, align 8, !tbaa !34
  %i.v = icmp eq i32 %.pr, 0
  br i1 %i.v, label %bb.e, label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #16
  br label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit.thread

_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit.thread: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.preheader108

_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.x

.preheader108:                                    ; preds = %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit.thread, %bb.a
  %.161.1 = and i32 %2, 3
  %i.w = lshr i32 %2, 1
  %i.x = and i32 %i.w, 2
  %i.y = insertelement <8 x i32> poison, i32 %2, i64 0
  %i.z = shufflevector <8 x i32> %i.y, <8 x i32> poison, <8 x i32> zeroinitializer
end_hunk_0
