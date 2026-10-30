Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensIndexPCalculator?download=true
inline.NumInlined: 533
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5Ipopt16IndexPCalculator14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !20
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(280) %i.d) #18, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit, %bb.i
  ret i1 true

bb.j:                                             ; preds = %bb.f, %._crit_edge.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %4, align 8, !tbaa !109   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ax
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.j
  %i.cf = load i64, ptr %i.ax, align 8, !tbaa !150
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ch = load ptr, ptr %3, align 8, !tbaa !109   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.au
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.cj = load i64, ptr %i.au, align 8, !tbaa !150
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.not.i.i.i.i21, label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit43.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !20
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !20
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit43.thread

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(20) %i.q) #18, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit43.thread

_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit43.thread: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !20
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !20
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit45

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit43.thread
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(280) %i.d) #18, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit45

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit45: ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit43.thread, %bb.m
  resume { ptr, i32 } %i.cc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt16IndexPCalculator8ComputePEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple", align 8        ; 4 uses
  %2 = alloca %"class.std::tuple.73", align 1     ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.Ipopt::SmartPtr.40", align 8 ; 10 uses
  %4 = alloca %"class.Ipopt::SmartPtr.40", align 8 ; 9 uses
  %5 = alloca %"class.Ipopt::SmartPtr.40", align 8 ; 4 uses
  %6 = alloca %"class.Ipopt::SmartPtr.20", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23, !noalias !173 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt11PCalculator6data_AEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20, !noalias !173
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !20, !noalias !173
  br label %_ZNK5Ipopt11PCalculator6data_AEv.exit

_ZNK5Ipopt11PCalculator6data_AEv.exit:            ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5Ipopt9SchurDataE, ptr nonnull @_ZTIN5Ipopt14IndexSchurDataE, i64 0) #18
  %i.h = invoke noundef ptr @_ZNK5Ipopt14IndexSchurData13GetColIndicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %_ZNK5Ipopt11PCalculator6data_AEv.exit
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !20
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(20) %i.c) #18, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit

bb.e:                                             ; preds = %_ZNK5Ipopt11PCalculator6data_AEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !20
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(20) %i.c) #18, !inline_history !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58, !noalias !174 ; 9 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i49, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !20, !noalias !174
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !20, !noalias !174
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.h, %bb.g
  invoke void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.40") align 8 %3, ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !20
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(280) %i.aa) #18, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.al = load ptr, ptr %3, align 8, !tbaa !176
  invoke void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.40") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280) %i.al, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !111 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !111 ; 2 uses
  %.not153 = icmp eq ptr %i.am, %i.ao
  br i1 %.not153, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.u

._crit_edge160.loopexit:                          ; preds = %bb.bh
  %7 = icmp eq ptr %.sroa.0110.3, null
  br label %._crit_edge160

._crit_edge160:                                   ; preds = %._crit_edge160.loopexit, %bb.k
  %.sroa.0110.0.lcssa = phi i1 [ true, %bb.k ], [ %7, %._crit_edge160.loopexit ]
  %.sroa.0110.0.lcssa.a = phi ptr [ null, %bb.k ], [ %.sroa.0110.3, %._crit_edge160.loopexit ] ; 3 uses
  %.029.lcssa = phi i1 [ true, %bb.k ], [ %.130, %._crit_edge160.loopexit ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !176   ; 4 uses
  %.not.i.i51 = icmp eq ptr %i.au, null
  br i1 %.not.i.i51, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge160
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !20
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !20
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(280) %i.au) #18, !inline_history !157
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit: ; preds = %._crit_edge160, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bc = load ptr, ptr %3, align 8, !tbaa !176   ; 4 uses
  %.not.i.i52 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i52, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit53, label %bb.n

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !20
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !20
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit53

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(280) %i.bc) #18, !inline_history !157
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit53

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit53: ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.sroa.0110.0.lcssa, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit53
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0110.0.lcssa.a, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !20
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !20
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %.sroa.0110.0.lcssa.a, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0110.0.lcssa.a) #18, !inline_history !158
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit:  ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit53, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.029.lcssa

