Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpNLPBoundsRemover?download=true
inline.NumInlined: 785
inline.NumDeleted: 264
begin_hunk_0_@_ZN5Ipopt16NLPBoundsRemover16FinalizeSolutionENS_12SolverReturnERKNS_6VectorES4_S4_S4_S4_S4_S4_dPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesE:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.fi = load ptr, ptr %.0.i4.i40, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i40) #14, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit58.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit58.thread: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit56, %bb.z, %bb.aa
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i4.i33, i64 8 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !17
  %i.fn = add nsw i32 %i.fm, -1                   ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 8, !tbaa !17
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ab, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

bb.ab:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit58.thread
  %i.fp = load ptr, ptr %.0.i4.i33, align 8, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i33) #14, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60:      ; preds = %bb.ab, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit58.thread
  %.not.i.i61 = icmp eq ptr %.0.i4.i26, null
  br i1 %.not.i.i61, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62, label %bb.ac

bb.ac:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i4.i26, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !17
  %i.fu = add nsw i32 %i.ft, -1                   ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !17
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ad, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62

bb.ad:                                            ; preds = %bb.ac
  %i.fw = load ptr, ptr %.0.i4.i26, align 8, !tbaa !19
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  tail call void %i.fy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i26) #14, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62:      ; preds = %bb.ad, %bb.ac, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %.not.i.i63 = icmp eq ptr %.0.i4.i, null
  br i1 %.not.i.i63, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !17
  %i.gb = add nsw i32 %i.ga, -1                   ; 2 uses
  store i32 %i.gb, ptr %i.fz, align 8, !tbaa !17
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.af, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.af:                                            ; preds = %bb.ae
  %i.gd = load ptr, ptr %.0.i4.i, align 8, !tbaa !19
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  tail call void %i.gf(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #14, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62, %bb.ae, %bb.af
  resume { ptr, i32 } %.pn
}

declare void @_ZN5Ipopt6Vector4ScalEd(ptr noundef nonnull align 8 dereferenceable(205), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt16NLPBoundsRemover20GetScalingParametersENS_8SmartPtrIKNS_11VectorSpaceEEES4_S4_RdRNS1_INS_6VectorEEES8_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.Ipopt::SmartPtr.1", align 8 ; 7 uses
  %9 = alloca %"class.Ipopt::SmartPtr.60", align 8 ; 9 uses
  %10 = alloca %"class.Ipopt::SmartPtr.1", align 8 ; 4 uses
  %11 = alloca %"class.Ipopt::SmartPtr.1", align 8 ; 4 uses
  %12 = alloca %"class.Ipopt::SmartPtr.1", align 8 ; 4 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !32     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZNK5Ipopt19CompoundVectorSpace12GetCompSpaceEi(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.1") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %9, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.d, ptr %10, align 8, !tbaa !32
  %i.h = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.h, ptr %11, align 8, !tbaa !32
  %i.l = load ptr, ptr %8, align 8, !tbaa !32     ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.l, ptr %12, align 8, !tbaa !32
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %12, align 8, !tbaa !32    ; 4 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !17
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit:  ; preds = %bb.h, %bb.i, %bb.j
  %i.aa = load ptr, ptr %11, align 8, !tbaa !32   ; 4 uses
  %.not.i.i35 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i35, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit36, label %bb.k

bb.k:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !17
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !17
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit36

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit36

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit36: ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit, %bb.k, %bb.l
  %i.ai = load ptr, ptr %10, align 8, !tbaa !32   ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i37, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !17
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !17
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #14, !inline_history !1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit36
  %i.aq = load ptr, ptr %5, align 8, !tbaa !50
  %i.ar = icmp ne ptr %i.aq, null
  %i.as = load ptr, ptr %9, align 8
  %i.at = icmp ne ptr %i.as, null
  %or.cond = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.p, label %bb.av

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.ac      ; 14 uses

bb.q:                                             ; preds = %bb.p
  %.not.i.i39 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i39, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !17
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !17
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit: ; preds = %bb.r, %bb.q
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(265) %i.ax)
          to label %.noexc unwind label %bb.ad, !noalias !203

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 208 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47, !noalias !203
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50, !noalias !203 ; 12 uses
  %.not.i.i.i40 = icmp eq ptr %i.be, null         ; 2 uses
  br i1 %.not.i.i.i40, label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !17, !noalias !203
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !17, !noalias !203
  br label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit

_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit: ; preds = %bb.s, %.noexc
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(265) %i.ax)
          to label %.noexc42 unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75, !noalias !204

.noexc42:                                         ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !47, !noalias !204
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50, !noalias !204 ; 12 uses
  %.not.i.i.i41 = icmp eq ptr %i.bk, null         ; 2 uses
  br i1 %.not.i.i.i41, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.noexc42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !17, !noalias !204
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !17, !noalias !204
  br label %bb.u

