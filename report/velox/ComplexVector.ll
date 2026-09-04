Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ComplexVector?download=true
inline.NumInlined: 9532
inline.NumDeleted: 3275
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK8facebook5velox9MapVector7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.n = select i1 %i.g, i64 4294967295, i64 1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.j:                                             ; preds = %bb.h
  %i.o = select i1 %i.g, i64 1, i64 4294967295
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.60) #38
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(94) %1) ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %3) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !88
  switch i32 %i.y, label %bb.ai [
    i32 6, label %bb.m
    i32 7, label %bb.ah
  ]

bb.m:                                             ; preds = %bb.l
  %i.z = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.s, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #39 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !98
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !98
  %.not = icmp eq i8 %i.ad, %i.ah
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 144 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !98
  %.not46 = icmp eq i8 %i.al, %i.ap
  br i1 %.not46, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(94) %0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  invoke void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext false)
          to label %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit unwind label %bb.r

_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !750
  %i.aq = load ptr, ptr %8, align 8, !tbaa !92, !noalias !750
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93, !noalias !750
  store ptr %i.aq, ptr %6, align 16, !tbaa !94, !noalias !750
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !94, !noalias !750
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load ptr, ptr %9, align 8, !tbaa !92, !noalias !750
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !93, !noalias !750
  store ptr %i.av, ptr %i.au, align 16, !tbaa !94, !noalias !750
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !94, !noalias !750
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.46, i64 55, i64 221, ptr nonnull %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !750
  %i.az = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !94
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.be = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !94
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.46) #38
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.s:                                             ; preds = %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.s
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !94
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.r
  %.pn51 = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.bk, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.bq = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !94
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %7, align 8, !tbaa !92    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !94
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn53 = phi { ptr, i32 } [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.bv, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.ao

bb.u:                                             ; preds = %bb.n
  br i1 %i.b, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !200
  %i.cd = sext i32 %2 to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !122
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !200
  %i.ci = sext i32 %i.w to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !122
  %.not47 = icmp eq i32 %i.cf, %i.ck
  br i1 %.not47, label %bb.w, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.31") align 8 %10, ptr noundef nonnull align 8 dereferenceable(161) %0, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.31") align 8 %11, ptr noundef nonnull align 8 dereferenceable(161) %i.z, i32 noundef %i.w)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !85
  %i.cn = load ptr, ptr %10, align 8, !tbaa !175  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !219
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = load ptr, ptr %11, align 8, !tbaa !175  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !219
  %i.cu = ptrtoint ptr %i.cr to i64
  %.sroa.6169.sroa.7200.0.insert.shift202 = shl nuw nsw i64 %sum.shift, 16
  %.sroa.6169.sroa.7.0.insert.ext188 = shl nuw nsw i64 %.sroa.6169.sroa.7.0.extract.shift231, 8
  %.sroa.6169.sroa.7.0.insert.shift189 = and i64 %.sroa.6169.sroa.7.0.insert.ext188, 65280
  %.sroa.6169.sroa.7.0.insert.insert191 = or disjoint i64 %.sroa.6169.sroa.7.0.insert.shift189, %.sroa.6169.sroa.7200.0.insert.shift202
  %.sroa.6169.sroa.0.0.insert.ext179 = and i64 %.sroa.6169.0.extract.shift, 255
  %.sroa.6169.sroa.0.0.insert.insert181 = or disjoint i64 %.sroa.6169.sroa.7.0.insert.insert191, %.sroa.6169.sroa.0.0.insert.ext179
  %.sroa.6169.0.insert.shift171 = shl nuw i64 %.sroa.6169.sroa.0.0.insert.insert181, 16
  %i.cv = and i64 %4, 65535
  %.sroa.0154.0.insert.insert157 = or disjoint i64 %.sroa.6169.0.insert.shift171, %i.cv ; 2 uses
  %i.cw = and i64 %4, 65536
  %.not14.i = icmp eq i64 %i.cw, 0                ; 2 uses
  %.pre.i = ptrtoint ptr %i.cp to i64
  %.pre56.i = sub i64 %.pre.i, %i.cq              ; 2 uses
  %.pre58.i = ptrtoint ptr %i.ct to i64
  %.pre62.i = sub i64 %.pre58.i, %i.cu            ; 2 uses
  %.not.i69 = icmp eq i64 %.pre56.i, %.pre62.i
  %or.cond.i70 = select i1 %.not14.i, i1 true, i1 %.not.i69
  br i1 %or.cond.i70, label %._crit_edge.i, label %_ZNRSt8optionalIiE5valueEv.exit.thread