bb.r:                                             ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !20
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56.thread

bb.s:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(280) %i.aa) #18, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56.thread

bb.t:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit88

bb.u:                                             ; preds = %.lr.ph159, %bb.bh
  %i.ca = phi ptr [ %i.ao, %.lr.ph159 ], [ %i.jb, %bb.bh ]
  %.015157 = phi i32 [ 0, %.lr.ph159 ], [ %i.jc, %bb.bh ] ; 2 uses
  %.029156 = phi i1 [ true, %.lr.ph159 ], [ %.130, %bb.bh ]
  %.sroa.0110.0155 = phi ptr [ null, %.lr.ph159 ], [ %.sroa.0110.3, %bb.bh ] ; 8 uses
  %.sroa.0103.0154 = phi ptr [ %i.am, %.lr.ph159 ], [ %i.jd, %bb.bh ] ; 2 uses
  %i.cb = load i32, ptr %.sroa.0103.0154, align 4, !tbaa !112 ; 3 uses
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !112
  %i.cc = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cc, %bb.u ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ar, %bb.u ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !112
  %i.cf = icmp slt i32 %i.ce, %i.cb               ; 2 uses
  %.19.i.i.i = select i1 %i.cf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.cf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN5Ipopt8SmartPtrINS2_7PColumnEEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt8_Rb_treeIiSt4pairIKiN5Ipopt8SmartPtrINS2_7PColumnEEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cg = icmp eq ptr %.19.i.i.i, %i.ar
  br i1 %i.cg, label %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit

_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN5Ipopt8SmartPtrINS2_7PColumnEEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !112
  %i.cj = icmp slt i32 %i.cb, %i.ci
  br i1 %i.cj, label %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %bb.bh

_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN5Ipopt8SmartPtrINS2_7PColumnEEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.u, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !23, !noalias !177 ; 10 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i57, label %_ZNK5Ipopt11PCalculator6data_AEv.exit58, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !20, !noalias !177
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !20, !noalias !177
  br label %_ZNK5Ipopt11PCalculator6data_AEv.exit58

_ZNK5Ipopt11PCalculator6data_AEv.exit58:          ; preds = %bb.v, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %i.co = load ptr, ptr %3, align 8, !tbaa !176
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(20) %i.ck, i32 noundef %.015157, ptr noundef nonnull align 8 dereferenceable(280) %i.co)
          to label %bb.w unwind label %bb.aj

bb.w:                                             ; preds = %_ZNK5Ipopt11PCalculator6data_AEv.exit58
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !20
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !20
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.x, label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit60

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %i.ck, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(20) %i.ck) #18, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit60

_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit60:   ; preds = %bb.w, %bb.x
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !18, !noalias !178 ; 10 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i61, label %_ZNK5Ipopt11PCalculator6SolverEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit60
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !20, !noalias !178
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !20, !noalias !178
  br label %_ZNK5Ipopt11PCalculator6SolverEv.exit

_ZNK5Ipopt11PCalculator6SolverEv.exit:            ; preds = %bb.y, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit60
  %i.dd = load ptr, ptr %4, align 8, !tbaa !176   ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i62, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK5Ipopt11PCalculator6SolverEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !20
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK5Ipopt11PCalculator6SolverEv.exit
  store ptr %i.dd, ptr %5, align 8, !tbaa !176
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.dh = load ptr, ptr %3, align 8, !tbaa !176, !noalias !179 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i63, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !20, !noalias !179
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !20, !noalias !179
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.dh, ptr %6, align 8, !tbaa !58, !alias.scope !179
  %i.dl = load ptr, ptr %i.cz, align 8, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(49) %i.cz, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load ptr, ptr %6, align 8, !tbaa !58    ; 4 uses
  %.not.i.i64 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i64, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit65, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !20
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !20
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.af, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit65

