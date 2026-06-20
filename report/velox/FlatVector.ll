inline.NumInlined: 6335
inline.NumDeleted: 1804
begin_hunk_0_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE35acquireSharedStringBuffersRecursiveEPKNS0_10BaseVectorE:bb.a
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !91    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !62
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.cs, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.y

.loopexit:                                        ; preds = %.lr.ph, %tailrecurse.backedge, %.lr.ph78, %.lr.ph80, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE15addStringBufferERKN5boost13intrusive_ptrINS0_6BufferEEE.exit, %bb.a, %bb.k, %bb.j, %bb.c, %bb.l, %bb.b, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.m
  ret void

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.p
  %.pn37 = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  resume { ptr, i32 } %.pn37
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %class.anon.216, align 8            ; 8 uses
  %8 = alloca %class.anon.215, align 8            ; 5 uses
  %9 = alloca %class.anon.80, align 8             ; 9 uses
  %10 = alloca %class.anon.214, align 8           ; 9 uses
  %11 = alloca %class.anon.213, align 8           ; 5 uses
  %12 = alloca %class.anon.79, align 8            ; 10 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 12 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"class.folly::LockedPtr", align 8 ; 7 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !184  ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !185  ; 25 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit"

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !132
  %i.n = icmp eq i8 %i.m, 33
  br i1 %i.n, label %bb.c, label %bb.az

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !133
  %i.q = icmp eq i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.t = load i8, ptr %i.s, align 1, !tbaa !186, !range !78, !noundef !82
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.e

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.d
  %.0.in.pre.i.i = load i8, ptr %i.r, align 4, !tbaa !77, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.h, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.j, %i.x
  %or.cond = select i1 %i.v, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %2, align 8, !tbaa !187    ; 2 uses
  %i.aa = and i32 %i.j, 2147483584                ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.not37.i.i.not.i.i356.not = icmp eq i32 %i.aa, 0
  br i1 %.not37.i.i.not.i.i356.not, label %.critedge.i.i.i.i, label %.lr.ph358

bb.g:                                             ; preds = %.lr.ph358
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i357, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ab
  br i1 %.not37.i.i.not.i.i, label %.lr.ph358, label %.critedge.i.i.i.i, !llvm.loop !188

.lr.ph358:                                        ; preds = %bb.f, %bb.g
  %indvars.iv.i.i357 = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ac = lshr exact i64 %indvars.iv.i.i357, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !188

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.not38.i.i.i.i = icmp eq i32 %i.j, %i.aa
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.ag = lshr i32 %i.j, 6
  %i.ah = and i32 %i.j, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ai
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !50
  %.demorgan.i.i = or i64 %i.al, %notmask.i40.i.i.i.i
  %i.am = icmp eq i64 %.demorgan.i.i, -1
  %i.an = zext i1 %i.am to i16
  %i.ao = or disjoint i16 %i.an, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph358, %bb.h, %.critedge.i.i.i.i, %bb.e
  %.sroa.0.0.insert.ext.i.i = phi i16 [ %i.ao, %bb.h ], [ 256, %bb.e ], [ 257, %.critedge.i.i.i.i ], [ 256, %.lr.ph358 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.r, align 4
  %i.ap = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ap, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.i

bb.i:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i", %.lr.ph.i
  %.07.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.bh, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i" ] ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.as, i1 noundef zeroext true)
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !53 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !54
  %i.aw = and i8 %i.av, 2
  %.not.i3.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i3.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i", label %bb.j, !prof !60

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i": ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61
  %i.az = zext i32 %.07.i to i64                  ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.bd = and i64 %i.az, 7
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62
  %i.bg = and i8 %i.bf, %i.bc
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !62
  %i.bh = add i32 %.07.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.j
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.i, !llvm.loop !189

bb.k:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bi = load ptr, ptr %2, align 8, !tbaa !187   ; 4 uses
  %i.bj = add i32 %i.h, 63                        ; 2 uses
  %i.bk = srem i32 %i.bj, 64
  %i.bl = sub nsw i32 %i.bj, %i.bk                ; 6 uses
  %i.bm = and i32 %i.j, -64                       ; 6 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bo = ashr i32 %i.j, 6
  %i.bp = and i32 %i.j, 63
  %i.bq = zext nneg i32 %i.bp to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bq
  %i.br = xor i64 %notmask.i.i.i.i.i, -1
  %i.bs = sub nsw i32 %i.bl, %i.h                 ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bt
  %i.bu = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bv = sub nsw i32 64, %i.bs
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl i64 %i.bu, %i.bw
  %i.by = and i64 %i.bx, %i.br
  %i.bz = sext i32 %i.bo to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.cc = and i64 %i.by, %i.cb                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.m

bb.m:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.cc, %.preheader.i.i.i.i.i ], [ %i.cv, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i" ] ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.cf, i1 noundef zeroext true)
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !54
  %i.cj = and i8 %i.ci, 2
  %.not.i3.i.i.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i3.i.i.i.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i", label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i": ; preds = %bb.m
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %15 = trunc nuw nsw i64 %i.ck to i32
  %16 = or disjoint i32 %i.bm, %15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !61
  %17 = zext i32 %16 to i64                       ; 2 uses
  %i.cn = lshr i64 %17, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !62
  %i.cq = and i64 %17, 7
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !62
  %i.ct = and i8 %i.cs, %i.cp
  store i8 %i.ct, ptr %i.co, align 1, !tbaa !62
  %i.cu = add nsw i64 %.011.i.i.i.i.i, -1
  %i.cv = and i64 %i.cu, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.m, !llvm.loop !190

bb.o:                                             ; preds = %bb.k
  %.not32.i.i.i.i = icmp eq i32 %i.h, %i.bl
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = sdiv i32 %i.h, 64                       ; 2 uses
  %i.cx = sub nsw i32 %i.bl, %i.h                 ; 2 uses
  %i.cy = zext nneg i32 %i.cx to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.cy
  %i.cz = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.da = sub nsw i32 64, %i.cx
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl i64 %i.cz, %i.db
  %i.dd = sext i32 %i.cw to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !50
  %i.dg = and i64 %i.df, %i.dc                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.p
  %i.dh = shl nsw i32 %i.cw, 6
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.q

bb.q:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i", %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.dg, %.preheader.i37.i.i.i.i ], [ %i.ea, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i" ] ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.dk, i1 noundef zeroext true)
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !53 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !54
  %i.do = and i8 %i.dn, 2
  %.not.i3.i.i.i40.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i.i.i40.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i", label %bb.r, !prof !60

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i": ; preds = %bb.q
  %i.dp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %18 = trunc nuw nsw i64 %i.dp to i32
  %19 = or disjoint i32 %i.dh, %18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !61
  %20 = zext i32 %19 to i64                       ; 2 uses
  %i.ds = lshr i64 %20, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !62
  %i.dv = and i64 %20, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !62
  %i.dz = add i64 %.011.i38.i.i.i.i, -1
  %i.ea = and i64 %i.dz, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i42.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not10.i42.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.q, !llvm.loop !190

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i", %bb.p, %bb.o
  %i.eb = add nsw i32 %i.bl, 64                   ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.eb, %i.bm
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.s

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %.not34.i.i.i.i = icmp eq i32 %i.j, %i.bm
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.y