._crit_edge.i:                                    ; preds = %bb.x
  %i.cx = ashr exact i64 %.pre56.i, 2             ; 2 uses
  %i.cy = ashr exact i64 %.pre62.i, 2             ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cx) ; 3 uses
  %.not1643.not.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not1643.not.i, label %.critedge.thread.i, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %._crit_edge.i, %.thread.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next70.i, %.thread.i ], [ 0, %._crit_edge.i ]
  %.045.ph.i = phi i1 [ true, %.thread.i ], [ false, %._crit_edge.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.outer.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.ph.i, %.lr.ph.outer.i ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !122
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !122
  %i.dd = load ptr, ptr %i.cl, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke i64 %i.df(ptr noundef nonnull align 8 dereferenceable(94) %i.cl, ptr noundef nonnull align 8 dereferenceable(94) %i.cm, i32 noundef %i.da, i32 noundef %i.dc, i64 %.sroa.0154.0.insert.insert157)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit, !inline_history !746 ; 5 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.dh = and i64 %i.dg, 4294967296
  %.not39.i = icmp eq i64 %i.dh, 0
  br i1 %.not39.i, label %.thread.i, label %_ZNRSt8optionalIiE5valueEv.exit.i

_ZNRSt8optionalIiE5valueEv.exit.i:                ; preds = %.noexc
  %i.di = and i64 %i.dg, 4294967295
  %.not15.i = icmp eq i64 %i.di, 0
  br i1 %.not15.i, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !747

.thread.i:                                        ; preds = %.noexc
  %indvars.iv.next70.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not71.i = icmp eq i64 %indvars.iv.next70.i, %.sroa.speculated.i
  br i1 %exitcond.not71.i, label %.critedge, label %.lr.ph.outer.i, !llvm.loop !747

.critedge.i:                                      ; preds = %bb.y
  %.sroa.10.0.extract.shift.le51.i = and i64 %i.dg, -1099511627776
  br i1 %.045.ph.i, label %.critedge, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %._crit_edge.i
  %.sroa.10.sroa.0.0.lcssa68.i = phi i64 [ %.sroa.10.0.extract.shift.le51.i, %.critedge.i ], [ 0, %._crit_edge.i ]
  %i.dj = sub nsw i64 %i.cx, %i.cy                ; 2 uses
  %i.dk = and i64 %4, 256
  %.not17.i = icmp eq i64 %i.dk, 0
  %i.dl = sub nsw i64 0, %i.dj
  %i.dm = select i1 %.not17.i, i64 %i.dl, i64 %i.dj
  br label %_ZNRSt8optionalIiE5valueEv.exit

.loopexit.i:                                      ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  %.sroa.10.0.extract.shift.le.i = and i64 %i.dg, -1099511627776
  br label %_ZNRSt8optionalIiE5valueEv.exit

.critedge:                                        ; preds = %.thread.i, %.critedge.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #38
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %.critedge
  unreachable

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %.critedge.thread.i, %.loopexit.i
  %.sroa.035.2.i = phi i64 [ %i.dm, %.critedge.thread.i ], [ %i.dg, %.loopexit.i ]
  %.sroa.10.sroa.0.2.i = phi i64 [ %.sroa.10.sroa.0.0.lcssa68.i, %.critedge.thread.i ], [ %.sroa.10.0.extract.shift.le.i, %.loopexit.i ]
  %i.dn = and i64 %.sroa.035.2.i, 4294967295      ; 2 uses
  %.not48 = icmp eq i64 %i.dn, 0
  br i1 %.not48, label %bb.ab, label %_ZNRSt8optionalIiE5valueEv.exit.thread

_ZNRSt8optionalIiE5valueEv.exit.thread:           ; preds = %bb.x, %_ZNRSt8optionalIiE5valueEv.exit
  %i.do = phi i64 [ %i.dn, %_ZNRSt8optionalIiE5valueEv.exit ], [ 1, %bb.x ]
  %.sroa.10.sroa.0.2.i297 = phi i64 [ %.sroa.10.sroa.0.2.i, %_ZNRSt8optionalIiE5valueEv.exit ], [ 0, %bb.x ]
  %.sroa.6.0.insert.insert = add nuw nsw i64 %.sroa.10.sroa.0.2.i297, %i.do
  %.sroa.0149.0.insert.insert = add nuw nsw i64 %.sroa.6.0.insert.insert, 4294967296
  br label %bb.ad

bb.z:                                             ; preds = %bb.w
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.loopexit:                                        ; preds = %.lr.ph.i94
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i
  %lpad.loopexit233 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.critedge
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit233, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp234, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dq = load ptr, ptr %11, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !176
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ab:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.dw = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %i.dx = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.dy = load ptr, ptr %10, align 8, !tbaa !175  ; 2 uses
  %i.dz = load ptr, ptr %i.co, align 8, !tbaa !219
  %i.ea = ptrtoint ptr %i.dy to i64
  %15 = load ptr, ptr %11, align 8, !tbaa !175    ; 2 uses
  %16 = load ptr, ptr %i.cs, align 8, !tbaa !219
  %17 = ptrtoint ptr %15 to i64
  %.pre.i73 = ptrtoint ptr %i.dz to i64
  %.pre56.i75 = sub i64 %.pre.i73, %i.ea          ; 2 uses
  %i.eb = ptrtoint ptr %16 to i64
  %i.ec = sub i64 %i.eb, %17                      ; 2 uses
  %.not.i79 = icmp eq i64 %.pre56.i75, %i.ec
  %or.cond.i80 = select i1 %.not14.i, i1 true, i1 %.not.i79
  br i1 %or.cond.i80, label %._crit_edge.i88, label %_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114

._crit_edge.i88:                                  ; preds = %bb.ab
  %i.ed = ashr exact i64 %.pre56.i75, 2           ; 2 uses
  %i.ee = ashr exact i64 %i.ec, 2                 ; 2 uses
  %.sroa.speculated.i89 = call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.ed) ; 3 uses
  %.not1643.not.i90 = icmp eq i64 %.sroa.speculated.i89, 0
  br i1 %.not1643.not.i90, label %.critedge.thread.i105, label %.lr.ph.outer.i91

