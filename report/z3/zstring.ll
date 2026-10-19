Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/zstring?download=true
inline.NumInlined: 258
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK7zstringplERKS_:bb.a
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !14
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i, label %scalar.ph26, !llvm.loop !58

_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i:     ; preds = %.noexc9, %._crit_edge.i.i.i.i.i
  %.pre2.i.i.i.i = phi i32 [ %i.bf, %._crit_edge.i.i.i.i.i ], [ %.pre2.pre.i.i.i.i, %.noexc9 ]
  store ptr %i.be, ptr %0, align 8, !tbaa !17
  store i32 %i.bb, ptr %i.c, align 4, !tbaa !19
  br label %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i.i

_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i.i:  ; preds = %.lr.ph.i.i.i, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i
  %.pre.i.i.i.i812 = phi ptr [ %i.be, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i ], [ %.pre.i.i.i.i8, %.lr.ph.i.i.i ] ; 2 uses
  %i.cf = phi i32 [ %.pre2.i.i.i.i, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i ]
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i812, i64 %i.cg
  %i.ci = load i32, ptr %.sroa.04.09.i.i.i, align 4, !tbaa !14
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !14
  %i.cj = load i32, ptr %i.b, align 8, !tbaa !18
  %i.ck = add i32 %i.cj, 1                        ; 2 uses
  store i32 %i.ck, ptr %i.b, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 4 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ax
  br i1 %i.cm, label %_ZN6bufferIjLb1ELj16EE6appendERKS0_.exit, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #16
  resume { ptr, i32 } %i.cn

_ZN6bufferIjLb1ELj16EE6appendERKS0_.exit:         ; preds = %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i.i, %_ZN7zstringC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7zstring6encodeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 27 uses
  %i.b = alloca [100 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not42 = icmp eq i32 %i.d, 0
  br i1 %.not42, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 99
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, label %bb.o

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.f = phi i32 [ %i.d, %.lr.ph ], [ %i.bb, %bb.n ]
  %.02540 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.n ] ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 4 uses
  %i.j = add i32 %i.i, -127
  %or.cond = icmp ult i32 %i.j, -95
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.i, 92
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.m = zext i32 %i.f to i64
  %i.n = icmp samesign ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = icmp eq i32 %i.p, 117
  br i1 %i.q, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.b
  %.not28 = icmp eq i32 %.02540, 0
  br i1 %.not28, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = zext i32 %.02540 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !13
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.b, i64 noundef %i.t)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g, %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.6, i64 noundef 3)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !65
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.ac = and i32 %i.ab, -75
  %i.ad = or disjoint i32 %i.ac, 8
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !75
  %i.ae = zext i32 %i.i to i64
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ae)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !74
  %i.am = and i32 %i.al, -75
  %i.an = or disjoint i32 %i.am, 2
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1, !tbaa !13
  %i.ao = load i64, ptr %i.ah, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.af, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !76
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 125)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.au = icmp eq i32 %.02540, 99
  br i1 %i.au, label %bb.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.e, align 1, !tbaa !13
  %i.av = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.b, i64 noundef %i.av)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.m, %bb.l
  %.2 = phi i32 [ %.02540, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.ax = trunc nuw nsw i32 %i.i to i8
  %i.ay = add nuw i32 %.2, 1
  %i.az = zext i32 %.2 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %.3 = phi i32 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %i.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp samesign ult i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.b, label %._crit_edge, !llvm.loop !59

bb.o:                                             ; preds = %._crit_edge
  %i.be = zext i32 %.3 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !13
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.b, i64 noundef %i.bg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.k, %bb.j, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.o
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp55, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ch, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %eh.lpad-body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.a, %bb.o, %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80, !noalias !81 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.bl, align 8, !tbaa !82, !noalias !81 ; 2 uses
  %5 = icmp ugt ptr %i.bk, %4
  %.08.i.i.i = select i1 %5, ptr %i.bk, ptr %4
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !83, !noalias !81
  %i.bo = ptrtoint ptr %.08.i.i.i to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !27, !noalias !81
  %i.bs = load ptr, ptr %3, align 8, !tbaa !28, !noalias !81
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !13, !noalias !81
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !84, !alias.scope !81
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !28, !noalias !81 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !27, !noalias !81 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.bw, ptr %0, align 8, !tbaa !28, !alias.scope !81
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !13, !noalias !81
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !13, !alias.scope !81
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !27, !noalias !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p
  %i.ce = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !27, !alias.scope !81
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !28, !noalias !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cf, i8 0, i64 9, i1 false), !noalias !81
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bi, ptr noundef nonnull %i.bx, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !28, !alias.scope !81 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bv
  br i1 %i.cj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ck = load i64, ptr %i.bv, align 8, !tbaa !13, !alias.scope !81
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #18
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.cm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cm, ptr %2, align 8, !tbaa !65
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !65
  %i.cr = load ptr, ptr %i.bu, align 8, !tbaa !28 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bx
  br i1 %i.cs, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ct = load i64, ptr %i.bx, align 8, !tbaa !13
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #18
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !65
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cv) #16
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cw) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK7zstring8suffixofERKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = load ptr, ptr %1, align 8
  %wide.trip.count = zext i32 %i.b to i64
  %exitcond.not15 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not15, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !85

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv16 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.h = trunc nuw i64 %indvars.iv16 to i32
  %i.i = xor i32 %i.h, -1                         ; 2 uses
  %i.j = add i32 %i.b, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = add i32 %i.d, %i.i
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = icmp eq i32 %i.m, %i.q
  br i1 %i.r, label %bb.b, label %..critedge.loopexit_crit_edge, !llvm.loop !85

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !85

.critedge:                                        ; preds = %bb.b, %.preheader, %..critedge.loopexit_crit_edge, %bb.a
  %.011 = phi i1 [ false, %bb.a ], [ false, %..critedge.loopexit_crit_edge ], [ true, %.preheader ], [ true, %bb.b ]
  ret i1 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK7zstring8prefixofERKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = load ptr, ptr %1, align 8
  %wide.trip.count = zext i32 %i.b to i64
  %exitcond.not13 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not13, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv14, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !86

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv14 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv14
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv14
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %..critedge.loopexit_crit_edge, !llvm.loop !86

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !86

.critedge:                                        ; preds = %bb.b, %.preheader, %..critedge.loopexit_crit_edge, %bb.a
  %.010 = phi i1 [ false, %bb.a ], [ false, %..critedge.loopexit_crit_edge ], [ true, %.preheader ], [ true, %bb.b ]
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK7zstring8containsERKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw i32 %i.d, %i.b
  %.not = icmp eq i32 %i.b, 0
  %i.g = load ptr, ptr %1, align 8
  %i.h = load ptr, ptr %0, align 8
  br i1 %.not, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.b
  %i.i = zext i32 %i.b to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..critedge_crit_edge.us
  %.01621.us = phi i32 [ %i.s, %..critedge_crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = add i32 %.01621.us, %i.l
  %i.n = zext i32 %i.m to i64
end_hunk_0