bb.s:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.ee = phi i32 [ %i.eb, %.lr.ph.i.i.i.i ], [ %i.fw, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.ee, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.ef = sdiv i32 %.060.i.i.i.i, 64              ; 3 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !50 ; 2 uses
  switch i64 %i.ei, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.t
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s
  %i.ej = shl nsw i32 %i.ef, 6
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ek = shl nsw i32 %i.ef, 6                    ; 2 uses
  %i.el = add i32 %i.ek, 64
  %i.em = sext i32 %i.el to i64
  %.0.off.i.i.i.i = add i32 %.060.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.t
  %i.en = sext i32 %i.ek to i64
  br label %bb.u

bb.u:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i", %.lr.ph24.i.i.i.i.i
  %.023.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph24.i.i.i.i.i ], [ %i.fd, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i" ] ; 3 uses
  %i.eo = load i32, ptr %i.ed, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.eo, i1 noundef zeroext true)
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !53 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !54
  %i.es = and i8 %i.er, 2
  %.not.i3.i.i.i44.i.i.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i3.i.i.i44.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i", label %bb.v, !prof !60

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i": ; preds = %bb.u
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !61
  %i.ev = lshr i64 %.023.i.i.i.i.i, 3
  %i.ew = and i64 %i.ev, 536870911
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ew ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !62
  %i.ez = and i64 %.023.i.i.i.i.i, 7
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !62
  %i.fc = and i8 %i.fb, %i.ey
  store i8 %i.fc, ptr %i.ex, align 1, !tbaa !62
  %i.fd = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.em
  br i1 %i.fe, label %bb.u, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !191

bb.w:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %i.fv, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i" ] ; 3 uses
  %i.ff = load i32, ptr %i.ed, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.ff, i1 noundef zeroext true)
  %i.fg = load ptr, ptr %i.ec, align 8, !tbaa !53 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 44
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !54
  %i.fj = and i8 %i.fi, 2
  %.not.i3.i.i18.i.i.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i3.i.i18.i.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i", label %bb.x, !prof !60

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i": ; preds = %bb.w
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %21 = trunc nuw nsw i64 %i.fk to i32
  %22 = or disjoint i32 %i.ej, %21
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !61
  %23 = zext i32 %22 to i64                       ; 2 uses
  %i.fn = lshr i64 %23, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !62
  %i.fq = and i64 %23, 7
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !62
  %i.ft = and i8 %i.fs, %i.fp
  store i8 %i.ft, ptr %i.fo, align 1, !tbaa !62
  %i.fu = add i64 %.01522.i.i.i.i.i, -1
  %i.fv = and i64 %i.fu, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i47.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.w, !llvm.loop !192

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i", %bb.t, %bb.s
  %i.fw = add nsw i32 %i.ee, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fw, %i.bm
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.s, !llvm.loop !193

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.fx = ashr i32 %i.j, 6
  %i.fy = and i32 %i.j, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.fz
  %i.ga = xor i64 %notmask.i48.i.i.i.i, -1
  %i.gb = sext i32 %i.fx to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !50
  %i.ge = and i64 %i.gd, %i.ga                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.z

bb.z:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i
  %.011.i51.i.i.i.i = phi i64 [ %i.ge, %.preheader.i50.i.i.i.i ], [ %i.gx, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i" ] ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.gh, i1 noundef zeroext true)
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !53 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !54
  %i.gl = and i8 %i.gk, 2
  %.not.i3.i.i.i53.i.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i3.i.i.i53.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i", label %bb.aa, !prof !60

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i": ; preds = %bb.z
  %i.gm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i, i1 true)
  %24 = trunc nuw nsw i64 %i.gm to i32
  %25 = or disjoint i32 %i.bm, %24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !61
  %26 = zext i32 %25 to i64                       ; 2 uses
  %i.gp = lshr i64 %26, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !62
  %i.gs = and i64 %26, 7
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !62
  %i.gv = and i8 %i.gu, %i.gr
  store i8 %i.gv, ptr %i.gq, align 1, !tbaa !62
  %i.gw = add nsw i64 %.011.i51.i.i.i.i, -1
  %i.gx = and i64 %i.gw, %.011.i51.i.i.i.i        ; 2 uses
  %.not10.i55.i.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not10.i55.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.z, !llvm.loop !190

bb.ab:                                            ; preds = %bb.c
  br i1 %i.u, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75, label %bb.ac

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75: ; preds = %bb.ab
  %.0.in.pre.i.i76 = load i8, ptr %i.r, align 4, !tbaa !77, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25

bb.ac:                                            ; preds = %bb.ab
  %i.gy = icmp eq i32 %i.h, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = icmp eq i32 %i.j, %i.ha
  %or.cond213 = select i1 %i.gy, i1 %i.hb, i1 false
  br i1 %or.cond213, label %bb.ad, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23

