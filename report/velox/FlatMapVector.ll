Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FlatMapVector?download=true
inline.NumInlined: 2363
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK8facebook5velox13FlatMapVector16compareToFlatMapEPKS1_iiNS0_12CompareFlagsE:bb.a
  br i1 %.not79196.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bg
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph, %.thread161
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread161 ] ; 5 uses
  %.061199 = phi i1 [ false, %.lr.ph ], [ %.263170, %.thread161 ]
  %.sroa.11.sroa.0.0198 = phi i24 [ undef, %.lr.ph ], [ %.sroa.11.sroa.0.1169, %.thread161 ]
  %.sroa.0149.0197 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0149.1167, %.thread161 ]
  %i.gm = load ptr, ptr %i.gi, align 8, !tbaa !43 ; 2 uses
  %i.gn = load ptr, ptr %i.gj, align 8, !tbaa !43
  %i.go = load ptr, ptr %12, align 8, !tbaa !123
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !70
  %i.gr = load ptr, ptr %13, align 8, !tbaa !123
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !70
  %i.gu = load ptr, ptr %i.gm, align 8, !tbaa !69
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 80
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke i64 %i.gw(ptr noundef nonnull align 8 dereferenceable(94) %i.gm, ptr noundef %i.gn, i32 noundef %i.gq, i32 noundef %i.gt, i64 %4)
          to label %bb.bi unwind label %bb.bj     ; 5 uses

bb.bi:                                            ; preds = %bb.bh
  %i.gy = and i64 %i.gx, 4294967296
  %.not184 = icmp eq i64 %i.gy, 0
  br i1 %.not184, label %.thread161, label %_ZNRSt8optionalIiE5valueEv.exit

bb.bj:                                            ; preds = %bb.bl, %bb.bh
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %13, align 8, !tbaa !123  ; 3 uses
  %.not.i.i.i129 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !125
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %bb.bi
  %i.hg = and i64 %i.gx, 4294967295
  %.not75 = icmp eq i64 %i.hg, 0
  br i1 %.not75, label %bb.bl, label %.thread171

.thread171:                                       ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %.sroa.0149.0.extract.trunc151 = trunc i64 %i.gx to i32
  %.sroa.11.0.extract.shift156 = lshr i64 %i.gx, 40
  %.sroa.11.0.extract.trunc157 = trunc nuw i64 %.sroa.11.0.extract.shift156 to i24
  %i.hh = and i64 %i.gx, 1095216660480
  br label %.thread178

bb.bl:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.hi = load ptr, ptr %12, align 8, !tbaa !123
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !70
  %i.hl = sext i32 %i.hk to i64
  %i.hm = load ptr, ptr %i.gk, align 8, !tbaa !99
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hl
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !43 ; 2 uses
  %i.hp = load ptr, ptr %13, align 8, !tbaa !123
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !70
  %i.hs = sext i32 %i.hr to i64
  %i.ht = load ptr, ptr %i.gl, align 8, !tbaa !99
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !43
  %i.hw = load ptr, ptr %i.ho, align 8, !tbaa !69
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = invoke i64 %i.hy(ptr noundef nonnull align 8 dereferenceable(94) %i.ho, ptr noundef %i.hv, i32 noundef %2, i32 noundef %3, i64 %4)
          to label %bb.bm unwind label %bb.bj     ; 3 uses

bb.bm:                                            ; preds = %bb.bl
  %.sroa.0149.0.extract.trunc = trunc i64 %i.hz to i32 ; 3 uses
  %.sroa.11.0.extract.shift = lshr i64 %i.hz, 40
  %.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.11.0.extract.shift to i24 ; 3 uses
  %i.ia = and i64 %i.hz, 4294967296
  %.not185 = icmp eq i64 %i.ia, 0
  br i1 %.not185, label %.thread161, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.not78 = icmp eq i32 %.sroa.0149.0.extract.trunc, 0
  br i1 %.not78, label %.thread161, label %.thread178