bb.af:                                            ; preds = %bb.ae
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(280) %i.dp) #18, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit65

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit65: ; preds = %bb.ad, %bb.ae, %bb.af
  %i.dx = load ptr, ptr %5, align 8, !tbaa !176   ; 4 uses
  %.not.i.i66 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i66, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit67, label %bb.ag

bb.ag:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit65
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !20
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !20
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ah, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit67

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(280) %i.dx) #18, !inline_history !157
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit67

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit67: ; preds = %bb.ah, %bb.ag, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit65
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Ipopt16IndexPCalculator8ComputePEv:bb.a
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70

.loopexit.split-lp:                               ; preds = %._crit_edge, %_ZN5Ipopt8SmartPtrINS_14SensBacksolverEED2Ev.exit, %.critedge.i
  %.sroa.0110.2.ph = phi ptr [ %.sroa.0110.1.lcssa, %._crit_edge ], [ %.sroa.0110.1.lcssa, %.critedge.i ], [ %.sroa.0110.0155, %_ZN5Ipopt8SmartPtrINS_14SensBacksolverEED2Ev.exit ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70

.lr.ph:                                           ; preds = %.preheader, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %.preheader ] ; 3 uses
  %i.gf = phi ptr [ %i.hx, %bb.ay ], [ %i.es, %.preheader ] ; 2 uses
  %.016151 = phi i32 [ %i.hw, %bb.ay ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0110.1150 = phi ptr [ %i.gv, %bb.ay ], [ %.sroa.0110.0155, %.preheader ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 208
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !94, !noalias !180
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !97, !noalias !180 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i77, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, label %bb.ar

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i:    ; preds = %.lr.ph
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 232
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !98, !noalias !180
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !100, !noalias !180 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i78, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i
  %.0.i3.i = phi ptr [ %i.gn, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ], [ %i.gj, %.lr.ph ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !20, !noalias !180
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 8, !tbaa !20, !noalias !180
  %i.gr = call ptr @__dynamic_cast(ptr nonnull %.0.i3.i, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #18 ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i80, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !20
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 8, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %bb.as, %bb.ar
  %i.gv = phi ptr [ null, %bb.ar ], [ %i.gr, %bb.as ], [ null, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ] ; 5 uses
  %.0.i4.i121124 = phi ptr [ %.0.i3.i, %bb.ar ], [ %.0.i3.i, %bb.as ], [ null, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ] ; 3 uses
  %i.gw = phi i1 [ false, %bb.ar ], [ false, %bb.as ], [ true, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ]
  %.not.i.i.i81 = icmp eq ptr %.sroa.0110.1150, null
  br i1 %.not.i.i.i81, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEEaSEPS2_.exit, label %bb.at

bb.at:                                            ; preds = %.thread
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0110.1150, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !20
  %i.gz = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !20
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.au, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEEaSEPS2_.exit

bb.au:                                            ; preds = %bb.at
  %i.hb = load ptr, ptr %.sroa.0110.1150, align 8, !tbaa !25
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0110.1150) #18, !inline_history !169
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEEaSEPS2_.exit: ; preds = %bb.au, %bb.at, %.thread
  br i1 %i.gw, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEEaSEPS2_.exit
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i4.i121124, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !20
  %i.hg = add nsw i32 %i.hf, -1                   ; 2 uses
  store i32 %i.hg, ptr %i.he, align 8, !tbaa !20
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hi = load ptr, ptr %.0.i4.i121124, align 8, !tbaa !25
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i121124) #18, !inline_history !2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEEaSEPS2_.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 216
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !183
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 56 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !102
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !103
  %i.hr = sext i32 %.016151 to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.hr
  invoke void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.hq, ptr noundef %i.hm, i32 noundef 1, ptr noundef nonnull %i.hs, i32 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !102
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !103
  %i.hw = add nsw i32 %i.hv, %.016151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hx = load ptr, ptr %4, align 8, !tbaa !176   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 256
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !85
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !93
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next, %i.ic
  br i1 %i.id, label %.lr.ph, label %._crit_edge, !llvm.loop !170

bb.az:                                            ; preds = %._crit_edge
  invoke void @_ZN5Ipopt7PColumnC1EPd(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull %i.er)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.ie = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba
  %i.if = load i32, ptr %i.a, align 4, !tbaa !112 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ie, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.bb ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.bb ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !112
  %i.ii = icmp slt i32 %i.ih, %i.if               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ii, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ii, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i84, label %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, label %bb.bb, !llvm.loop !5

_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.bb
  %i.ij = icmp eq ptr %.19.i.i.i.i, %i.ar
  br i1 %i.ij, label %.critedge.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !112
  %i.im = icmp slt i32 %i.if, %i.il
  br i1 %i.im, label %.critedge.i, label %bb.bd

.critedge.i:                                      ; preds = %bb.bc, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, %bb.ba
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.bc ], [ %.19.i.i.i.i, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ %i.ar, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %i.a, ptr %1, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.in = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiN5Ipopt8SmartPtrINS2_7PColumnEEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc, %bb.bc
  %.sroa.06.0.i = phi ptr [ %i.in, %.noexc ], [ %.19.i.i.i.i, %bb.bc ]
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !20
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 8, !tbaa !20
  %i.is = load ptr, ptr %i.io, align 8, !tbaa !117 ; 4 uses
  %.not.i.i.i86 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i86, label %_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !20
  %i.iv = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !20
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.bf, label %_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit

bb.bf:                                            ; preds = %bb.be
  %i.ix = load ptr, ptr %i.is, align 8, !tbaa !25
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(24) %i.is) #18, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit:     ; preds = %bb.bd, %bb.be, %bb.bf
  store ptr %i.ey, ptr %i.io, align 8, !tbaa !117
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !111
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 24) #20
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70