bb.ad:                                            ; preds = %bb.ac
  %i.hc = load ptr, ptr %2, align 8, !tbaa !187   ; 2 uses
  %i.hd = and i32 %i.j, 2147483584                ; 3 uses
  %i.he = zext nneg i32 %i.hd to i64
  %.not37.i.i.not.i.i69353.not = icmp eq i32 %i.hd, 0
  br i1 %.not37.i.i.not.i.i69353.not, label %.critedge.i.i.i.i70, label %.lr.ph355

bb.ae:                                            ; preds = %.lr.ph355
  %indvars.iv.next.i.i74 = add nuw nsw i64 %indvars.iv.i.i68354, 64 ; 2 uses
  %.not37.i.i.not.i.i69 = icmp samesign ult i64 %indvars.iv.next.i.i74, %i.he
  br i1 %.not37.i.i.not.i.i69, label %.lr.ph355, label %.critedge.i.i.i.i70, !llvm.loop !188

.lr.ph355:                                        ; preds = %bb.ad, %bb.ae
  %indvars.iv.i.i68354 = phi i64 [ %indvars.iv.next.i.i74, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.hf = lshr exact i64 %indvars.iv.i.i68354, 3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !50
  %i.hi = icmp eq i64 %i.hh, -1
  br i1 %i.hi, label %bb.ae, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23, !llvm.loop !188

.critedge.i.i.i.i70:                              ; preds = %bb.ae, %bb.ad
  %.not38.i.i.i.i71 = icmp eq i32 %i.j, %i.hd
  br i1 %.not38.i.i.i.i71, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23, label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.i.i70
  %i.hj = lshr i32 %i.j, 6
  %i.hk = and i32 %i.j, 63
  %i.hl = zext nneg i32 %i.hk to i64
  %notmask.i40.i.i.i.i72 = shl nsw i64 -1, %i.hl
  %i.hm = zext nneg i32 %i.hj to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hm
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !50
  %.demorgan.i.i73 = or i64 %i.ho, %notmask.i40.i.i.i.i72
  %i.hp = icmp eq i64 %.demorgan.i.i73, -1
  %i.hq = zext i1 %i.hp to i16
  %i.hr = or disjoint i16 %i.hq, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23: ; preds = %.lr.ph355, %bb.af, %.critedge.i.i.i.i70, %bb.ac
  %.sroa.0.0.insert.ext.i.i24 = phi i16 [ %i.hr, %bb.af ], [ 256, %bb.ac ], [ 257, %.critedge.i.i.i.i70 ], [ 256, %.lr.ph355 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i24, ptr %i.r, align 4
  %i.hs = trunc i16 %.sroa.0.0.insert.ext.i.i24 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75
  %.0.in.i.i26 = phi i8 [ %.0.in.pre.i.i76, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75 ], [ %i.hs, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23 ]
  %.0.i.i27 = trunc nuw i8 %.0.in.i.i26 to i1
  br i1 %.0.i.i27, label %.lr.ph.i64, label %bb.ai

.lr.ph.i64:                                       ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i", %.lr.ph.i64
  %.08.i = phi i32 [ %i.h, %.lr.ph.i64 ], [ %i.ik, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i" ] ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.hv, i1 noundef zeroext true)
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !53 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 44
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !54
  %i.hz = and i8 %i.hy, 2
  %.not.i3.i.i.i65 = icmp eq i8 %i.hz, 0
  br i1 %.not.i3.i.i.i65, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i", label %bb.ah, !prof !60

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i": ; preds = %bb.ag
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !61
  %i.ic = zext i32 %.08.i to i64                  ; 2 uses
  %i.id = lshr i64 %i.ic, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !62
  %i.ig = and i64 %i.ic, 7
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !62
  %i.ij = and i8 %i.ii, %i.if
  store i8 %i.ij, ptr %i.ie, align 1, !tbaa !62
  %i.ik = add i32 %.08.i, 1                       ; 2 uses
  %exitcond.not.i66 = icmp eq i32 %i.ik, %i.j
  br i1 %exitcond.not.i66, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.ag, !llvm.loop !194

bb.ai:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25
  %i.il = load ptr, ptr %2, align 8, !tbaa !187   ; 4 uses
  %i.im = add i32 %i.h, 63                        ; 2 uses
  %i.in = srem i32 %i.im, 64
  %i.io = sub nsw i32 %i.im, %i.in                ; 6 uses
  %i.ip = and i32 %i.j, -64                       ; 6 uses
  %i.iq = icmp slt i32 %i.ip, %i.io
  br i1 %i.iq, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ir = ashr i32 %i.j, 6
  %i.is = and i32 %i.j, 63
  %i.it = zext nneg i32 %i.is to i64
  %notmask.i.i.i.i.i57 = shl nsw i64 -1, %i.it
  %i.iu = xor i64 %notmask.i.i.i.i.i57, -1
  %i.iv = sub nsw i32 %i.io, %i.h                 ; 2 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %notmask.i.i.i.i.i.i58 = shl nsw i64 -1, %i.iw
  %i.ix = xor i64 %notmask.i.i.i.i.i.i58, -1
  %i.iy = sub nsw i32 64, %i.iv
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %i.ix, %i.iz
  %i.jb = and i64 %i.ja, %i.iu
  %i.jc = sext i32 %i.ir to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !50
  %i.jf = and i64 %i.jb, %i.je                    ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.jf, 0
  br i1 %.not.i.i.i.i.i59, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i60

.preheader.i.i.i.i.i60:                           ; preds = %bb.aj
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i", %.preheader.i.i.i.i.i60
  %.011.i.i.i.i.i61 = phi i64 [ %i.jf, %.preheader.i.i.i.i.i60 ], [ %i.jy, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i" ] ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.ji, i1 noundef zeroext true)
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !53 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 44
  %i.jl = load i8, ptr %i.jk, align 4, !tbaa !54
  %i.jm = and i8 %i.jl, 2
  %.not.i3.i.i.i.i.i.i.i62 = icmp eq i8 %i.jm, 0
  br i1 %.not.i3.i.i.i.i.i.i.i62, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i", label %bb.al, !prof !60

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i": ; preds = %bb.ak
  %i.jn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i61, i1 true)
  %27 = trunc nuw nsw i64 %i.jn to i32
  %28 = or disjoint i32 %i.ip, %27
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !61
  %29 = zext i32 %28 to i64                       ; 2 uses
  %i.jq = lshr i64 %29, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jq ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !62
  %i.jt = and i64 %29, 7
  %i.ju = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !62
  %i.jw = and i8 %i.jv, %i.js
  store i8 %i.jw, ptr %i.jr, align 1, !tbaa !62
  %i.jx = add nsw i64 %.011.i.i.i.i.i61, -1
  %i.jy = and i64 %i.jx, %.011.i.i.i.i.i61        ; 2 uses
  %.not10.i.i.i.i.i63 = icmp eq i64 %i.jy, 0
  br i1 %.not10.i.i.i.i.i63, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.ak, !llvm.loop !195

bb.am:                                            ; preds = %bb.ai
  %.not32.i.i.i.i29 = icmp eq i32 %i.h, %i.io
  br i1 %.not32.i.i.i.i29, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jz = sdiv i32 %i.h, 64                       ; 2 uses
  %i.ka = sub nsw i32 %i.io, %i.h                 ; 2 uses
  %i.kb = zext nneg i32 %i.ka to i64
  %notmask.i.i35.i.i.i.i30 = shl nsw i64 -1, %i.kb
  %i.kc = xor i64 %notmask.i.i35.i.i.i.i30, -1
  %i.kd = sub nsw i32 64, %i.ka
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = shl i64 %i.kc, %i.ke
  %i.kg = sext i32 %i.jz to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !50
  %i.kj = and i64 %i.ki, %i.kf                    ; 2 uses
  %.not.i36.i.i.i.i31 = icmp eq i64 %i.kj, 0
  br i1 %.not.i36.i.i.i.i31, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %.preheader.i37.i.i.i.i32

.preheader.i37.i.i.i.i32:                         ; preds = %bb.an
  %i.kk = shl nsw i32 %i.jz, 6
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i", %.preheader.i37.i.i.i.i32
  %.011.i38.i.i.i.i33 = phi i64 [ %i.kj, %.preheader.i37.i.i.i.i32 ], [ %i.ld, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i" ] ; 3 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.kn, i1 noundef zeroext true)
  %i.ko = load ptr, ptr %i.kl, align 8, !tbaa !53 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 44
  %i.kq = load i8, ptr %i.kp, align 4, !tbaa !54
  %i.kr = and i8 %i.kq, 2
  %.not.i3.i.i.i40.i.i.i.i34 = icmp eq i8 %i.kr, 0
  br i1 %.not.i3.i.i.i40.i.i.i.i34, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i", label %bb.ap, !prof !60

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i": ; preds = %bb.ao
  %i.ks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i33, i1 true)
  %30 = trunc nuw nsw i64 %i.ks to i32
  %31 = or disjoint i32 %i.kk, %30
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !61
  %32 = zext i32 %31 to i64                       ; 2 uses
  %i.kv = lshr i64 %32, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kv ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !62
  %i.ky = and i64 %32, 7
  %i.kz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !62
  %i.lb = and i8 %i.la, %i.kx
  store i8 %i.lb, ptr %i.kw, align 1, !tbaa !62
  %i.lc = add i64 %.011.i38.i.i.i.i33, -1
  %i.ld = and i64 %i.lc, %.011.i38.i.i.i.i33      ; 2 uses
  %.not10.i42.i.i.i.i35 = icmp eq i64 %i.ld, 0
  br i1 %.not10.i42.i.i.i.i35, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.ao, !llvm.loop !195

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i", %bb.an, %bb.am
  %i.le = add nsw i32 %i.io, 64                   ; 2 uses
  %.not3359.i.i.i.i36 = icmp sgt i32 %i.le, %i.ip
  br i1 %.not3359.i.i.i.i36, label %._crit_edge.i.i.i.i40, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.aq

._crit_edge.i.i.i.i40:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %.not34.i.i.i.i41 = icmp eq i32 %i.j, %i.ip
  br i1 %.not34.i.i.i.i41, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.aw

bb.aq:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i37
  %i.lh = phi i32 [ %i.le, %.lr.ph.i.i.i.i37 ], [ %i.mz, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.060.i.i.i.i38 = phi i32 [ %i.io, %.lr.ph.i.i.i.i37 ], [ %i.lh, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.li = sdiv i32 %.060.i.i.i.i38, 64            ; 3 uses
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.lj
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !50 ; 2 uses
  switch i64 %i.ll, label %.lr.ph.i.i.i.i.i53 [
    i64 -1, label %bb.ar
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i53:                               ; preds = %bb.aq
  %i.lm = shl nsw i32 %i.li, 6
  br label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ln = shl nsw i32 %i.li, 6                    ; 2 uses
  %i.lo = add i32 %i.ln, 64
  %i.lp = sext i32 %i.lo to i64
  %.0.off.i.i.i.i48 = add i32 %.060.i.i.i.i38, 127
  %.not25.i.i.i.i.i49 = icmp ult i32 %.0.off.i.i.i.i48, 64
  br i1 %.not25.i.i.i.i.i49, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i50

.lr.ph24.i.i.i.i.i50:                             ; preds = %bb.ar
  %i.lq = sext i32 %i.ln to i64
  br label %bb.as

bb.as:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i", %.lr.ph24.i.i.i.i.i50
  %.023.i.i.i.i.i51 = phi i64 [ %i.lq, %.lr.ph24.i.i.i.i.i50 ], [ %i.mg, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i" ] ; 3 uses
  %i.lr = load i32, ptr %i.lg, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.lr, i1 noundef zeroext true)
  %i.ls = load ptr, ptr %i.lf, align 8, !tbaa !53 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 44
  %i.lu = load i8, ptr %i.lt, align 4, !tbaa !54
  %i.lv = and i8 %i.lu, 2
  %.not.i3.i.i.i44.i.i.i.i52 = icmp eq i8 %i.lv, 0
  br i1 %.not.i3.i.i.i44.i.i.i.i52, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i", label %bb.at, !prof !60

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i": ; preds = %bb.as
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !61
  %i.ly = lshr i64 %.023.i.i.i.i.i51, 3
  %i.lz = and i64 %i.ly, 536870911
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lz ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !62
  %i.mc = and i64 %.023.i.i.i.i.i51, 7
  %i.md = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !62
  %i.mf = and i8 %i.me, %i.mb
  store i8 %i.mf, ptr %i.ma, align 1, !tbaa !62
  %i.mg = add nuw i64 %.023.i.i.i.i.i51, 1        ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.lp
  br i1 %i.mh, label %bb.as, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !196

bb.au:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i", %.lr.ph.i.i.i.i.i53
  %.01522.i.i.i.i.i54 = phi i64 [ %i.ll, %.lr.ph.i.i.i.i.i53 ], [ %i.my, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i" ] ; 3 uses
  %i.mi = load i32, ptr %i.lg, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.mi, i1 noundef zeroext true)
  %i.mj = load ptr, ptr %i.lf, align 8, !tbaa !53 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 44
  %i.ml = load i8, ptr %i.mk, align 4, !tbaa !54
  %i.mm = and i8 %i.ml, 2
  %.not.i3.i.i18.i.i.i.i.i55 = icmp eq i8 %i.mm, 0
  br i1 %.not.i3.i.i18.i.i.i.i.i55, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i", label %bb.av, !prof !60

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i": ; preds = %bb.au
  %i.mn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i54, i1 true)
  %33 = trunc nuw nsw i64 %i.mn to i32
  %34 = or disjoint i32 %i.lm, %33
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !61
  %35 = zext i32 %34 to i64                       ; 2 uses
  %i.mq = lshr i64 %35, 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mq ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !62
  %i.mt = and i64 %35, 7
  %i.mu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !62
  %i.mw = and i8 %i.mv, %i.ms
  store i8 %i.mw, ptr %i.mr, align 1, !tbaa !62
  %i.mx = add i64 %.01522.i.i.i.i.i54, -1
  %i.my = and i64 %i.mx, %.01522.i.i.i.i.i54      ; 2 uses
  %.not.i47.i.i.i.i56 = icmp eq i64 %i.my, 0
  br i1 %.not.i47.i.i.i.i56, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.au, !llvm.loop !197

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i", %bb.ar, %bb.aq
  %i.mz = add nsw i32 %i.lh, 64                   ; 2 uses
  %.not33.i.i.i.i39 = icmp sgt i32 %i.mz, %i.ip
  br i1 %.not33.i.i.i.i39, label %._crit_edge.i.i.i.i40, label %bb.aq, !llvm.loop !198

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i40
  %i.na = ashr i32 %i.j, 6
  %i.nb = and i32 %i.j, 63
  %i.nc = zext nneg i32 %i.nb to i64
  %notmask.i48.i.i.i.i42 = shl nsw i64 -1, %i.nc
  %i.nd = xor i64 %notmask.i48.i.i.i.i42, -1
  %i.ne = sext i32 %i.na to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.ne
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !50
  %i.nh = and i64 %i.ng, %i.nd                    ; 2 uses
  %.not.i49.i.i.i.i43 = icmp eq i64 %i.nh, 0
  br i1 %.not.i49.i.i.i.i43, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i50.i.i.i.i44

.preheader.i50.i.i.i.i44:                         ; preds = %bb.aw
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i44
  %.011.i51.i.i.i.i45 = phi i64 [ %i.nh, %.preheader.i50.i.i.i.i44 ], [ %i.oa, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i" ] ; 3 uses
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !51
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.nk, i1 noundef zeroext true)
  %i.nl = load ptr, ptr %i.ni, align 8, !tbaa !53 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 44
  %i.nn = load i8, ptr %i.nm, align 4, !tbaa !54
  %i.no = and i8 %i.nn, 2
  %.not.i3.i.i.i53.i.i.i.i46 = icmp eq i8 %i.no, 0
  br i1 %.not.i3.i.i.i53.i.i.i.i46, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i", label %bb.ay, !prof !60

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i": ; preds = %bb.ax
  %i.np = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i45, i1 true)
  %36 = trunc nuw nsw i64 %i.np to i32
  %37 = or disjoint i32 %i.ip, %36
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !61
  %38 = zext i32 %37 to i64                       ; 2 uses
  %i.ns = lshr i64 %38, 3
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ns ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !62
  %i.nv = and i64 %38, 7
  %i.nw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !62
  %i.ny = and i8 %i.nx, %i.nu
  store i8 %i.ny, ptr %i.nt, align 1, !tbaa !62
  %i.nz = add nsw i64 %.011.i51.i.i.i.i45, -1
  %i.oa = and i64 %i.nz, %.011.i51.i.i.i.i45      ; 2 uses
  %.not10.i55.i.i.i.i47 = icmp eq i64 %i.oa, 0
  br i1 %.not10.i55.i.i.i.i47, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.ax, !llvm.loop !195

bb.az:                                            ; preds = %bb.b
  %i.ob = load ptr, ptr %1, align 8, !tbaa !69
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 128
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = tail call noundef ptr %i.od(ptr noundef nonnull align 8 dereferenceable(94) %1)
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !66
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !66
  %i.oj = icmp eq ptr %i.og, %i.oi
  br i1 %i.oj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3)
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
  br label %bb.dx

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(94) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52
  store ptr %i.ol, ptr %i.d, align 8, !tbaa !199
  %i.om = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.on = load i8, ptr %i.om, align 8, !tbaa !200, !range !78, !noundef !82
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !51
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.oq, i1 noundef zeroext true)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.or = load ptr, ptr %i.ok, align 8, !tbaa !52
  store ptr %i.or, ptr %i.d, align 8, !tbaa !199
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.bf:                                            ; preds = %bb.bd, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.c, ptr %12, align 8
  %.sroa.2193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %13, ptr %.sroa.2193.0..sroa_idx, align 8
  %.sroa.3194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.d, ptr %.sroa.3194.0..sroa_idx, align 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %0, ptr %.sroa.4195.0..sroa_idx, align 8
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.e, ptr %.sroa.5196.0..sroa_idx, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 37 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !186, !range !78, !noundef !82
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110, label %bb.bg

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110: ; preds = %bb.bf
  %.0.in.pre.i.i111 = load i8, ptr %i.ot, align 4, !tbaa !77, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79

bb.bg:                                            ; preds = %bb.bf
  %i.ox = load i32, ptr %i.g, align 4, !tbaa !184
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.bh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

bb.bh:                                            ; preds = %bb.bg
  %i.oz = load i32, ptr %i.i, align 8, !tbaa !185 ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !210
  %i.pc = icmp eq i32 %i.oz, %i.pb
  br i1 %i.pc, label %bb.bi, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

bb.bi:                                            ; preds = %bb.bh
  %i.pd = load ptr, ptr %2, align 8, !tbaa !187   ; 2 uses
  %.not.i.i.i102 = icmp sgt i32 %i.oz, 0
  br i1 %.not.i.i.i102, label %bb.bj, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

bb.bj:                                            ; preds = %bb.bi
  %i.pe = and i32 %i.oz, 2147483584               ; 3 uses
  %i.pf = zext nneg i32 %i.pe to i64
  %.not37.i.i.not.i.i104348.not = icmp eq i32 %i.pe, 0
  br i1 %.not37.i.i.not.i.i104348.not, label %.critedge.i.i.i.i105, label %.lr.ph

bb.bk:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i109 = add nuw nsw i64 %indvars.iv.i.i103349, 64 ; 2 uses
  %.not37.i.i.not.i.i104 = icmp samesign ult i64 %indvars.iv.next.i.i109, %i.pf
  br i1 %.not37.i.i.not.i.i104, label %.lr.ph, label %.critedge.i.i.i.i105, !llvm.loop !188

.lr.ph:                                           ; preds = %bb.bj, %bb.bk
  %indvars.iv.i.i103349 = phi i64 [ %indvars.iv.next.i.i109, %bb.bk ], [ 0, %bb.bj ] ; 2 uses
  %i.pg = lshr exact i64 %indvars.iv.i.i103349, 3
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pg
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !50
  %i.pj = icmp eq i64 %i.pi, -1
  br i1 %i.pj, label %bb.bk, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77, !llvm.loop !188

.critedge.i.i.i.i105:                             ; preds = %bb.bk, %bb.bj
  %.not38.i.i.i.i106 = icmp eq i32 %i.oz, %i.pe
  br i1 %.not38.i.i.i.i106, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77, label %bb.bl

bb.bl:                                            ; preds = %.critedge.i.i.i.i105
  %i.pk = lshr i32 %i.oz, 6
  %i.pl = and i32 %i.oz, 63
  %i.pm = zext nneg i32 %i.pl to i64
  %notmask.i40.i.i.i.i107 = shl nsw i64 -1, %i.pm
  %i.pn = zext nneg i32 %i.pk to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pn
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !50
  %.demorgan.i.i108 = or i64 %i.pp, %notmask.i40.i.i.i.i107
  %i.pq = icmp eq i64 %.demorgan.i.i108, -1
  %i.pr = zext i1 %i.pq to i16
  %i.ps = or disjoint i16 %i.pr, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77: ; preds = %.lr.ph, %bb.bl, %.critedge.i.i.i.i105, %bb.bi, %bb.bh, %bb.bg
  %.sroa.0.0.insert.ext.i.i78 = phi i16 [ 256, %bb.bh ], [ 256, %bb.bg ], [ 257, %bb.bi ], [ 257, %.critedge.i.i.i.i105 ], [ %i.ps, %bb.bl ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i78, ptr %i.ot, align 4
  %i.pt = trunc i16 %.sroa.0.0.insert.ext.i.i78 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110
  %.0.in.i.i80 = phi i8 [ %.0.in.pre.i.i111, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110 ], [ %i.pt, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77 ]
  %.0.i.i81 = trunc nuw i8 %.0.in.i.i80 to i1
  %i.pu = load i32, ptr %i.g, align 4, !tbaa !184 ; 8 uses
  br i1 %.0.i.i81, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79
  %i.pv = load i32, ptr %i.i, align 8, !tbaa !185 ; 2 uses
  %i.pw = icmp slt i32 %i.pu, %i.pv
  br i1 %i.pw, label %.lr.ph.i100, label %.loopexit235

.lr.ph.i100:                                      ; preds = %bb.bm, %.lr.ph.i100
  %.06.i = phi i32 [ %i.px, %.lr.ph.i100 ], [ %i.pu, %bb.bm ] ; 2 uses
  call fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi"(ptr noundef nonnull readonly align 8 dereferenceable(40) %12, i32 noundef %.06.i)
  %i.px = add nsw i32 %.06.i, 1                   ; 2 uses
  %exitcond.not.i101 = icmp eq i32 %i.px, %i.pv
  br i1 %exitcond.not.i101, label %.loopexit235, label %.lr.ph.i100, !llvm.loop !211

bb.bn:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79
  %i.py = load ptr, ptr %2, align 8, !tbaa !187   ; 6 uses
  %i.pz = load i32, ptr %i.i, align 8, !tbaa !185 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %12, i64 40, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %12, i64 40, i1 false)
  store i8 1, ptr %10, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.py, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %11, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.py, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i82 = icmp slt i32 %i.pu, %i.pz
  br i1 %.not.i.i.i.i82, label %bb.bo, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i"

bb.bo:                                            ; preds = %bb.bn
  %i.qa = add i32 %i.pu, 63                       ; 2 uses
  %i.qb = srem i32 %i.qa, 64
  %i.qc = sub nsw i32 %i.qa, %i.qb                ; 6 uses
  %i.qd = and i32 %i.pz, -64                      ; 6 uses
  %i.qe = icmp slt i32 %i.qd, %i.qc
  br i1 %i.qe, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qf = ashr i32 %i.pz, 6
  %i.qg = and i32 %i.pz, 63
  %i.qh = zext nneg i32 %i.qg to i64
  %notmask.i.i.i.i.i94 = shl nsw i64 -1, %i.qh
  %i.qi = xor i64 %notmask.i.i.i.i.i94, -1
  %i.qj = sub nsw i32 %i.qc, %i.pu                ; 2 uses
  %i.qk = zext nneg i32 %i.qj to i64
  %notmask.i.i.i.i.i.i95 = shl nsw i64 -1, %i.qk
  %i.ql = xor i64 %notmask.i.i.i.i.i.i95, -1
  %i.qm = sub nsw i32 64, %i.qj
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = shl i64 %i.ql, %i.qn
  %i.qp = and i64 %i.qo, %i.qi
  %i.qq = sext i32 %i.qf to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qq
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !50
  %i.qt = and i64 %i.qp, %i.qs                    ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq i64 %i.qt, 0
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7isAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKi:bb.a
  %.not.i.i = icmp eq ptr %i.v, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.neg.i.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !184
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !185
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !182
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = invoke noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKS1_PKiEUlS8_E_EEbS8_(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr nonnull %4, ptr nonnull %i.d)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.ad, label %.sink.split, label %bb.o

bb.k:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.ag = invoke noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(38) %i.w)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  br i1 %i.ag, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %bb.j
  %i.ah = load atomic i8, ptr %i.j seq_cst, align 8, !range !78, !noundef !82
  %i.ai = zext nneg i8 %i.ah to i16
  %i.aj = or disjoint i16 %i.ai, 256
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.g, %bb.n, %bb.j
  %.sroa.3.1 = phi i16 [ 0, %bb.n ], [ 0, %bb.j ], [ 0, %bb.g ], [ %i.aj, %.sink.split ]
  %i.ak = load i16, ptr %i.l, align 8, !tbaa !309 ; 2 uses
  %.not.i.i10 = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i10, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %4, align 8, !tbaa !303   ; 7 uses
  switch i16 %i.ak, label %bb.v [
    i16 1, label %bb.q
    i16 3, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.am = load atomic i32, ptr %i.al acquire, align 4
  %i.an = and i32 %i.am, 768
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.al)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.r
  br i1 %i.ap, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.noexc, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.aq = atomicrmw sub ptr %i.al, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ar = add i32 %i.aq, -2048                    ; 2 uses
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !3
  %i.as = icmp ugt i32 %i.ar, 2047
  %i.at = and i32 %i.aq, 16
  %.not.i.i.i.i = icmp eq i32 %i.at, 0
  %or.cond.i.i.i = or i1 %i.as, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.t, !prof !311

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.x

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.u:                                             ; preds = %bb.p
  %i.au = load i16, ptr %i.m, align 2, !tbaa !310
  %i.av = zext i16 %i.au to i64
  %i.aw = ptrtoint ptr %i.al to i64
  %.idx.i = shl nuw nsw i64 %i.av, 5
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ay = cmpxchg ptr %i.ax, i64 %i.aw, i64 0 seq_cst seq_cst, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ba = atomicrmw sub ptr %i.al, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bb = add i32 %i.ba, -2048                    ; 2 uses
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !3
  %i.bc = icmp ugt i32 %i.bb, 2047
  %i.bd = and i32 %i.ba, 16
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  %or.cond.i.i = or i1 %i.bc, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.w, !prof !311

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.x

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #39
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i16 %.sroa.3.1

bb.y:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.ae, %bb.k ]
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE10setIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEbRKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(38) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr", align 8  ; 9 uses
  tail call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !242, !alias.scope !318
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !246, !alias.scope !318
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !318
  %i.f = load atomic i32, ptr %i.d acquire, align 8, !noalias !318 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !3, !noalias !318
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge.i.i.i.i.i.i.i, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr %i.d, i32 %i.f, i32 %i.i seq_cst seq_cst, align 4, !noalias !318 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !247

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !318
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !318 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !318
  store i8 1, ptr %i.e, align 8, !tbaa !246, !alias.scope !318
  %i.n = load ptr, ptr %4, align 8, !tbaa !242    ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %.neg.i.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !185
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = invoke noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.o, ptr noundef nonnull align 8 dereferenceable(38) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i8, ptr %i.c seq_cst, align 8, !range !78, !noundef !82
  %5 = trunc nuw i8 %i.v to i1
  %6 = and i1 %1, %5
  %7 = zext i1 %6 to i8
  store atomic i8 %7, ptr %i.c seq_cst, align 8
  %.pre = load ptr, ptr %4, align 8, !tbaa !242
  br label %bb.i