.thread161:                                       ; preds = %bb.bi, %bb.bm, %bb.bn
  %.263170 = phi i1 [ %.061199, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bi ] ; 2 uses
  %.sroa.11.sroa.0.1169 = phi i24 [ %.sroa.11.0.extract.trunc, %bb.bn ], [ %.sroa.11.0.extract.trunc, %bb.bm ], [ %.sroa.11.sroa.0.0198, %bb.bi ] ; 3 uses
  %.sroa.0149.1167 = phi i32 [ 0, %bb.bn ], [ %.sroa.0149.0.extract.trunc, %bb.bm ], [ %.sroa.0149.0197, %bb.bi ] ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.bh, !llvm.loop !316

._crit_edge:                                      ; preds = %.thread161
  br i1 %.263170, label %.thread178, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.bg, %._crit_edge
  %.sroa.11.sroa.0.0.lcssa258 = phi i24 [ %.sroa.11.sroa.0.1169, %._crit_edge ], [ undef, %bb.bg ]
  %i.ib = load ptr, ptr %i.gg, align 8, !tbaa !124
  %i.ic = load ptr, ptr %12, align 8, !tbaa !123
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = lshr exact i64 %i.if, 2
  %i.ih = load ptr, ptr %i.gh, align 8, !tbaa !124
  %i.ii = load ptr, ptr %13, align 8, !tbaa !123
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = lshr exact i64 %i.il, 2
  %i.in = sub nsw i64 %i.ig, %i.im
  %i.io = trunc i64 %i.in to i32                  ; 2 uses
  %i.ip = trunc i64 %.sroa.3.0.extract.shift to i1
  %i.iq = sub nsw i32 0, %i.io
  %i.ir = select i1 %i.ip, i32 %i.io, i32 %i.iq
  br label %.thread178

.thread178:                                       ; preds = %bb.bn, %.thread171, %._crit_edge, %._crit_edge.thread, %bb.be
  %.sroa.0149.3 = phi i32 [ %.sroa.0149.1167, %._crit_edge ], [ %i.ge, %bb.be ], [ %i.ir, %._crit_edge.thread ], [ %.sroa.0149.0.extract.trunc151, %.thread171 ], [ %.sroa.0149.0.extract.trunc, %bb.bn ]
  %.sroa.6152.3 = phi i64 [ 0, %._crit_edge ], [ 4294967296, %bb.be ], [ 4294967296, %._crit_edge.thread ], [ %i.hh, %.thread171 ], [ 4294967296, %bb.bn ]
  %.sroa.11.sroa.0.3 = phi i24 [ %.sroa.11.sroa.0.1169, %._crit_edge ], [ undef, %bb.be ], [ %.sroa.11.sroa.0.0.lcssa258, %._crit_edge.thread ], [ %.sroa.11.0.extract.trunc157, %.thread171 ], [ %.sroa.11.0.extract.trunc, %bb.bn ]
  %i.is = load ptr, ptr %13, align 8, !tbaa !123  ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIiSaIiEED2Ev.exit134, label %bb.bo

bb.bo:                                            ; preds = %.thread178
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !125
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.ix) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

_ZNSt6vectorIiSaIiEED2Ev.exit134:                 ; preds = %.thread178, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.iy = load ptr, ptr %12, align 8, !tbaa !123  ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIiSaIiEED2Ev.exit136, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit134
  %i.iz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !125
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jd) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit136

_ZNSt6vectorIiSaIiEED2Ev.exit136:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit134, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %.sroa.11.0.insert.ext = zext i24 %.sroa.11.sroa.0.3 to i64
  %.sroa.11.0.insert.shift = shl nuw i64 %.sroa.11.0.insert.ext, 40
  %.sroa.6152.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.6152.3
  %.sroa.0149.0.insert.ext = zext i32 %.sroa.0149.3 to i64
  %.sroa.0149.0.insert.insert = or disjoint i64 %.sroa.6152.0.insert.insert, %.sroa.0149.0.insert.ext
  ret i64 %.sroa.0149.0.insert.insert

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bk, %bb.bj, %bb.bf
  %.pn76 = phi { ptr, i32 } [ %i.gf, %bb.bf ], [ %i.gz, %bb.bj ], [ %i.gz, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.je = load ptr, ptr %12, align 8, !tbaa !123  ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIiSaIiEED2Ev.exit138, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !125
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jj) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit138