bb.bh:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.jb = phi ptr [ %.pre, %_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit ], [ %i.ca, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ] ; 2 uses
  %.sroa.0110.3 = phi ptr [ %.sroa.0110.1.lcssa, %_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit ], [ %.sroa.0110.0155, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ] ; 3 uses
  %.130 = phi i1 [ %i.do, %_ZN5Ipopt8SmartPtrINS_7PColumnEEaSEPS1_.exit ], [ %.029156, %_ZNSt3mapIiN5Ipopt8SmartPtrINS0_7PColumnEEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ] ; 2 uses
  %i.jc = add nuw nsw i32 %.015157, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0103.0154, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.jd, %i.jb
  br i1 %.not, label %._crit_edge160.loopexit, label %bb.u, !llvm.loop !172

_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70:   ; preds = %.loopexit, %.loopexit.split-lp, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit74, %bb.aq, %bb.aj, %bb.ak, %bb.bg
  %.sroa.0110.4 = phi ptr [ %.sroa.0110.0155, %bb.aj ], [ %.sroa.0110.1.lcssa, %bb.bg ], [ %.sroa.0110.0155, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit74 ], [ %.sroa.0110.0155, %bb.aq ], [ %.sroa.0110.0155, %bb.ak ], [ %i.gv, %.loopexit ], [ %.sroa.0110.2.ph, %.loopexit.split-lp ] ; 3 uses
  %.pn41.pn = phi { ptr, i32 } [ %i.ez, %bb.aj ], [ %i.ja, %bb.bg ], [ %i.fh, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit74 ], [ %i.fh, %bb.aq ], [ %i.ez, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.je = load ptr, ptr %4, align 8, !tbaa !176   ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.je, null
  br i1 %.not.i.i87, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit88, label %bb.bi

bb.bi:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !20
  %i.jh = add nsw i32 %i.jg, -1                   ; 2 uses
  store i32 %i.jh, ptr %i.jf, align 8, !tbaa !20
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.bj, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit88

bb.bj:                                            ; preds = %bb.bi
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !25
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(280) %i.je) #18, !inline_history !157
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit88

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit88: ; preds = %bb.bj, %bb.bi, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70, %bb.t
  %.sroa.0110.5 = phi ptr [ null, %bb.t ], [ %.sroa.0110.4, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70 ], [ %.sroa.0110.4, %bb.bi ], [ %.sroa.0110.4, %bb.bj ] ; 4 uses
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %.pn41.pn, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit70 ], [ %.pn41.pn, %bb.bi ], [ %.pn41.pn, %bb.bj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.jm = load ptr, ptr %3, align 8, !tbaa !176   ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i89, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56, label %bb.bk

bb.bk:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit88
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !20
  %i.jp = add nsw i32 %i.jo, -1                   ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 8, !tbaa !20
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bl, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56

bb.bl:                                            ; preds = %bb.bk
  %i.jr = load ptr, ptr %i.jm, align 8, !tbaa !25
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(280) %i.jm) #18, !inline_history !157
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56.thread: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit92

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56: ; preds = %bb.bl, %bb.bk, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not.i.i91 = icmp eq ptr %.sroa.0110.5, null
  br i1 %.not.i.i91, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit92, label %bb.bm