bb.g:                                             ; preds = %bb.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.x = zext i1 %1 to i8
  store atomic i8 %i.x, ptr %i.c seq_cst, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.y = phi ptr [ %.pre, %bb.f ], [ %i.n, %bb.h ] ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.y, null
  %.neg.i.i9 = select i1 %.not.i.i8, i64 0, i64 -40
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.neg.i.i9
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.z, ptr noundef nonnull align 8 dereferenceable(38) %2)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !242   ; 4 uses
  %.not.i.i10 = icmp eq ptr %i.aa, null
  %.neg.i.i11 = select i1 %.not.i.i10, i64 0, i64 -40
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.neg.i.i11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !185
  %i.ag = icmp sge i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ai = zext i1 %i.ag to i8
  store atomic i8 %i.ai, ptr %i.ah seq_cst, align 1
  %i.aj = load i8, ptr %i.e, align 8, !tbaa !246, !range !78, !noundef !82
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.al = atomicrmw and ptr %i.aa, i32 -401 seq_cst, align 4 ; 2 uses
  %i.am = and i32 %i.al, -401
  store i32 %i.am, ptr %i.a, align 4, !tbaa !3
  %i.an = and i32 %i.al, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.l, !prof !60

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.m

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #39
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.j, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 4 uses
  %3 = alloca %"class.folly::LockedPtr.217", align 8 ; 9 uses
  %4 = alloca %"class.folly::LockedPtr", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !303, !alias.scope !325
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !309, !alias.scope !325
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !310, !alias.scope !325
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !325
  %i.i = load atomic i32, ptr %i.f monotonic, align 8, !noalias !325 ; 4 uses
  store i32 %i.i, ptr %i.e, align 4, !tbaa !3, !noalias !325
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr %i.f, i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !325 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.e, align 4, !noalias !325
  br label %bb.c