_ZNSt6vectorIiSaIiEED2Ev.exit138:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.ax
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn76, %_ZNSt6vectorIiSaIiEED2Ev.exit138 ], [ %.pn.pn, %bb.ax ]
  resume { ptr, i32 } %.pn82.pn
}

; Function Attrs: mustprogress uwtable
define i64 @_ZNK8facebook5velox13FlatMapVector7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.213", align 16 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp ult i64 %4, 4294967296
  %i.b = and i64 %4, 65536                        ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox13FlatMapVector7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.27) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %2) ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %3) ; 2 uses
  %or.cond = or i1 %i.h, %i.l
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %.sroa.37.0.extract.shift.i = lshr i64 %4, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.k [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.93) #29
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i = and i1 %i.h, %i.l
  br i1 %or.cond.i, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = trunc i64 %4 to i1
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = select i1 %i.h, i64 4294967295, i64 1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.j:                                             ; preds = %bb.h
  %i.o = select i1 %i.h, i64 1, i64 4294967295
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.94) #29
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.g, %bb.e, %bb.i, %bb.j
  %.sroa.080.0 = phi i64 [ %i.o, %bb.j ], [ 0, %bb.e ], [ %i.n, %bb.i ], [ 0, %bb.g ]
  %.sroa.6.0 = phi i64 [ 4294967296, %bb.j ], [ 0, %bb.e ], [ 4294967296, %bb.i ], [ 4294967296, %bb.g ]
  %.sroa.080.0.insert.insert = or disjoint i64 %.sroa.6.0, %.sroa.080.0
  br label %bb.u

bb.l:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(94) %1) ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %3) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !100
  switch i32 %i.y, label %bb.o [
    i32 7, label %bb.m
    i32 6, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.z = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.s, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox13FlatMapVectorE, i64 0) #27
  %i.aa = tail call i64 @_ZNK8facebook5velox13FlatMapVector16compareToFlatMapEPKS1_iiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef %i.z, i32 noundef %2, i32 noundef %i.w, i64 %4)
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.s, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #27
  %i.ac = tail call i64 @_ZNK8facebook5velox13FlatMapVector12compareToMapEPKNS0_9MapVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef %i.ab, i32 noundef %2, i32 noundef %i.w, i64 %4)
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(94) %0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(94) %i.s, i1 noundef zeroext false)
          to label %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit unwind label %bb.r

_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !324
  %i.ad = load ptr, ptr %7, align 8, !tbaa !49, !noalias !324
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50, !noalias !324
  store ptr %i.ad, ptr %5, align 16, !tbaa !51, !noalias !324
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !51, !noalias !324
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %8, align 8, !tbaa !49, !noalias !324
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50, !noalias !324
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !51, !noalias !324
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !51, !noalias !324
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.28, i64 42, i64 221, ptr nonnull %5)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !324
  %i.am = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !51
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ar = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !51
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox13FlatMapVector7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.28) #29
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.s:                                             ; preds = %_ZNK8facebook5velox10BaseVector8toStringB5cxx11Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.s
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.r
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.ax, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.bd = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !51
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !51
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn29 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bi, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn29

bb.u:                                             ; preds = %bb.m, %bb.n, %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit
  %.sroa.025.1 = phi i64 [ %.sroa.080.0.insert.insert, %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit ], [ %i.aa, %bb.m ], [ %i.ac, %bb.n ]
  ret i64 %.sroa.025.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox13FlatMapVector15copyInMapRangesEjPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional.64", align 1  ; 5 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = zext i32 %1 to i64                       ; 4 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN8facebook5velox13FlatMapVector18mutableRawInMapsAtEj.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !90   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !95
end_hunk_0