bb.u:                                             ; preds = %.noexc42, %bb.t
  %i.bo = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(69) %i.bq, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.bo, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.be)
          to label %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66, !inline_history !6

_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !50
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(69) %i.bv, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.bw, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.bk)
          to label %bb.af unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111, !inline_history !6

bb.w:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cb = load ptr, ptr %12, align 8, !tbaa !32   ; 4 uses
  %.not.i.i47 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i47, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit48, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !17
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !17
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.y, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit48

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit48

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit48: ; preds = %bb.y, %bb.x, %bb.w
  %i.cj = load ptr, ptr %11, align 8, !tbaa !32   ; 4 uses
  %.not.i.i49 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i49, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit50, label %bb.z

bb.z:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !17
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !17
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.aa, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit50

bb.aa:                                            ; preds = %bb.z
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit50

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit50: ; preds = %bb.aa, %bb.z, %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit48
  %i.cr = load ptr, ptr %10, align 8, !tbaa !32   ; 4 uses
  %.not.i.i51 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i51, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !17
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !17
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %13, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52

13:                                               ; preds = %bb.ab
  %14 = load ptr, ptr %i.cr, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52

bb.ac:                                            ; preds = %bb.p
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52

bb.ad:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77

bb.ae:                                            ; preds = %bb.u
  %i.cy = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(205) %i.be, double noundef 1.000000e+00)
          to label %.noexc53 unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66, !inline_history !2

.noexc53:                                         ; preds = %bb.ae
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.be)
          to label %_ZN5Ipopt6Vector3SetEd.exit unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66

_ZN5Ipopt6Vector3SetEd.exit:                      ; preds = %.noexc53
  %i.db = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(205) %i.bk, double noundef 1.000000e+00)
          to label %.noexc55 unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111, !inline_history !2

.noexc55:                                         ; preds = %_ZN5Ipopt6Vector3SetEd.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.bk)
          to label %bb.af unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111

bb.af:                                            ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit, %.noexc55
  %i.de = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %.not117 = icmp eq ptr %i.de, null
  br i1 %.not117, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ax, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %i.de)
          to label %bb.am unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(265) %i.ax)
          to label %.noexc59 unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111, !noalias !205

.noexc59:                                         ; preds = %bb.ah
  %i.df = load ptr, ptr %i.bb, align 8, !tbaa !47, !noalias !205
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !50, !noalias !205 ; 11 uses
  %.not.i.i.i58 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i58, label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit60, label %bb.ai

bb.ai:                                            ; preds = %.noexc59
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !17, !noalias !205
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !17, !noalias !205
  br label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit60

_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit60: ; preds = %bb.ai, %.noexc59
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(205) %i.dg, double noundef 1.000000e+00)
          to label %.noexc61 unwind label %bb.ak, !inline_history !2

.noexc61:                                         ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit60
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.dg)
          to label %_ZN5Ipopt6Vector3SetEd.exit63 unwind label %bb.ak

_ZN5Ipopt6Vector3SetEd.exit63:                    ; preds = %.noexc61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !17
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !17
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit63
  %i.dr = load ptr, ptr %i.dg, align 8, !tbaa !19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(205) %i.dg) #14, !inline_history !4
  br label %bb.am

bb.ak:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit60, %.noexc61
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !17
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !17
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.al, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread

bb.al:                                            ; preds = %bb.ak
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(205) %i.dg) #14, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread

bb.am:                                            ; preds = %bb.aj, %_ZN5Ipopt6Vector3SetEd.exit63, %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !17
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !17
  %i.ef = load ptr, ptr %7, align 8, !tbaa !50    ; 4 uses
  %.not.i.i.i68 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i68, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !17
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !17
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(205) %i.ef) #14, !inline_history !3
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.an, %bb.ao
  store ptr %i.ax, ptr %7, align 8, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !17
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !17
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.aq, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit70

bb.aq:                                            ; preds = %bb.ap
  %i.er = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(205) %i.bk) #14, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit70

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit70:       ; preds = %bb.aq, %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !17
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !17
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ar, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit72

bb.ar:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit70
  %i.ey = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(205) %i.be) #14, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit72

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit72:       ; preds = %bb.ar, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit70
  %i.fb = load i32, ptr %i.ec, align 8, !tbaa !17
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.ec, align 8, !tbaa !17
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.as, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit

bb.as:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit72
  %i.fe = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(265) %i.ax) #14, !inline_history !202
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111: ; preds = %bb.ah, %bb.ag, %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit, %_ZN5Ipopt6Vector3SetEd.exit, %.noexc55
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66:       ; preds = %bb.v, %bb.ae, %.noexc53
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i41, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread: ; preds = %bb.al, %bb.ak, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66
  %.pn25108 = phi { ptr, i32 } [ %lpad.thr_comm, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread111 ], [ %lpad.thr_comm.split-lp, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66 ], [ %i.du, %bb.al ], [ %i.du, %bb.ak ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !17
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !17
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.at, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread

bb.at:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread
  %i.fl = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(205) %i.bk) #14, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75:       ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i40, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread, %bb.at, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75
  %.pn25.pn114 = phi { ptr, i32 } [ %i.fo, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75 ], [ %.pn25108, %bb.at ], [ %.pn25108, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66.thread ], [ %lpad.thr_comm.split-lp, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit66 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !17
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !17
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.au, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77

bb.au:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread
  %i.ft = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(205) %i.be) #14, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77:       ; preds = %bb.ad, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread, %bb.au
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.ad ], [ %i.fo, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75 ], [ %.pn25.pn114, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit75.thread ], [ %.pn25.pn114, %bb.au ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !17
  %i.fy = add nsw i32 %i.fx, -1                   ; 2 uses
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !17
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %17, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52

17:                                               ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77
  %18 = load ptr, ptr %i.ax, align 8, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef nonnull align 8 dereferenceable(265) %i.ax) #14, !inline_history !202
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52

bb.av:                                            ; preds = %bb.o
  %i.ga = load ptr, ptr %7, align 8, !tbaa !50    ; 4 uses
  %.not.i.i.i80 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i80, label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit81, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !17
  %i.gd = add nsw i32 %i.gc, -1                   ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !17
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.ax, label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit81

bb.ax:                                            ; preds = %bb.aw
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !19
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(205) %i.ga) #14, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit81

_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit81:    ; preds = %bb.av, %bb.aw, %bb.ax
  store ptr null, ptr %7, align 8, !tbaa !50
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit: ; preds = %bb.as, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit72, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit81
  %i.gi = load ptr, ptr %9, align 8, !tbaa !50    ; 4 uses
  %.not.i.i82 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i82, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit83, label %bb.ay

bb.ay:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !17
  %i.gl = add nsw i32 %i.gk, -1                   ; 2 uses
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !17
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.az, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit83

bb.az:                                            ; preds = %bb.ay
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !19
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(205) %i.gi) #14, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit83

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit83:       ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.gq = load ptr, ptr %8, align 8, !tbaa !32    ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i84, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit85, label %bb.ba

bb.ba:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit83
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !17
  %i.gt = add nsw i32 %i.gs, -1                   ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !17
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.bb, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit85

bb.bb:                                            ; preds = %bb.ba
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit85

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit85: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit83, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52: ; preds = %bb.ac, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77, %17, %13, %bb.ab, %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit50
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %13 ], [ %.pn25.pn.pn, %17 ], [ %i.ca, %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit50 ], [ %i.ca, %bb.ab ], [ %i.cw, %bb.ac ], [ %.pn25.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit77 ]
  %i.gy = load ptr, ptr %9, align 8, !tbaa !50    ; 4 uses
  %.not.i.i86 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i86, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit87, label %bb.bc

bb.bc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !17
  %i.hb = add nsw i32 %i.ha, -1                   ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !17
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.bd, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit87

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load ptr, ptr %i.gy, align 8, !tbaa !19
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(205) %i.gy) #14, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit87

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit87:       ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit52, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.hg = load ptr, ptr %8, align 8, !tbaa !32    ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i88, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit89, label %bb.be

bb.be:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit87
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !17
  %i.hj = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.hh, align 8, !tbaa !17
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bf, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit89

bb.bf:                                            ; preds = %bb.be
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !19
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit89

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit89: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit87, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

declare void @_ZNK5Ipopt19CompoundVectorSpace12GetCompSpaceEi(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.1") align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

declare void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265), i32 noundef, ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt16NLPBoundsRemoverD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN5Ipopt16NLPBoundsRemoverE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !17
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit:  ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !17
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(69) %i.k) #14, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i.i2, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !17
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(69) %i.t) #14, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3:       ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4, label %_ZN5Ipopt8SmartPtrINS_3NLPEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !17
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !17
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_3NLPEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #14, !inline_history !206
  br label %_ZN5Ipopt8SmartPtrINS_3NLPEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_3NLPEED2Ev.exit:            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt16NLPBoundsRemoverD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN5Ipopt16NLPBoundsRemoverE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !17
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !207
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit.i

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !17
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(69) %i.k) #14, !inline_history !208
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit.i

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit.i:      ; preds = %bb.e, %bb.d, %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 4 uses
  %.not.i.i2.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i2.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !17
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit3.i

bb.g:                                             ; preds = %bb.f
end_hunk_0