.thread:                                          ; preds = %bb.b
  store i16 2, ptr %i.g, align 8, !tbaa !309, !alias.scope !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !325
  %i.p = load ptr, ptr %3, align 8, !tbaa !303    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.p, null
  %i.q = select i1 %.not.i.i19, i64 24, i64 -16
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 8, !tbaa !210
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !51
  %.not.not20 = icmp slt i32 %i.s, %i.u
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i
  %i.v = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  %.pre = load i16, ptr %i.g, align 8, !tbaa !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !325
  %i.w = load ptr, ptr %3, align 8, !tbaa !303    ; 9 uses
  %.not.i.i = icmp eq ptr %i.w, null
  %i.x = select i1 %.not.i.i, i64 24, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !210
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !51
  %.not.not = icmp slt i32 %i.z, %i.ab            ; 4 uses
  switch i16 %.pre, label %bb.i [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.d
    i16 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = load atomic i32, ptr %i.w acquire, align 4
  %i.ad = and i32 %i.ac, 768
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  br i1 %i.af, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ag = atomicrmw sub ptr %i.w, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ah = add i32 %i.ag, -2048                    ; 2 uses
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !3
  %i.ai = icmp ugt i32 %i.ah, 2047
  %i.aj = and i32 %i.ag, 16
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  %or.cond.i.i.i = or i1 %i.ai, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.g, !prof !311

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.k

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.not.not, label %bb.l, label %bb.u

bb.h:                                             ; preds = %bb.c
  %i.ak = load i16, ptr %i.h, align 2, !tbaa !310
  %i.al = zext i16 %i.ak to i64
  %i.am = ptrtoint ptr %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.al, 5
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ao = cmpxchg ptr %i.an, i64 %i.am, i64 0 seq_cst seq_cst, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.c, %bb.h
  %.not.not22 = phi i1 [ %.not.not20, %.thread ], [ %.not.not, %bb.c ], [ %.not.not, %bb.h ]
  %i.aq = phi ptr [ %i.t, %.thread ], [ %i.aa, %bb.c ], [ %i.aa, %bb.h ]
  %i.ar = phi ptr [ %i.p, %.thread ], [ %i.w, %bb.c ], [ %i.w, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.as = atomicrmw sub ptr %i.ar, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i15 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i15
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.j, !prof !311

bb.j:                                             ; preds = %bb.i
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resizeIsAsciiIfNotEmptyIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEib:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !303, !alias.scope !1808
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !309, !alias.scope !1808
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !310, !alias.scope !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !1808
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !1808 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !1808
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !1808 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !1808
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !309, !alias.scope !1808
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1808
  %i.u = load ptr, ptr %5, align 8, !tbaa !303    ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !184
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !185
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !210
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !309
  switch i16 %i.ad, label %bb.n [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.i
    i16 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load atomic i32, ptr %i.u acquire, align 4
  %i.af = and i32 %i.ae, 768
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  br i1 %i.ah, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !311

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !310
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !311

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #39
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  store ptr %i.j, ptr %6, align 8, !tbaa !242, !alias.scope !1815
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !246, !alias.scope !1815
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !1815
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !1815 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !1815
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !60

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !1815 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !247

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !1815
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !1815 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !1815
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1815
  store i8 1, ptr %i.ay, align 8, !tbaa !246, !alias.scope !1815
  %i.bh = load ptr, ptr %6, align 8, !tbaa !242   ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !184
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !185
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !210
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !78, !noundef !82
  %7 = trunc nuw i8 %i.br to i1
  %8 = and i1 %2, %7
  %9 = zext i1 %8 to i8
  store atomic i8 %9, ptr %i.f seq_cst, align 8
  %i.bs = load ptr, ptr %6, align 8, !tbaa !242   ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bs, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.neg.i.i24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !184
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !185
  %i.by = icmp sge i32 %i.bv, %i.bx
  %i.bz = zext i1 %i.by to i8
  store atomic i8 %i.bz, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !246, !range !78
  %i.ca = trunc nuw i8 %.pre to i1
  br i1 %i.ca, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.cb = phi ptr [ %i.bs, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cc = atomicrmw and ptr %i.cb, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cd = and i32 %i.cc, -401
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !3
  %i.ce = and i32 %i.cc, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !60

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #39
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer10reallocateINS0_10StringViewEEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.161", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.147", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.147", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.147", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %12 = alloca %"class.std::optional.23", align 8 ; 4 uses
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !1816
  store ptr @.str.25, ptr %9, align 16, !tbaa !62, !noalias !1816
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %1, ptr %i.b, align 16, !tbaa !62, !noalias !1816
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 16, ptr %i.c, align 16, !tbaa !62, !noalias !1816
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.30, i64 20, i64 1100, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !1816
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.30) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %10, align 8, !tbaa !91    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !62
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume86:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84
  %common.resume86.op = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %bb.v ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49 ]
  resume { ptr, i32 } %common.resume86.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %common.resume86

_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit: ; preds = %bb.a
  %i.j = shl nuw i64 %1, 4                        ; 13 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !53     ; 11 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.f, !prof !87

bb.e:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer10reallocateINS0_10StringViewEEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs, ptr noundef nonnull @.str.120) #38
  unreachable

bb.f:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !64   ; 3 uses
  %i.n = icmp ugt i64 %i.j, %i.m
  br i1 %i.n, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !65
  %i.q = icmp ult i64 %i.j, %i.p
  br i1 %i.q, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load atomic i32, ptr %i.r acquire, align 8
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !54
  %i.w = and i8 %i.v, 2
  %.not70 = icmp eq i8 %i.w, 0
  br i1 %.not70, label %bb.k, label %bb.j, !prof !60

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer10reallocateINS0_10StringViewEEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs_1) #38
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 noundef %i.m, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store i64 %i.j, ptr %i.l, align 8, !tbaa !64
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aa = load atomic i32, ptr %i.z acquire, align 8
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 0, ptr %i.ac, align 8, !tbaa !365
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %11, i64 noundef %1, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.ad = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.j)
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull %i.k, i64 noundef %.sroa.speculated)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %11, align 8, !tbaa !53
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !64
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 noundef %i.aj, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %i.j, ptr %i.al, align 8, !tbaa !64
  store ptr null, ptr %11, align 8, !tbaa !53
  %i.am = load ptr, ptr %0, align 8, !tbaa !53    ; 7 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = atomicrmw sub ptr %i.an, i32 1 acq_rel, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.p
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(64) %i.am)
          to label %.noexc.i.i unwind label %bb.q, !inline_history !85

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
end_hunk_2