bb.bm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0110.5, i64 8 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !20
  %i.jw = add nsw i32 %i.jv, -1                   ; 2 uses
  store i32 %i.jw, ptr %i.ju, align 8, !tbaa !20
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.bn, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit92

bb.bn:                                            ; preds = %bb.bm
  %i.jy = load ptr, ptr %.sroa.0110.5, align 8, !tbaa !25
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0110.5) #18, !inline_history !158
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit92

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit92: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56.thread, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56, %bb.bm, %bb.bn
  %.pn41.pn.pn.pn128 = phi { ptr, i32 } [ %i.br, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56.thread ], [ %.pn41.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit56 ], [ %.pn41.pn.pn, %bb.bm ], [ %.pn41.pn.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit:     ; preds = %bb.d, %bb.c, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit92
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn128, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit92 ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %.pn41.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZNK5Ipopt14IndexSchurData13GetColIndicesEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.40") align 8, ptr noundef nonnull align 8 dereferenceable(280), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt16IndexPCalculator14GetSchurMatrixERKNS_8SmartPtrIKNS_9SchurDataEEERNS1_INS_6MatrixEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.73", align 1     ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !208    ; 3 uses
  %.not161 = icmp eq ptr %i.a, null
  br i1 %.not161, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23, !noalias !209 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !27
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20, !noalias !209
  %i.h = load ptr, ptr %1, align 8, !tbaa !27
  %i.i = icmp eq ptr %i.h, %i.c                   ; 2 uses
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %.split, label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit

.split:                                           ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(20) %i.c) #18, !inline_history !3
  br i1 %i.i, label %bb.d, label %bb.t

_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit:     ; preds = %bb.c
  br i1 %i.i, label %bb.d, label %bb.t

bb.d:                                             ; preds = %.split, %.thread, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 7 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(20) %i.o)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Ipopt19DenseSymMatrixSpaceC1Ei(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i32 noundef %i.s)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !20
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !20
  %i.w = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #21
          to label %bb.g unwind label %bb.o       ; 11 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.w, ptr noundef nonnull %i.n)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 8 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !20
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.w)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i8 1, ptr %i.aa, align 8, !tbaa !217
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !20
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.x, align 8, !tbaa !20
  %i.af = load ptr, ptr %2, align 8, !tbaa !208   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !20
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(69) %i.af) #18, !inline_history !188
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  store ptr %i.w, ptr %2, align 8, !tbaa !208
  %i.an = load i32, ptr %i.x, align 8, !tbaa !20
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
end_hunk_1