.lr.ph.outer.i91:                                 ; preds = %._crit_edge.i88, %.thread.i108
  %indvars.iv.ph.i92 = phi i64 [ %indvars.iv.next70.i109, %.thread.i108 ], [ 0, %._crit_edge.i88 ]
  %.045.ph.i93 = phi i1 [ true, %.thread.i108 ], [ false, %._crit_edge.i88 ]
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %bb.ac, %.lr.ph.outer.i91
  %indvars.iv.i95 = phi i64 [ %indvars.iv.next.i101, %bb.ac ], [ %indvars.iv.ph.i92, %.lr.ph.outer.i91 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i95
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !122
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv.i95
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !122
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !87
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke i64 %i.el(ptr noundef nonnull align 8 dereferenceable(94) %i.dw, ptr noundef nonnull align 8 dereferenceable(94) %i.dx, i32 noundef %i.eg, i32 noundef %i.ei, i64 %.sroa.0154.0.insert.insert157)
          to label %.noexc113 unwind label %.loopexit, !inline_history !746 ; 8 uses

.noexc113:                                        ; preds = %.lr.ph.i94
  %i.en = and i64 %i.em, 4294967296
  %.not39.i96 = icmp eq i64 %i.en, 0
  br i1 %.not39.i96, label %.thread.i108, label %_ZNRSt8optionalIiE5valueEv.exit.i97

_ZNRSt8optionalIiE5valueEv.exit.i97:              ; preds = %.noexc113
  %i.eo = and i64 %i.em, 4294967295
  %.not15.i98 = icmp eq i64 %i.eo, 0
  br i1 %.not15.i98, label %bb.ac, label %.loopexit.i99

bb.ac:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i97
  %indvars.iv.next.i101 = add nuw i64 %indvars.iv.i95, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %.sroa.speculated.i89
  br i1 %exitcond.not.i102, label %.critedge.i103, label %.lr.ph.i94, !llvm.loop !747

.thread.i108:                                     ; preds = %.noexc113
  %indvars.iv.next70.i109 = add nuw i64 %indvars.iv.i95, 1 ; 2 uses
  %exitcond.not71.i110 = icmp eq i64 %indvars.iv.next70.i109, %.sroa.speculated.i89
  br i1 %exitcond.not71.i110, label %.critedge.thread73.i111, label %.lr.ph.outer.i91, !llvm.loop !747

.critedge.thread73.i111:                          ; preds = %.thread.i108
  %.sroa.10.0.extract.shift.le5175.i112 = lshr i64 %i.em, 40
  br label %_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114

.critedge.i103:                                   ; preds = %bb.ac
  %.sroa.10.0.extract.shift.le51.i104 = lshr i64 %i.em, 40 ; 2 uses
  br i1 %.045.ph.i93, label %_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114, label %.critedge.thread.i105

.critedge.thread.i105:                            ; preds = %.critedge.i103, %._crit_edge.i88
  %.sroa.10.sroa.0.0.lcssa68.i106 = phi i64 [ %.sroa.10.0.extract.shift.le51.i104, %.critedge.i103 ], [ 0, %._crit_edge.i88 ]
  %i.ep = sub nsw i64 %i.ed, %i.ee                ; 2 uses
  %i.eq = and i64 %4, 256
  %.not17.i107 = icmp eq i64 %i.eq, 0
  %i.er = sub nsw i64 0, %i.ep
  %i.es = select i1 %.not17.i107, i64 %i.er, i64 %i.ep
  br label %_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114

.loopexit.i99:                                    ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i97
  %.sroa.10.0.extract.shift.le.i100 = lshr i64 %i.em, 40
  br label %_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114

_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114: ; preds = %bb.ab, %.critedge.thread73.i111, %.critedge.i103, %.critedge.thread.i105, %.loopexit.i99
  %.sroa.035.2.i81 = phi i64 [ 1, %bb.ab ], [ %i.em, %.critedge.i103 ], [ %i.es, %.critedge.thread.i105 ], [ %i.em, %.loopexit.i99 ], [ %i.em, %.critedge.thread73.i111 ]
  %.sroa.537.0.i82 = phi i64 [ 4294967296, %bb.ab ], [ 0, %.critedge.i103 ], [ 4294967296, %.critedge.thread.i105 ], [ 4294967296, %.loopexit.i99 ], [ 0, %.critedge.thread73.i111 ]
  %.sroa.10.sroa.0.2.i83 = phi i64 [ 0, %bb.ab ], [ %.sroa.10.0.extract.shift.le51.i104, %.critedge.i103 ], [ %.sroa.10.sroa.0.0.lcssa68.i106, %.critedge.thread.i105 ], [ %.sroa.10.0.extract.shift.le.i100, %.loopexit.i99 ], [ %.sroa.10.0.extract.shift.le5175.i112, %.critedge.thread73.i111 ]
  %.sroa.10.0.insert.shift.i84 = shl nuw i64 %.sroa.10.sroa.0.2.i83, 40
  %.sroa.537.0.insert.insert.i85 = or disjoint i64 %.sroa.10.0.insert.shift.i84, %.sroa.537.0.i82
  %.sroa.035.0.insert.ext.i86 = and i64 %.sroa.035.2.i81, 4294967295
  %.sroa.035.0.insert.insert.i87 = or disjoint i64 %.sroa.537.0.insert.insert.i85, %.sroa.035.0.insert.ext.i86
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114, %_ZNRSt8optionalIiE5valueEv.exit.thread
  %storemerge = phi i64 [ %.sroa.0149.0.insert.insert, %_ZNRSt8optionalIiE5valueEv.exit.thread ], [ %.sroa.035.0.insert.insert.i87, %_ZN8facebook5velox12_GLOBAL__N_113compareArraysERKNS0_10BaseVectorES4_N5folly5RangeIPKiEES9_NS0_12CompareFlagsE.exit114 ] ; 3 uses
  %.sroa.6221.0.extract.shift224 = and i64 %storemerge, -1099511627776
  %i.et = load ptr, ptr %11, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i115 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIiSaIiEED2Ev.exit116, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !176
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit116

_ZNSt6vectorIiSaIiEED2Ev.exit116:                 ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %i.ez = load ptr, ptr %10, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIiSaIiEED2Ev.exit118, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit116
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !176
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

_ZNSt6vectorIiSaIiEED2Ev.exit118:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit116, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aa, %.loopexit.split-lp, %bb.z
  %.pn49 = phi { ptr, i32 } [ %i.dp, %bb.z ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %i.ff = load ptr, ptr %10, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIiSaIiEED2Ev.exit120, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !176
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit120

_ZNSt6vectorIiSaIiEED2Ev.exit120:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ao

bb.ah:                                            ; preds = %bb.l
  %i.fl = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.s, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox13FlatMapVectorE, i64 0) #39 ; 2 uses
  %.sroa.6169.sroa.7200.0.insert.shift210 = shl nuw nsw i64 %sum.shift, 16
  %.sroa.6169.sroa.7.0.insert.ext196 = shl nuw nsw i64 %.sroa.6169.sroa.7.0.extract.shift231, 8
  %.sroa.6169.sroa.7.0.insert.shift197 = and i64 %.sroa.6169.sroa.7.0.insert.ext196, 65280
  %.sroa.6169.sroa.7.0.insert.insert199 = or disjoint i64 %.sroa.6169.sroa.7.0.insert.shift197, %.sroa.6169.sroa.7200.0.insert.shift210
  %.sroa.6169.sroa.0.0.insert.ext185 = and i64 %.sroa.6169.0.extract.shift, 255
  %.sroa.6169.sroa.0.0.insert.insert187 = or disjoint i64 %.sroa.6169.sroa.7.0.insert.insert199, %.sroa.6169.sroa.0.0.insert.ext185
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.6169.sroa.0.0.insert.insert187, 16
  %i.fm = and i64 %4, 511
  %i.fn = or disjoint i64 %.sroa.4.0.insert.shift.i, %i.fm
  %.sroa.0.0.insert.insert.i = xor i64 %i.fn, 256
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !87
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 80
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = tail call i64 %i.fq(ptr noundef nonnull align 8 dereferenceable(217) %i.fl, ptr noundef nonnull %0, i32 noundef %i.w, i32 noundef %2, i64 %.sroa.0.0.insert.insert.i) ; 3 uses
  %.sroa.6221.0.extract.shift222 = and i64 %i.fr, -1099511627776
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.ai:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(94) %0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  invoke void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(94) %i.s, i1 noundef zeroext false)
          to label %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit122 unwind label %bb.al

_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit122: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !751
  %i.fs = load ptr, ptr %13, align 8, !tbaa !92, !noalias !751
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !93, !noalias !751
  store ptr %i.fs, ptr %5, align 16, !tbaa !94, !noalias !751
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !94, !noalias !751
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fx = load ptr, ptr %14, align 8, !tbaa !92, !noalias !751
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !93, !noalias !751
  store ptr %i.fx, ptr %i.fw, align 16, !tbaa !94, !noalias !751
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !94, !noalias !751
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.47, i64 37, i64 221, ptr nonnull %5)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !751
  %i.gb = load ptr, ptr %14, align 8, !tbaa !92   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.aj
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !94
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  %i.gg = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !94
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.47) #38
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.am:                                            ; preds = %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit122
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
