Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx_core-b15a2cb6e65040fa.rustworkx_core.897a2dc821fa0a7e-cgu.0?download=true
inline.NumInlined: 863
inline.NumDeleted: 438
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0
@159 = private unnamed_addr constant [10 x i8] c"NodeMissed", align 1
@160 = private unnamed_addr constant [13 x i8] c"NodeOutBounds", align 1
@161 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@162 = private unnamed_addr constant [24 x i8] c"Invalid inputs received.", align 1
@163 = private unnamed_addr constant [20 x i8] c"No mapping possible.", align 1
@164 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"v\00\00\00\00\00\00\00\7F\07\00\00-\00\00\00" }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !79, !noalias !80, !noundef !5 ; 6 uses
  %i.d = add i64 %i.c, %1                         ; 3 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !79, !noalias !80, !noundef !5 ; 7 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = add i64 %i.g, 1                          ; 7 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = mul nuw i64 %i.j, 7                      ; 2 uses
  %.sroa.03.0.i = select i1 %i.h, i64 %i.g, i64 %i.k ; 2 uses
  %i.l = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.d, %i.l
  br i1 %.not.i, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.q, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, !prof !6

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.03.0.i, 1
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  call fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 4, 49) 48, i64 noundef range(i64 1, 0) %i.n, i1 noundef zeroext %3) #25
  %i.o = load ptr, ptr %i.a, align 8, !noalias !82, !noundef !5 ; 9 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !82 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !82 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  br i1 %i.p, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = load ptr, ptr %0, align 8, !alias.scope !83, !noalias !84, !nonnull !5, !noundef !5 ; 5 uses
  %i.w = icmp eq i64 %i.c, 0
  br i1 %i.w, label %._crit_edge48, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val429 = load <16 x i8>, ptr %i.v, align 16
  %i.x = icmp sgt <16 x i8> %.val429, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.sroa.022.047 = phi ptr [ %.sroa.022.1.lcssa, %bb.h ], [ %i.v, %.preheader.preheader ] ; 2 uses
  %.sroa.5.046 = phi i64 [ %.sroa.5.1.lcssa, %bb.h ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.045 = phi i64 [ %i.ax, %bb.h ], [ %i.c, %.preheader.preheader ]
  %.sroa.13.044 = phi i16 [ %i.av, %bb.h ], [ %i.y, %.preheader.preheader ] ; 2 uses
  %.not.i239 = icmp eq i16 %.sroa.13.044, 0
  br i1 %.not.i239, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.022.141 = phi ptr [ %i.z, %.noexc3 ], [ %.sroa.022.047, %.preheader ] ; 2 uses
  %.sroa.5.140 = phi i64 [ %i.ac, %.noexc3 ], [ %.sroa.5.046, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.141) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.022.141, i64 16 ; 3 uses
  %.val30 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val30, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %i.ac = add i64 %.sroa.5.140, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ab, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge48:                                    ; preds = %bb.h, %bb.e
  %i.ad = sub i64 %i.t, %i.c
  store i64 %i.u, ptr %0, align 8, !alias.scope !85, !noalias !86
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !87, !noalias !88
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !89, !noalias !90
  %i.af = icmp eq i64 %i.g, 0
  br i1 %i.af, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge48
  %i.ag = mul i64 %i.g, 48                        ; 2 uses
  %i.ah = add i64 %i.ag, 48
  %i.ai = add i64 %i.ag, 63                       ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %i.ah
  tail call void @llvm.assume(i1 %i.aj), !noalias !91
  %i.ak = and i64 %i.ai, -16                      ; 3 uses
  %i.al = add i64 %i.g, 17
  %i.am = add i64 %i.al, %i.ak                    ; 4 uses
  %i.an = icmp uge i64 %i.am, %i.ak
  %i.ao = icmp ult i64 %i.am, 9223372036854775793
  tail call void @llvm.assume(i1 %i.an), !noalias !91
  tail call void @llvm.assume(i1 %i.ao), !noalias !91
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.aq = sub nsw i64 0, %i.ak
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.aq
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !92
  br label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.044, %.preheader ], [ %i.ab, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.046, %.preheader ], [ %i.ac, %.noexc3 ] ; 2 uses
  %.sroa.022.1.lcssa = phi ptr [ %.sroa.022.047, %.preheader ], [ %i.z, %.noexc3 ]
  %i.as = add i16 %.sroa.13.1.lcssa, -1
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = and i16 %i.as, %.sroa.13.1.lcssa
  %i.aw = add i64 %.sroa.5.1.lcssa, %i.au         ; 2 uses
  %i.ax = add i64 %.sroa.9.045, -1                ; 2 uses
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [48 x i8], ptr %i.v, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -48
  %.val2.i = load i32, ptr %i.ba, align 4, !noalias !93, !noundef !5
  %.val.i.i12 = load i64, ptr %2, align 8, !alias.scope !94, !noalias !95, !noundef !5
  %i.bb = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !96, !noundef !5
  %i.bc = zext i32 %.val2.i to i64
  %i.bd = xor i64 %.val.i.i12, %i.bc
  %i.be = zext i64 %i.bd to i128
  %i.bf = zext i64 %i.bb to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %.sroa.0.07.i.i = and i64 %i.r, %i.bj           ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !97
  %i.bl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !7

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %._crit_edge ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bm, %._crit_edge ], [ %i.cd, %.lr.ph.i.i ]
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.0.0.lcssa.i.i, %i.bo
  %i.bq = and i64 %i.bp, %i.r                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.o, align 16
  %i.bu = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.bv, 0
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bv, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %bb.h

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %._crit_edge ]
  %i.by = phi i64 [ %i.bz, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.bz = add i64 %i.by, 16                       ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.0.010.i.i
  %.sroa.0.0.i.i13 = and i64 %i.ca, %i.r          ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !97
  %i.cc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !8

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.bx, %bb.g ], [ %i.bq, %._crit_edge.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i5.i.i
  %i.cf = lshr i64 %i.bj, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ci = and i64 %i.ch, %i.r
  store i8 %i.cg, ptr %i.ce, align 1
  %i.cj = getelementptr i8, ptr %i.o, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store i8 %i.cg, ptr %i.ck, align 1
  %.neg.i.i = xor i64 %i.aw, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 48
  %i.cl = getelementptr inbounds i8, ptr %i.v, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 48
  %i.cm = getelementptr inbounds i8, ptr %i.o, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.cm, ptr noundef nonnull align 1 dereferenceable(48) %i.cl, i64 range(i64 4, 49) 48, i1 false), !noalias !91
  %i.cn = icmp eq i64 %i.ax, 0
  br i1 %i.cn, label %._crit_edge48, label %.preheader

bb.i:                                             ; preds = %bb.b
  %.val10 = load ptr, ptr %0, align 8             ; 10 uses
  %.not6.i = icmp eq i64 %i.i, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread80, label %.lr.ph.i

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread80: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.co = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 1 %.val10, i64 %i.i, i1 false)
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.cp = lshr i64 %i.i, 4
  %i.cq = and i64 %i.i, 15
  %.not10.i.i.i = icmp ne i64 %i.cq, 0
  %i.cr = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cp, %i.cr ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cs = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cs, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.j

._crit_edge.i.unr-lcssa:                          ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.da, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ct, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cu = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cv = or <2 x i64> %i.cu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cv, ptr %i.ct, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %. = tail call i64 @llvm.umax.i64(i64 %i.i, i64 16)
  %.94 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %i.cw = getelementptr inbounds nuw i8, ptr %.val10, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %.val10, i64 %.94, i1 false)
  br label %.lr.ph

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.da, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.j ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cx, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cy = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.cz = or <2 x i64> %i.cy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cz, ptr %i.cx, align 16
  %i.da = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dc, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dd = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.de = or <2 x i64> %i.dd, splat (i64 -9187201950435737472)
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.j

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.p
  %i.df = phi ptr [ %i.ge, %bb.p ], [ %.val10, %._crit_edge.i ] ; 4 uses
  %.sroa.04.0.i38 = phi i64 [ %i.dg, %bb.p ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.dg = add nuw i64 %.sroa.04.0.i38, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sroa.04.0.i38
  %i.di = load i8, ptr %i.dh, align 1, !noalias !98, !noundef !5
  %.not.i1 = icmp eq i8 %i.di, -128
  br i1 %.not.i1, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i38, -1
  %.neg10.i = mul i64 %.neg.i, 48
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %.neg10.i ; 8 uses
  %i.dk = sub nsw i64 0, %.sroa.04.0.i38
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 2 uses
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader.i.preheader, %bb.k
  %i.dq = phi ptr [ %.pre, %.preheader.i.preheader ], [ %i.df, %bb.k ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.dr = getelementptr inbounds [48 x i8], ptr %i.dq, i64 %i.dk
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -48
  %.val2.i16 = load i32, ptr %i.ds, align 4, !noalias !100, !noundef !5
  %.val.i.i17 = load i64, ptr %2, align 8, !alias.scope !101, !noalias !102, !noundef !5
  %i.dt = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !103, !noundef !5
  %i.du = zext i32 %.val2.i16 to i64
  %i.dv = xor i64 %.val.i.i17, %i.du
  %i.dw = zext i64 %i.dv to i128
  %i.dx = zext i64 %i.dt to i128
  %i.dy = mul nuw i128 %i.dx, %i.dw               ; 2 uses
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = xor i128 %i.dz, %i.dy
  %i.eb = trunc i128 %i.ea to i64                 ; 3 uses
  %.val8 = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val8, %i.eb           ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ec, align 1, !noalias !104
  %i.ed = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ee = bitcast <16 x i1> %i.ed to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ee, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !7

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %.sroa.0.0.i20, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.ee, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.ev, %.lr.ph.i19 ]
  %i.ef = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = add i64 %.sroa.0.0.lcssa.i, %i.eg
  %i.ei = and i64 %i.eh, %.val8                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !noundef !5
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %bb.l, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit, !prof !6

bb.l:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %i.dq, align 16
  %i.em = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.en, 0
  %i.eo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.en, i1 true)
  %i.ep = zext nneg i16 %i.eo to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i19:                                       ; preds = %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i20, %.lr.ph.i19 ], [ %.sroa.0.07.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.eq = phi i64 [ %i.er, %.lr.ph.i19 ], [ 0, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.er = add i64 %i.eq, 16                       ; 2 uses
  %i.es = add i64 %i.er, %.sroa.0.010.i
  %.sroa.0.0.i20 = and i64 %i.es, %.val8          ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.0.0.i20
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.et, align 1, !noalias !104
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !8

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.l, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ep, %bb.l ], [ %i.ei, %._crit_edge.i18 ] ; 4 uses
  %i.ew = sub i64 %.sroa.04.0.i38, %.sroa.0.07.i
  %i.ex = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.ey = xor i64 %i.ex, %i.ew
  %.unshifted.i = and i64 %i.ey, %.val8
  %i.ez = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ez, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit
  %i.fa = lshr i64 %i.eb, 57
  %i.fb = trunc nuw nsw i64 %i.fa to i8           ; 2 uses
  %i.fc = add i64 %.sroa.04.0.i38, -16
  %i.fd = and i64 %.val8, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i38
  store i8 %i.fb, ptr %i.fe, align 1, !noalias !98
  %i.ff = load ptr, ptr %0, align 8, !noalias !98, !nonnull !5, !noundef !5 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fd
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  store i8 %i.fb, ptr %i.fh, align 1, !noalias !98
  br label %bb.p

bb.n:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit
  %.neg11.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12.i = mul i64 %.neg11.i, 48
  %i.fi = getelementptr inbounds i8, ptr %i.dq, i64 %.neg12.i ; 8 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !98, !noundef !5
  %i.fl = lshr i64 %i.eb, 57
  %i.fm = trunc nuw nsw i64 %i.fl to i8           ; 2 uses
  %i.fn = add i64 %.sroa.0.0.i5.i, -16
  %i.fo = and i64 %i.fn, %.val8
  store i8 %i.fm, ptr %i.fj, align 1, !noalias !98
  %i.fp = load ptr, ptr %0, align 8, !noalias !98, !nonnull !5, !noundef !5 ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fo
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store i8 %i.fm, ptr %i.fr, align 1, !noalias !98
  %i.fs = icmp eq i8 %i.fk, -1
  br i1 %i.fs, label %bb.o, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105), !noalias !98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106), !noalias !98
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dj, align 1, !alias.scope !105, !noalias !107
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fi, align 1, !alias.scope !106, !noalias !108
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dj, align 1, !alias.scope !105, !noalias !107
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fi, align 1, !alias.scope !106, !noalias !108
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109), !noalias !98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110), !noalias !98
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dl, align 1, !alias.scope !109, !noalias !111
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.ft, align 1, !alias.scope !110, !noalias !112
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dl, align 1, !alias.scope !109, !noalias !111
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.ft, align 1, !alias.scope !110, !noalias !112
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113), !noalias !98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114), !noalias !98
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.dm, align 1, !alias.scope !113, !noalias !115
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.fu, align 1, !alias.scope !114, !noalias !116
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.dm, align 1, !alias.scope !113, !noalias !115
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.fu, align 1, !alias.scope !114, !noalias !116
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117), !noalias !98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118), !noalias !98
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.dn, align 1, !alias.scope !117, !noalias !119
  %.sroa.02.0.copyload.i.i.i.3 = load i64, ptr %i.fv, align 1, !alias.scope !118, !noalias !120
  store i64 %.sroa.02.0.copyload.i.i.i.3, ptr %i.dn, align 1, !alias.scope !117, !noalias !119
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core:bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ -1, %bb.f ], [ -1, %._crit_edge48 ], [ -1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.r, %bb.d ]
  %i.gk = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gl = insertvalue { i64, i64 } %i.gk, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gl
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !179, !noalias !180, !noundef !5 ; 6 uses
  %i.d = add i64 %i.c, %1                         ; 3 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !179, !noalias !180, !noundef !5 ; 7 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = add i64 %i.g, 1                          ; 7 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = mul nuw i64 %i.j, 7                      ; 2 uses
  %.sroa.03.0.i = select i1 %i.h, i64 %i.g, i64 %i.k ; 2 uses
  %i.l = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.d, %i.l
  br i1 %.not.i, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.s, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, !prof !6

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.03.0.i, 1
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  call fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 4, 49) 4, i64 noundef range(i64 1, 0) %i.n, i1 noundef zeroext %3) #25
  %i.o = load ptr, ptr %i.a, align 8, !noalias !182, !noundef !5 ; 9 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !182 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  br i1 %i.p, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = load ptr, ptr %0, align 8, !alias.scope !183, !noalias !184, !nonnull !5, !noundef !5 ; 5 uses
  %i.w = icmp eq i64 %i.c, 0
  br i1 %i.w, label %._crit_edge49, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val430 = load <16 x i8>, ptr %i.v, align 16
  %i.x = icmp sgt <16 x i8> %.val430, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.sroa.023.048 = phi ptr [ %.sroa.023.1.lcssa, %bb.h ], [ %i.v, %.preheader.preheader ] ; 2 uses
  %.sroa.5.047 = phi i64 [ %.sroa.5.1.lcssa, %bb.h ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.046 = phi i64 [ %i.ax, %bb.h ], [ %i.c, %.preheader.preheader ]
  %.sroa.13.045 = phi i16 [ %i.av, %bb.h ], [ %i.y, %.preheader.preheader ] ; 2 uses
  %.not.i240 = icmp eq i16 %.sroa.13.045, 0
  br i1 %.not.i240, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.023.142 = phi ptr [ %i.z, %.noexc3 ], [ %.sroa.023.048, %.preheader ] ; 2 uses
  %.sroa.5.141 = phi i64 [ %i.ac, %.noexc3 ], [ %.sroa.5.047, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.142) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.023.142, i64 16 ; 3 uses
  %.val31 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val31, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %i.ac = add i64 %.sroa.5.141, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ab, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge49:                                    ; preds = %bb.h, %bb.e
  %i.ad = sub i64 %i.t, %i.c
  store i64 %i.u, ptr %0, align 8, !alias.scope !185, !noalias !186
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !187, !noalias !188
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !189, !noalias !190
  %i.af = icmp eq i64 %i.g, 0
  br i1 %i.af, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge49
  %i.ag = shl i64 %i.g, 2                         ; 2 uses
  %i.ah = add i64 %i.ag, 4
  %i.ai = add i64 %i.ag, 19                       ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %i.ah
  tail call void @llvm.assume(i1 %i.aj), !noalias !191
  %i.ak = and i64 %i.ai, -16                      ; 3 uses
  %i.al = add i64 %i.g, 17
  %i.am = add i64 %i.al, %i.ak                    ; 4 uses
  %i.an = icmp uge i64 %i.am, %i.ak
  %i.ao = icmp ult i64 %i.am, 9223372036854775793
  tail call void @llvm.assume(i1 %i.an), !noalias !191
  tail call void @llvm.assume(i1 %i.ao), !noalias !191
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.aq = sub nsw i64 0, %i.ak
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.aq
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !192
  br label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.045, %.preheader ], [ %i.ab, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.047, %.preheader ], [ %i.ac, %.noexc3 ] ; 2 uses
  %.sroa.023.1.lcssa = phi ptr [ %.sroa.023.048, %.preheader ], [ %i.z, %.noexc3 ]
  %i.as = add i16 %.sroa.13.1.lcssa, -1
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = and i16 %i.as, %.sroa.13.1.lcssa
  %i.aw = add i64 %.sroa.5.1.lcssa, %i.au         ; 2 uses
  %i.ax = add i64 %.sroa.9.046, -1                ; 2 uses
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  %.val2.i = load i32, ptr %i.ba, align 4, !noalias !193, !noundef !5
  %.val.i.i12 = load i64, ptr %2, align 8, !alias.scope !194, !noalias !195, !noundef !5
  %i.bb = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !196, !noundef !5
  %i.bc = zext i32 %.val2.i to i64
  %i.bd = xor i64 %.val.i.i12, %i.bc
  %i.be = zext i64 %i.bd to i128
  %i.bf = zext i64 %i.bb to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %.sroa.0.07.i.i = and i64 %i.r, %i.bj           ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !197
  %i.bl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !7

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %._crit_edge ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bm, %._crit_edge ], [ %i.cd, %.lr.ph.i.i ]
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.0.0.lcssa.i.i, %i.bo
  %i.bq = and i64 %i.bp, %i.r                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.o, align 16
  %i.bu = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.bv, 0
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bv, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %bb.h

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %._crit_edge ]
  %i.by = phi i64 [ %i.bz, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.bz = add i64 %i.by, 16                       ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.0.010.i.i
  %.sroa.0.0.i.i13 = and i64 %i.ca, %i.r          ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !197
  %i.cc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !8

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.bx, %bb.g ], [ %i.bq, %._crit_edge.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i5.i.i
  %i.cf = lshr i64 %i.bj, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ci = and i64 %i.ch, %i.r
  store i8 %i.cg, ptr %i.ce, align 1
  %i.cj = getelementptr i8, ptr %i.o, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store i8 %i.cg, ptr %i.ck, align 1
  %.neg.i.i = xor i64 %i.aw, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 2
  %i.cl = getelementptr inbounds i8, ptr %i.v, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 2
  %i.cm = getelementptr inbounds i8, ptr %i.o, i64 %.neg64.i.i
  %i.cn = load i32, ptr %i.cl, align 1, !noalias !191
  store i32 %i.cn, ptr %i.cm, align 1, !noalias !191
  %i.co = icmp eq i64 %i.ax, 0
  br i1 %i.co, label %._crit_edge49, label %.preheader

bb.i:                                             ; preds = %bb.b
  %.val10 = load ptr, ptr %0, align 8             ; 10 uses
  %.not6.i = icmp eq i64 %i.i, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread81, label %.lr.ph.i

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread81: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 1 %.val10, i64 %i.i, i1 false)
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.cq = lshr i64 %i.i, 4
  %i.cr = and i64 %i.i, 15
  %.not10.i.i.i = icmp ne i64 %i.cr, 0
  %i.cs = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ct = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.j

._crit_edge.i.unr-lcssa:                          ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.db, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod118 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %. = tail call i64 @llvm.umax.i64(i64 %i.i, i64 16)
  %.95 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %i.cx = getelementptr inbounds nuw i8, ptr %.val10, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull align 1 %.val10, i64 %.95, i1 false)
  br label %.lr.ph

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.db, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.j ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.j

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.r
  %i.dg = phi ptr [ %i.fw, %bb.r ], [ %.val10, %._crit_edge.i ] ; 4 uses
  %.sroa.04.0.i39 = phi i64 [ %i.dh, %bb.r ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i39, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.04.0.i39
  %i.dj = load i8, ptr %i.di, align 1, !noalias !198, !noundef !5
  %.not.i1 = icmp eq i8 %i.dj, -128
  br i1 %.not.i1, label %bb.k, label %bb.r

bb.k:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i39, -1
  %.neg10.i = shl i64 %.neg.i, 2
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %.neg10.i ; 3 uses
  %i.dl = sub nsw i64 0, %.sroa.04.0.i39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.q
  %i.dm = phi ptr [ %i.dg, %bb.k ], [ %.pre, %bb.q ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dl
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %.val2.i16 = load i32, ptr %i.do, align 4, !noalias !200, !noundef !5
  %.val.i.i17 = load i64, ptr %2, align 8, !alias.scope !201, !noalias !202, !noundef !5
  %i.dp = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !203, !noundef !5
  %i.dq = zext i32 %.val2.i16 to i64
  %i.dr = xor i64 %.val.i.i17, %i.dq
  %i.ds = zext i64 %i.dr to i128
  %i.dt = zext i64 %i.dp to i128
  %i.du = mul nuw i128 %i.dt, %i.ds               ; 2 uses
  %i.dv = lshr i128 %i.du, 64
  %i.dw = xor i128 %i.dv, %i.du
  %i.dx = trunc i128 %i.dw to i64                 ; 3 uses
  %.val8 = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val8, %i.dx           ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.dy, align 1, !noalias !204
  %i.dz = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ea = bitcast <16 x i1> %i.dz to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ea, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !7

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.l
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.l ], [ %.sroa.0.0.i20, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.ea, %bb.l ], [ %i.er, %.lr.ph.i19 ]
  %i.eb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = add i64 %.sroa.0.0.lcssa.i, %i.ec
  %i.ee = and i64 %i.ed, %.val8                   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !noundef !5
  %i.eh = icmp sgt i8 %i.eg, -1
  br i1 %i.eh, label %bb.m, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit, !prof !6

bb.m:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %i.dm, align 16
  %i.ei = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ej, 0
  %i.ek = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ej, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i19:                                       ; preds = %bb.l, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i20, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.l ]
  %i.em = phi i64 [ %i.en, %.lr.ph.i19 ], [ 0, %bb.l ]
  %i.en = add i64 %i.em, 16                       ; 2 uses
  %i.eo = add i64 %i.en, %.sroa.0.010.i
  %.sroa.0.0.i20 = and i64 %i.eo, %.val8          ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.0.0.i20
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ep, align 1, !noalias !204
  %i.eq = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.er, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !8

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.m, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.el, %bb.m ], [ %i.ee, %._crit_edge.i18 ] ; 4 uses
  %i.es = sub i64 %.sroa.04.0.i39, %.sroa.0.07.i
  %i.et = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.eu = xor i64 %i.et, %i.es
  %.unshifted.i = and i64 %i.eu, %.val8
  %i.ev = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ev, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit
  %i.ew = lshr i64 %i.dx, 57
  %i.ex = trunc nuw nsw i64 %i.ew to i8           ; 2 uses
  %i.ey = add i64 %.sroa.04.0.i39, -16
  %i.ez = and i64 %.val8, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i39
  store i8 %i.ex, ptr %i.fa, align 1, !noalias !198
  %i.fb = load ptr, ptr %0, align 8, !noalias !198, !nonnull !5, !noundef !5 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.ez
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  store i8 %i.ex, ptr %i.fd, align 1, !noalias !198
  br label %bb.r

bb.o:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit
  %.neg11.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12.i = shl i64 %.neg11.i, 2
  %i.fe = getelementptr inbounds i8, ptr %i.dm, i64 %.neg12.i ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !198, !noundef !5
  %i.fh = lshr i64 %i.dx, 57
  %i.fi = trunc nuw nsw i64 %i.fh to i8           ; 2 uses
  %i.fj = add i64 %.sroa.0.0.i5.i, -16
  %i.fk = and i64 %i.fj, %.val8
  store i8 %i.fi, ptr %i.ff, align 1, !noalias !198
  %i.fl = load ptr, ptr %0, align 8, !noalias !198, !nonnull !5, !noundef !5 ; 4 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.fk
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store i8 %i.fi, ptr %i.fn, align 1, !noalias !198
  %i.fo = icmp eq i8 %i.fg, -1
  br i1 %i.fo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fp = add i64 %.sroa.04.0.i39, -16
  %i.fq = load i64, ptr %i.f, align 8, !noalias !198, !noundef !5
  %i.fr = and i64 %i.fq, %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sroa.04.0.i39
  store i8 -1, ptr %i.fs, align 1, !noalias !198
  %i.ft = getelementptr i8, ptr %i.fl, i64 %i.fr
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  store i8 -1, ptr %i.fu, align 1, !noalias !198
  %i.fv = load i32, ptr %i.dk, align 1, !noalias !198
  store i32 %i.fv, ptr %i.fe, align 1, !noalias !198
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205), !noalias !198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206), !noalias !198
  %.sroa.0.0.copyload.i.i5.i = load i32, ptr %i.dk, align 1, !alias.scope !205, !noalias !207
  %.sroa.02.0.copyload.i.i6.i = load i32, ptr %i.fe, align 1, !alias.scope !206, !noalias !208
  store i32 %.sroa.02.0.copyload.i.i6.i, ptr %i.dk, align 1, !alias.scope !205, !noalias !207
  store i32 %.sroa.0.0.copyload.i.i5.i, ptr %i.fe, align 1, !alias.scope !206, !noalias !208
  %.pre = load ptr, ptr %0, align 8, !alias.scope !199, !noalias !209
  br label %bb.l

bb.r:                                             ; preds = %bb.p, %bb.n, %.lr.ph
  %i.fw = phi ptr [ %i.fl, %bb.p ], [ %i.fb, %bb.n ], [ %i.dg, %.lr.ph ]
  %exitcond.not = icmp eq i64 %.sroa.04.0.i39, %i.g
  br i1 %exitcond.not, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre60 = load i64, ptr %i.f, align 8, !noalias !198 ; 2 uses
  %.pre61 = load i64, ptr %i.b, align 8, !noalias !198
  %.pre62 = add i64 %.pre60, 1
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core:bb.a
_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.d, %bb.f, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge49, %bb.c, %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ undef, %bb.f ], [ undef, %._crit_edge49 ], [ undef, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.t, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ -1, %bb.f ], [ -1, %._crit_edge49 ], [ -1, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.r, %bb.d ]
  %i.gc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gd = insertvalue { i64, i64 } %i.gc, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gd
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE14reserve_rehashNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !261, !noalias !262, !noundef !5 ; 6 uses
  %i.d = add i64 %i.c, %1                         ; 3 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !261, !noalias !262, !noundef !5 ; 7 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = add i64 %i.g, 1                          ; 7 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = mul nuw i64 %i.j, 7                      ; 2 uses
  %.sroa.03.0.i = select i1 %i.h, i64 %i.g, i64 %i.k ; 2 uses
  %i.l = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.d, %i.l
  br i1 %.not.i, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.q, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, !prof !6

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.03.0.i, 1
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !264
  call fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 4, 49) 16, i64 noundef range(i64 1, 0) %i.n, i1 noundef zeroext %3) #25
  %i.o = load ptr, ptr %i.a, align 8, !noalias !264, !noundef !5 ; 9 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !264 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !264
  br i1 %i.p, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = load ptr, ptr %0, align 8, !alias.scope !265, !noalias !266, !nonnull !5, !noundef !5 ; 5 uses
  %i.w = icmp eq i64 %i.c, 0
  br i1 %i.w, label %._crit_edge48, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val429 = load <16 x i8>, ptr %i.v, align 16
  %i.x = icmp sgt <16 x i8> %.val429, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.sroa.022.047 = phi ptr [ %.sroa.022.1.lcssa, %bb.h ], [ %i.v, %.preheader.preheader ] ; 2 uses
  %.sroa.5.046 = phi i64 [ %.sroa.5.1.lcssa, %bb.h ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.045 = phi i64 [ %i.ax, %bb.h ], [ %i.c, %.preheader.preheader ]
  %.sroa.13.044 = phi i16 [ %i.av, %bb.h ], [ %i.y, %.preheader.preheader ] ; 2 uses
  %.not.i239 = icmp eq i16 %.sroa.13.044, 0
  br i1 %.not.i239, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.022.141 = phi ptr [ %i.z, %.noexc3 ], [ %.sroa.022.047, %.preheader ] ; 2 uses
  %.sroa.5.140 = phi i64 [ %i.ac, %.noexc3 ], [ %.sroa.5.046, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.141) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.022.141, i64 16 ; 3 uses
  %.val30 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val30, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %i.ac = add i64 %.sroa.5.140, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ab, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge48:                                    ; preds = %bb.h, %bb.e
  %i.ad = sub i64 %i.t, %i.c
  store i64 %i.u, ptr %0, align 8, !alias.scope !267, !noalias !268
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !269, !noalias !270
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !271, !noalias !272
  %i.af = icmp eq i64 %i.g, 0
  br i1 %i.af, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge48
  %i.ag = shl i64 %i.g, 4                         ; 2 uses
  %i.ah = add i64 %i.ag, 16
  %i.ai = add i64 %i.ag, 31                       ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %i.ah
  tail call void @llvm.assume(i1 %i.aj), !noalias !273
  %i.ak = and i64 %i.ai, -16                      ; 3 uses
  %i.al = add i64 %i.g, 17
  %i.am = add i64 %i.al, %i.ak                    ; 4 uses
  %i.an = icmp uge i64 %i.am, %i.ak
  %i.ao = icmp ult i64 %i.am, 9223372036854775793
  tail call void @llvm.assume(i1 %i.an), !noalias !273
  tail call void @llvm.assume(i1 %i.ao), !noalias !273
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.aq = sub nsw i64 0, %i.ak
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.aq
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !274
  br label %_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.044, %.preheader ], [ %i.ab, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.046, %.preheader ], [ %i.ac, %.noexc3 ] ; 2 uses
  %.sroa.022.1.lcssa = phi ptr [ %.sroa.022.047, %.preheader ], [ %i.z, %.noexc3 ]
  %i.as = add i16 %.sroa.13.1.lcssa, -1
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = and i16 %i.as, %.sroa.13.1.lcssa
  %i.aw = add i64 %.sroa.5.1.lcssa, %i.au         ; 2 uses
  %i.ax = add i64 %.sroa.9.045, -1                ; 2 uses
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16
  %.val2.i = load i64, ptr %i.ba, align 8, !noalias !275, !noundef !5
  %.val.i.i12 = load i64, ptr %2, align 8, !alias.scope !276, !noalias !277, !noundef !5
  %i.bb = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !278, !noundef !5
  %i.bc = xor i64 %.val.i.i12, %.val2.i
  %i.bd = zext i64 %i.bc to i128
  %i.be = zext i64 %i.bb to i128
  %i.bf = mul nuw i128 %i.be, %i.bd               ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64                 ; 2 uses
  %.sroa.0.07.i.i = and i64 %i.r, %i.bi           ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bj, align 1, !noalias !279
  %i.bk = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !7

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %._crit_edge ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bl, %._crit_edge ], [ %i.cc, %.lr.ph.i.i ]
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.0.0.lcssa.i.i, %i.bn
  %i.bp = and i64 %i.bo, %i.r                     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !5
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.o, align 16
  %i.bt = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.bu, 0
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bu, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %bb.h

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %._crit_edge ]
  %i.bx = phi i64 [ %i.by, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.by = add i64 %i.bx, 16                       ; 2 uses
  %i.bz = add i64 %i.by, %.sroa.0.010.i.i
  %.sroa.0.0.i.i13 = and i64 %i.bz, %i.r          ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ca, align 1, !noalias !279
  %i.cb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !8

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.bw, %bb.g ], [ %i.bp, %._crit_edge.i.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i5.i.i
  %i.ce = lshr i64 %i.bi, 57
  %i.cf = trunc nuw nsw i64 %i.ce to i8           ; 2 uses
  %i.cg = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ch = and i64 %i.cg, %i.r
  store i8 %i.cf, ptr %i.cd, align 1
  %i.ci = getelementptr i8, ptr %i.o, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 %i.cf, ptr %i.cj, align 1
  %.neg.i.i = xor i64 %i.aw, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 4
  %i.ck = getelementptr inbounds i8, ptr %i.v, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 4
  %i.cl = getelementptr inbounds i8, ptr %i.o, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cl, ptr noundef nonnull align 1 dereferenceable(16) %i.ck, i64 range(i64 4, 49) 16, i1 false), !noalias !273
  %i.cm = icmp eq i64 %i.ax, 0
  br i1 %i.cm, label %._crit_edge48, label %.preheader

bb.i:                                             ; preds = %bb.b
  %.val10 = load ptr, ptr %0, align 8             ; 10 uses
  %.not6.i = icmp eq i64 %i.i, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread80, label %.lr.ph.i

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread80: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %.val10, i64 %i.i, i1 false)
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.co = lshr i64 %i.i, 4
  %i.cp = and i64 %i.i, 15
  %.not10.i.i.i = icmp ne i64 %i.cp, 0
  %i.cq = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.co, %i.cq ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cr = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.j

._crit_edge.i.unr-lcssa:                          ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.cz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.cs = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cs, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ct = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cu = or <2 x i64> %i.ct, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cu, ptr %i.cs, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %. = tail call i64 @llvm.umax.i64(i64 %i.i, i64 16)
  %.94 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %i.cv = getelementptr inbounds nuw i8, ptr %.val10, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %.val10, i64 %.94, i1 false)
  br label %.lr.ph

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.cz, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.j ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cw, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cx = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.01.08.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.db, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dc = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dd = or <2 x i64> %i.dc, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dd, ptr %i.db, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.j

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.p
  %i.de = phi ptr [ %i.fu, %bb.p ], [ %.val10, %._crit_edge.i ] ; 4 uses
  %.sroa.04.0.i38 = phi i64 [ %i.df, %bb.p ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.df = add nuw i64 %.sroa.04.0.i38, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.04.0.i38
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !280, !noundef !5
  %.not.i1 = icmp eq i8 %i.dh, -128
  br i1 %.not.i1, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i38, -1
  %.neg10.i = shl i64 %.neg.i, 4
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %.neg10.i ; 4 uses
  %i.dj = sub nsw i64 0, %.sroa.04.0.i38
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader.i.preheader, %bb.k
  %i.dl = phi ptr [ %.pre, %.preheader.i.preheader ], [ %i.de, %bb.k ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.dm = getelementptr inbounds [16 x i8], ptr %i.dl, i64 %i.dj
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -16
  %.val2.i16 = load i64, ptr %i.dn, align 8, !noalias !282, !noundef !5
  %.val.i.i17 = load i64, ptr %2, align 8, !alias.scope !283, !noalias !284, !noundef !5
  %i.do = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !285, !noundef !5
  %i.dp = xor i64 %.val.i.i17, %.val2.i16
  %i.dq = zext i64 %i.dp to i128
  %i.dr = zext i64 %i.do to i128
  %i.ds = mul nuw i128 %i.dr, %i.dq               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = xor i128 %i.dt, %i.ds
  %i.dv = trunc i128 %i.du to i64                 ; 3 uses
  %.val8 = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val8, %i.dv           ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.dw, align 1, !noalias !286
  %i.dx = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !7

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %.sroa.0.0.i20, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.dy, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.ep, %.lr.ph.i19 ]
  %i.dz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = add i64 %.sroa.0.0.lcssa.i, %i.ea
  %i.ec = and i64 %i.eb, %.val8                   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noundef !5
  %i.ef = icmp sgt i8 %i.ee, -1
  br i1 %i.ef, label %bb.l, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit, !prof !6

bb.l:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %i.dl, align 16
  %i.eg = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.eh, 0
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eh, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i19:                                       ; preds = %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i20, %.lr.ph.i19 ], [ %.sroa.0.07.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ek = phi i64 [ %i.el, %.lr.ph.i19 ], [ 0, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.el = add i64 %i.ek, 16                       ; 2 uses
  %i.em = add i64 %i.el, %.sroa.0.010.i
  %.sroa.0.0.i20 = and i64 %i.em, %.val8          ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.0.i20
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.en, align 1, !noalias !286
  %i.eo = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ep = bitcast <16 x i1> %i.eo to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !8

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.l, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ej, %bb.l ], [ %i.ec, %._crit_edge.i18 ] ; 4 uses
  %i.eq = sub i64 %.sroa.04.0.i38, %.sroa.0.07.i
  %i.er = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.es = xor i64 %i.er, %i.eq
  %.unshifted.i = and i64 %i.es, %.val8
  %i.et = icmp ult i64 %.unshifted.i, 16
  br i1 %i.et, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit
  %i.eu = lshr i64 %i.dv, 57
  %i.ev = trunc nuw nsw i64 %i.eu to i8           ; 2 uses
  %i.ew = add i64 %.sroa.04.0.i38, -16
  %i.ex = and i64 %.val8, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i38
  store i8 %i.ev, ptr %i.ey, align 1, !noalias !280
  %i.ez = load ptr, ptr %0, align 8, !noalias !280, !nonnull !5, !noundef !5 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  store i8 %i.ev, ptr %i.fb, align 1, !noalias !280
  br label %bb.p

bb.n:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit
  %.neg11.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12.i = shl i64 %.neg11.i, 4
  %i.fc = getelementptr inbounds i8, ptr %i.dl, i64 %.neg12.i ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !noalias !280, !noundef !5
  %i.ff = lshr i64 %i.dv, 57
  %i.fg = trunc nuw nsw i64 %i.ff to i8           ; 2 uses
  %i.fh = add i64 %.sroa.0.0.i5.i, -16
  %i.fi = and i64 %i.fh, %.val8
  store i8 %i.fg, ptr %i.fd, align 1, !noalias !280
  %i.fj = load ptr, ptr %0, align 8, !noalias !280, !nonnull !5, !noundef !5 ; 4 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  store i8 %i.fg, ptr %i.fl, align 1, !noalias !280
  %i.fm = icmp eq i8 %i.fe, -1
  br i1 %i.fm, label %bb.o, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287), !noalias !280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288), !noalias !280
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.di, align 1, !alias.scope !287, !noalias !289
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fc, align 1, !alias.scope !288, !noalias !290
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.di, align 1, !alias.scope !287, !noalias !289
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fc, align 1, !alias.scope !288, !noalias !290
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291), !noalias !280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292), !noalias !280
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dk, align 1, !alias.scope !291, !noalias !293
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fn, align 1, !alias.scope !292, !noalias !294
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dk, align 1, !alias.scope !291, !noalias !293
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fn, align 1, !alias.scope !292, !noalias !294
  %.pre = load ptr, ptr %0, align 8, !alias.scope !281, !noalias !295
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit

bb.o:                                             ; preds = %bb.n
  %i.fo = add i64 %.sroa.04.0.i38, -16
  %i.fp = load i64, ptr %i.f, align 8, !noalias !280, !noundef !5
  %i.fq = and i64 %i.fp, %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.04.0.i38
  store i8 -1, ptr %i.fr, align 1, !noalias !280
  %i.fs = getelementptr i8, ptr %i.fj, i64 %i.fq
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  store i8 -1, ptr %i.ft, align 1, !noalias !280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fc, ptr noundef nonnull align 1 dereferenceable(16) %i.di, i64 16, i1 false), !noalias !280
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %.lr.ph
  %i.fu = phi ptr [ %i.fj, %bb.o ], [ %i.ez, %bb.m ], [ %i.de, %.lr.ph ]
  %exitcond.not = icmp eq i64 %.sroa.04.0.i38, %i.g
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core:bb.a
  %i.aq = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 7 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.09.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.at, i8 -1, i64 %i.ag, i1 false), !noalias !342
  store ptr %i.c, ptr %i.b, align 8, !noalias !339
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !339
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !339
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.at, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !339
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !339
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !339
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !339
  %i.au = load i64, ptr %i.d, align 8, !alias.scope !343, !noalias !344, !noundef !5 ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = ptrtoint ptr %i.at to i64
  br i1 %i.av, label %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.._crit_edge63_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.._crit_edge63_crit_edge: ; preds = %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !345, !noalias !346
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge63

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !343, !noalias !344, !nonnull !5, !noundef !5 ; 5 uses
  %.val339 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val339, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.035 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.036 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !339
  br label %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

bb.k:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #28
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.019.062 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.061 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.060 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.by, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.059 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.bw, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i154 = icmp eq i16 %.sroa.13.059, 0
  br i1 %.not.i154, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.156 = phi ptr [ %i.bb, %.noexc2 ], [ %.sroa.019.062, %.preheader ] ; 2 uses
  %.sroa.5.155 = phi i64 [ %i.be, %.noexc2 ], [ %.sroa.5.061, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.156) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.156, i64 16 ; 3 uses
  %.val40 = load <16 x i8>, ptr %i.bb, align 16
  %i.bc = icmp sgt <16 x i8> %.val40, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.155, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bd, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge63:                                    ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.._crit_edge63_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.._crit_edge63_crit_edge ], [ %i.ax, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %i.bf = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.aw, ptr %0, align 8, !alias.scope !345, !noalias !346
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !347, !noalias !348 ; 3 uses
  store i64 %i.aq, ptr %i.h, align 8, !alias.scope !347, !noalias !348
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !349, !noalias !350
  %i.bh = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge63
  %i.bi = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3 ; 2 uses
  %i.bj = add i64 %i.bi, 8
  %i.bk = add i64 %i.bi, 23                       ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bj
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = and i64 %i.bk, -16                      ; 3 uses
  %i.bn = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = icmp ult i64 %i.bo, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bp)
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = sub nsw i64 0, %i.bm
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.br
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !351
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %._crit_edge63, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !339
  br label %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.059, %.preheader ], [ %i.bd, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.061, %.preheader ], [ %i.be, %.noexc2 ] ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.062, %.preheader ], [ %i.bb, %.noexc2 ]
  %i.bt = add i16 %.sroa.13.1.lcssa, -1
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = and i16 %i.bt, %.sroa.13.1.lcssa
  %i.bx = add i64 %.sroa.5.1.lcssa, %i.bv         ; 2 uses
  %i.by = add i64 %.sroa.9.060, -1                ; 2 uses
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %.val3.i = load i64, ptr %i.cb, align 8, !noalias !352, !noundef !5 ; 3 uses
  %i.cc = icmp ult i64 %.val3.i, %3
  br i1 %i.cc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.val3.i
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !352, !noundef !5 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ce, %i.aq            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !353
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.m ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %bb.m ], [ %i.cy, %.lr.ph.i ]
  %i.ci = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !5
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.at, align 16
  %i.cp = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cq, 0
  %i.cr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cq, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.m ]
  %i.ct = phi i64 [ %i.cu, %.lr.ph.i ], [ 0, %bb.m ]
  %i.cu = add i64 %i.ct, 16                       ; 2 uses
  %i.cv = add i64 %i.cu, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cv, %i.aq           ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !353
  %i.cx = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cs, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.cz = lshr i64 %i.ce, 57
  %i.da = trunc nuw nsw i64 %i.cz to i8           ; 2 uses
  %i.db = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dc = and i64 %i.db, %i.aq
  %i.dd = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i5.i
  store i8 %i.da, ptr %i.dd, align 1
  %i.de = getelementptr i8, ptr %i.at, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store i8 %i.da, ptr %i.df, align 1
  %i.dg = shl i64 %i.bx, 3
  %i.dh = sub nuw nsw i64 -8, %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.ax, i64 %i.dh
  %i.dj = shl i64 %.sroa.0.0.i5.i, 3
  %i.dk = sub nuw nsw i64 -8, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.at, i64 %i.dk
  %i.dm = load i64, ptr %i.di, align 1
  store i64 %i.dm, ptr %i.dl, align 8
  %i.dn = icmp eq i64 %i.by, 0
  br i1 %i.dn, label %._crit_edge63, label %.preheader

common.resume:                                    ; preds = %bb.s, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.ep, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %.val12.i = load ptr, ptr %0, align 8, !alias.scope !354 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.do = lshr i64 %i.k, 4
  %i.dp = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dp, 0
  %i.dq = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.do, %i.dq ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dr = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.01.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eb, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod149 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.ds, align 16, !noalias !354
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !354
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.61.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val12.i, i64 %.61.i, i1 false), !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  store ptr null, ptr %i.dv, align 8, !noalias !354
  store i64 8, ptr %i.dw, align 8, !noalias !354
  store ptr %0, ptr %i.a, align 8, !noalias !354
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.01.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.eb, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dy, align 16, !noalias !354
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dz = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ea = or <2 x i64> %i.dz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ea, ptr %i.dy, align 16, !noalias !354
  %i.eb = add i64 %.sroa.01.08.i.i, 32            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ed, align 16, !noalias !354
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ee = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ef = or <2 x i64> %i.ee, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ef, ptr %i.ed, align 16, !noalias !354
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

bb.q:                                             ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.04.018.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.eg, %bb.x ] ; 10 uses
  %i.eg = add nuw i64 %.sroa.04.018.i, 1
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.04.018.i
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !5
  %.not.i12 = icmp eq i8 %i.ej, -128
  br i1 %.not.i12, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %.neg.i = xor i64 %.sroa.04.018.i, -1
  %.neg10.i = shl i64 %.neg.i, 3
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 %.neg10.i ; 3 uses
  %i.el = sub nsw i64 0, %.sroa.04.018.i          ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.el
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -8
  %.val3.i13.i = load i64, ptr %i.en, align 8, !noalias !355, !noundef !5 ; 3 uses
  %i.eo = icmp ult i64 %.val3.i13.i, %3
  br i1 %i.eo, label %.lr.ph.i14, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.r, %.preheader.i.preheader.i
  %.val3.i.lcssa.i = phi i64 [ %.val3.i.i17, %.preheader.i.preheader.i ], [ %.val3.i13.i, %bb.r ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val3.i.lcssa.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %._crit_edge.i13
  unreachable

bb.s:                                             ; preds = %._crit_edge.i13
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
          to label %common.resume unwind label %bb.y

.lr.ph.i14:                                       ; preds = %bb.r, %.preheader.i.preheader.i
  %.val3.i14.i = phi i64 [ %.val3.i.i17, %.preheader.i.preheader.i ], [ %.val3.i13.i, %bb.r ]
  %i.eq = phi ptr [ %i.gm, %.preheader.i.preheader.i ], [ %i.eh, %bb.r ] ; 7 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.val3.i14.i
  %i.es = load i64, ptr %i.er, align 8, !noalias !356, !noundef !5 ; 3 uses
  %.val11.i = load i64, ptr %i.h, align 8, !alias.scope !354, !noundef !5 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val11.i, %i.es      ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !noalias !357
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i15.i, label %._crit_edge.i14.i, !prof !7

._crit_edge.i14.i:                                ; preds = %.lr.ph.i15.i, %.lr.ph.i14
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %.lr.ph.i14 ], [ %.sroa.0.0.i.i18, %.lr.ph.i15.i ]
  %.lcssa.i.i = phi i16 [ %i.ev, %.lr.ph.i14 ], [ %i.fm, %.lr.ph.i15.i ]
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex
  %i.ez = and i64 %i.ey, %.val11.i                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !noundef !5
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.t, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !6

bb.t:                                             ; preds = %._crit_edge.i14.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.eq, align 16
  %i.fd = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fe, 0
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i14, %.lr.ph.i15.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i15.i ], [ %.sroa.0.07.i.i, %.lr.ph.i14 ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i15.i ], [ 0, %.lr.ph.i14 ]
  %i.fi = add i64 %i.fh, 16                       ; 2 uses
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i
  %.sroa.0.0.i.i18 = and i64 %i.fj, %.val11.i     ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0.i.i18
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !noalias !357
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i, label %.lr.ph.i15.i, label %._crit_edge.i14.i, !prof !8

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.t, %._crit_edge.i14.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fg, %bb.t ], [ %i.ez, %._crit_edge.i14.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.04.018.i, %.sroa.0.07.i.i
  %i.fo = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fp = xor i64 %i.fo, %i.fn
  %.unshifted.i = and i64 %i.fp, %.val11.i
  %i.fq = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fq, label %bb.u, label %bb.v, !prof !9

bb.u:                                             ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fr = lshr i64 %i.es, 57
  %i.fs = trunc nuw nsw i64 %i.fr to i8           ; 2 uses
  %i.ft = add i64 %.sroa.04.018.i, -16
  %i.fu = and i64 %.val11.i, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.04.018.i
  store i8 %i.fs, ptr %i.fv, align 1
  %i.fw = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.fu
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fs, ptr %i.fy, align 1
  br label %bb.x

bb.v:                                             ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fz = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.ga = sub nuw nsw i64 -8, %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.eq, i64 %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !noundef !5
  %i.ge = lshr i64 %i.es, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gh = and i64 %i.gg, %.val11.i
  store i8 %i.gf, ptr %i.gc, align 1
  %i.gi = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gh
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 %i.gf, ptr %i.gk, align 1
  %i.gl = icmp eq i8 %i.gd, -1
  br i1 %i.gl, label %bb.w, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ek, align 1, !alias.scope !358, !noalias !359
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.gb, align 1, !alias.scope !359, !noalias !358
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ek, align 1, !alias.scope !358, !noalias !359
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.gb, align 1, !alias.scope !359, !noalias !358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.gm = load ptr, ptr %0, align 8, !alias.scope !361, !noalias !362, !nonnull !5, !noundef !5 ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.el
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8
  %.val3.i.i17 = load i64, ptr %i.go, align 8, !noalias !363, !noundef !5 ; 3 uses
  %i.gp = icmp ult i64 %.val3.i.i17, %3
  br i1 %i.gp, label %.lr.ph.i14, label %._crit_edge.i13

bb.w:                                             ; preds = %bb.v
  %i.gq = add i64 %.sroa.04.018.i, -16
  %i.gr = load i64, ptr %i.h, align 8, !alias.scope !354, !noundef !5
  %i.gs = and i64 %i.gr, %i.gq
end_hunk_3
begin_hunk_4_@_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core:bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !369 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !369, !nonnull !5, !noundef !5
  %i.h = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 9) 4) #26, !noalias !369
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.k = mul nuw i64 %.val2, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit6

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit6: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !372 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !372, !nonnull !5, !noundef !5
  %i.h = shl nuw i64 %.val8.i.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 9) 4) #26, !noalias !372
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1w_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.k = mul nuw i64 %.val2, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1w_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit6

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1w_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit6: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !375, !noundef !5 ; 4 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !375, !nonnull !5, !noundef !5
  %i.d = shl i64 %.val1.i, 3
  %i.e = icmp slt i64 %.val1.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val1.i, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub nuw nsw i64 -16, %i.f
  %i.m = getelementptr inbounds i8, ptr %.val.i, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !375
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !375 ; 2 uses
  %i.n = icmp eq i64 %.val2.i, 0
  br i1 %i.n, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.o, align 8, !alias.scope !375, !nonnull !5, !noundef !5
  %i.p = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 9) 8) #26, !noalias !375
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !382, !noundef !5 ; 4 uses
  %i.b = icmp eq i64 %.val1.i.i, 0
  br i1 %i.b, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !382, !nonnull !5, !noundef !5
  %i.d = shl i64 %.val1.i.i, 3
  %i.e = icmp slt i64 %.val1.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val1.i.i, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub nuw nsw i64 -16, %i.f
  %i.m = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !382
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.a
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !382 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i, 0
  br i1 %i.n, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.o, align 8, !alias.scope !382, !nonnull !5, !noundef !5
  %i.p = shl nuw i64 %.val2.i.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 9) 8) #26, !noalias !382
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !385, !noundef !5 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !385 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !385 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !385
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #26, !noalias !385
  br label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit

_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.a, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !389
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !389
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !389, !nonnull !5, !align !12, !noundef !5 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !389, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.04.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.04.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !389, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !389, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.04.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !389, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !389
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !389, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !389
  %i.q = load i64, ptr %i.e, align 8, !noalias !389, !noundef !5
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !389
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.04.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.04.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !389, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !389, !noundef !5
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.x = add i64 %.sroa.04.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !389, !noundef !5
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !389
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !389, !nonnull !5, !noundef !5
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !389
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !389, !nonnull !5, !noundef !5
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !389, !inline_history !388
  %i.af = load i64, ptr %i.e, align 8, !noalias !389, !noundef !5
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !389
  br label %bb.d

_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !389, !noundef !5 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.01.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !389, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.01.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !389
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !392 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !392, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 9) 4) #26, !noalias !392
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !392 ; 2 uses
  %i.e = icmp eq i64 %.val2.i, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load ptr, ptr %i.f, align 8, !alias.scope !392, !nonnull !5, !noundef !5
  %i.g = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 9) 8) #26, !noalias !392
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !399 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !399, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val.i.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 9) 4) #26, !noalias !399
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.d, align 8, !alias.scope !399 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !399, !nonnull !5, !noundef !5
  %i.g = shl nuw i64 %.val2.i.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 9) 8) #26, !noalias !399
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit: ; preds = %bb.c, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val5 = load i64, ptr %i.h, align 8            ; 2 uses
  %i.i = icmp eq i64 %.val5, 0
  br i1 %i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9, label %bb.d

bb.d:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val6 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.k = shl nuw i64 %.val5, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 9) 4) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9: ; preds = %bb.d, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load i64, ptr %i.l, align 8             ; 2 uses
  %i.m = icmp eq i64 %.val, 0
  br i1 %i.m, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit11, label %bb.e

bb.e:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.o = shl nuw i64 %.val, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 9) 4) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit11

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit11: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBC_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
end_hunk_4
begin_hunk_5_@_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core:bb.a
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !608
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.e, align 8, !alias.scope !608
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val12.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 4), !noalias !608
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !608, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !608, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !608
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !608, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !608
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !608
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !608
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !611
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.e, align 8, !alias.scope !611
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val12.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 4), !noalias !611
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !611, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !611, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !611
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !611, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !611
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !611
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !611
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBN_EE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !614
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.e, align 8, !alias.scope !614
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val12.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !noalias !614
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !614, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !614, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !614
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !614, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !614
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !614
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !614
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetBN_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !617
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.e, align 8, !alias.scope !617
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val12.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 72), !noalias !617
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !617, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !617, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !617
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !617, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !617
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !617
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !617
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCslwFuT2d6ECx_4core6option6OptionNtBP_9EdgeIndexEEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !620
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.e, align 8, !alias.scope !620
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val12.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 12), !noalias !620
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !620, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !620, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !620
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !620, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !620
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !620
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !620
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 73) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !10
  br i1 %or.cond, label %bb.h, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.d
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.thread, label %bb.c

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.b
  %i.f = inttoptr i64 %2 to ptr
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.g = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #26
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit

bb.d:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.0.val, 0
  br i1 %i.h, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.i = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.i)
  %i.j = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef range(i64 1, 0) %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #26
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0.i.i.pn = phi ptr [ %i.j, %bb.e ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.0.i.i.pn, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit
  %.sroa.0.0.i.i.pn5 = phi ptr [ %i.f, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.thread ], [ %.sroa.0.0.i.i.pn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.pn5, ptr %i.m, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.f, %bb.g
  %.sink8 = phi i64 [ 16, %bb.f ], [ 16, %bb.g ], [ 8, %bb.a ]
  %.sink6 = phi i64 [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8
  store i64 %.sink6, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBP_EEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !noundef !5
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = lshr i64 %1, 57
  %i.h = trunc nuw nsw i64 %i.g to i8             ; 2 uses
  %i.i = add i64 %2, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = and i64 %i.k, %i.i
  store i8 %i.h, ptr %i.b, align 1
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 %i.h, ptr %i.n, align 1
  %i.o = load <2 x i64>, ptr %i.f, align 8
  %i.p = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.e, i64 0
  %i.q = sub <2 x i64> %i.o, %i.p
  store <2 x i64> %i.q, ptr %i.f, align 8
  %i.r = sub nsw i64 0, %2
  %i.s = getelementptr inbounds [48 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  ret ptr %i.s
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #8 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !623
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15fix_insert_slot.exit, !prof !6

bb.b:                                             ; preds = %._crit_edge
  %.val2.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val2.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15fix_insert_slot.exit

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner15fix_insert_slot.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !623
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !8
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring15rbmg_edge_color(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [256 x i8], align 8               ; 29 uses
  %.sroa.10270.i = alloca [24 x i8], align 8      ; 5 uses
  %.sroa.14.i = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.9.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.13.i = alloca [16 x i8], align 8         ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 34 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [256 x i8], align 8               ; 5 uses
  %i.l = alloca [128 x i8], align 8               ; 21 uses
  %i.m = alloca [128 x i8], align 8               ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 16 uses
  %i.p = alloca [128 x i8], align 8               ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !846
  call fastcc void @_RNvXsf_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedENtNtBX_5clone5Clone5cloneB1E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1), !noalias !844
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.t = load <2 x i64>, ptr %i.q, align 8, !alias.scope !845, !noalias !844
  store <2 x i64> %i.t, ptr %i.s, align 8, !noalias !846
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.v = load <2 x i32>, ptr %i.r, align 8, !alias.scope !845, !noalias !844
  store <2 x i32> %i.v, ptr %i.u, align 8, !noalias !846
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !845, !noalias !844, !noundef !5 ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val5.i = load ptr, ptr %i.y, align 8, !alias.scope !845, !noalias !844, !nonnull !5, !noundef !5 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val6.i = load i64, ptr %i.z, align 8, !alias.scope !845, !noalias !844, !noundef !5 ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.aa = shl nuw i64 %.val6.i, 2                 ; 5 uses
  %i.ab = icmp eq i64 %.val6.i, 0                 ; 7 uses
  br i1 %i.ab, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !848
  %i.ac = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 9) 4) #26, !noalias !848 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.c, label %.lr.ph.preheader.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.aa) #30
          to label %.noexc.i unwind label %bb.e, !noalias !846

.noexc.i:                                         ; preds = %bb.c
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val5.i, i64 %.val6.i
  %i.af = and i64 %.val6.i, 4611686018427387903
  %i.ag = add i64 %.val6.i, -1
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ag) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = and i64 %i.ai, 7                        ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 8, i64 %i.aj
  %n.vec = sub nsw i64 %i.ai, %i.al               ; 4 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %.val5.i, i64 %i.am
  %i.ao = sub i64 %.val6.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.val5.i, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !849, !noalias !850
  %wide.load579 = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !849, !noalias !850
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring15rbmg_edge_color:bb.a
  %.sroa.11247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.6255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %.sroa.7258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %.sroa.7261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %.sroa.8264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %.sroa.9267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %.sroa.10270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %.sroa.10272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %.sroa.11275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %.sroa.12278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %.sroa.12281.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %.sroa.13284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.sroa.17.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %.sroa.23.0..sroa_idx309.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %.sroa.29.0..sroa_idx315.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %.promoted.i63 = load i64, ptr %i.g, align 8, !noalias !869
  %.promoted355.i = load ptr, ptr %i.ex, align 8, !noalias !869
  %.promoted358.i = load i64, ptr %i.gt, align 8, !noalias !869
  %.promoted361.i = load ptr, ptr %i.ey, align 8, !noalias !869
  %.promoted364.i = load i64, ptr %i.gu, align 8, !noalias !869
  %.promoted367.i = load ptr, ptr %i.gv, align 8, !noalias !869
  %.promoted370.i = load i64, ptr %i.gw, align 8, !noalias !869
  %.promoted373.i = load ptr, ptr %i.gx, align 8, !noalias !869
  br label %bb.bc

._crit_edge.i:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !869
  %i.gy = shl nuw nsw i64 %.val6.i, 3             ; 2 uses
  %.not.i.i64 = icmp samesign ugt i64 %.val6.i, 1152921504606846975
  br i1 %.not.i.i64, label %bb.bd, label %bb.az, !prof !10

bb.az:                                            ; preds = %._crit_edge.i
  br i1 %i.ab, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !886
  %i.gz = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gy, i64 noundef range(i64 1, 9) 4) #26, !noalias !886 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hb = ptrtoint ptr %i.gz to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.bc:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i, %.lr.ph198.i
  %.sroa.13284.0.copyload374.i = phi ptr [ %.promoted373.i, %.lr.ph198.i ], [ %.sroa.13284.0.copyload375.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 2 uses
  %.sroa.12281.0.copyload371.i = phi i64 [ %.promoted370.i, %.lr.ph198.i ], [ %.sroa.12281.0.copyload372.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 4 uses
  %.sroa.11275.0.copyload368.i = phi ptr [ %.promoted367.i, %.lr.ph198.i ], [ %.sroa.11275.0.copyload369.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 2 uses
  %.sroa.10272.0.copyload365.i = phi i64 [ %.promoted364.i, %.lr.ph198.i ], [ %.sroa.10272.0.copyload366.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 4 uses
  %.sroa.8264.0.copyload362.i = phi ptr [ %.promoted361.i, %.lr.ph198.i ], [ %.sroa.8264.0.copyload363.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 2 uses
  %.sroa.7261.0.copyload359.i = phi i64 [ %.promoted358.i, %.lr.ph198.i ], [ %.sroa.7261.0.copyload360.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 4 uses
  %.sroa.6255.0.copyload356.i = phi ptr [ %.promoted355.i, %.lr.ph198.i ], [ %.sroa.6255.0.copyload357.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 2 uses
  %.sroa.0.0.copyload353.i = phi i64 [ %.promoted.i63, %.lr.ph198.i ], [ %.sroa.0.0.copyload354.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ] ; 3 uses
  %.sroa.027.0197.i = phi i32 [ 0, %.lr.ph198.i ], [ %i.hc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i ]
  %i.hc = add nuw nsw i32 %.sroa.027.0197.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !869
  invoke fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring19rbmg_split_into_two(ptr noalias nofree noundef align 8 captures(none) dereferenceable(256) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g)
          to label %bb.bs unwind label %.loopexit.i, !noalias !869

bb.bd:                                            ; preds = %bb.ba, %._crit_edge.i
  %.sroa.4144.0.ph.i = phi i64 [ 4, %bb.ba ], [ 0, %._crit_edge.i ]
  %.sroa.10146.0.ph.i = phi i64 [ %i.gy, %bb.ba ], [ undef, %._crit_edge.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4144.0.ph.i, i64 %.sroa.10146.0.ph.i) #30
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !869

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.bb, %bb.az
  %.sroa.10146.0.i = phi i64 [ %i.hb, %bb.bb ], [ 4, %bb.az ]
  %i.hd = inttoptr i64 %.sroa.10146.0.i to ptr    ; 2 uses
  store i64 %.val6.i, ptr %i.e, align 8, !noalias !869
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.hd, ptr %i.he, align 8, !noalias !869
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.hf, align 8, !noalias !869
  %i.hg = load ptr, ptr %i.ey, align 8, !noalias !869, !nonnull !5, !noundef !5 ; 3 uses
  %i.hh = load i64, ptr %i.ez, align 8, !noalias !869, !noundef !5
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %i.hh
  br label %bb.be

bb.be:                                            ; preds = %bb.bq, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %i.hj = phi ptr [ %i.hd, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ii, %bb.bq ]
  %.sroa.7231.0.copyload233 = phi i64 [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ik, %bb.bq ] ; 6 uses
  %.sroa.0136.0.i = phi ptr [ %i.hg, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.hm, %bb.bq ]
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %i.hk = phi ptr [ %i.hm, %bb.bg ], [ %.sroa.0136.0.i, %bb.be ] ; 4 uses
  %i.hl = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hl, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.ho = load i8, ptr %i.hn, align 8, !range !18, !alias.scope !887, !noalias !888, !noundef !5
  %.not.i.i48.i = icmp eq i8 %i.ho, 2
  br i1 %.not.i.i48.i, label %bb.bf, label %bb.bj

bb.bh:                                            ; preds = %bb.bk
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i65 = load i64, ptr %i.e, align 8, !noalias !869 ; 2 uses
  %i.hq = icmp eq i64 %.val.i65, 0
  br i1 %i.hq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i58, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val43.i = load ptr, ptr %i.he, align 8, !noalias !869, !nonnull !5, !noundef !5
  %i.hr = shl nuw i64 %.val.i65, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.i, i64 noundef range(i64 1, 0) %i.hr, i64 noundef range(i64 1, 9) 4) #26, !noalias !869
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i58

bb.bj:                                            ; preds = %bb.bg
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.02.0.copyload.i.i49.i = load i64, ptr %i.hs, align 8, !alias.scope !887, !noalias !888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.ht = load i64, ptr %i.e, align 8, !range !11, !alias.scope !889, !noalias !869, !noundef !5
  %i.hu = icmp eq i64 %.sroa.7231.0.copyload233, %i.ht
  br i1 %i.hu, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBN_EE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #31
          to label %._crit_edge316.i unwind label %bb.bh, !noalias !869

._crit_edge316.i:                                 ; preds = %bb.bk
  %.pre.i = load ptr, ptr %i.he, align 8, !alias.scope !889, !noalias !869
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bf
  %.sroa.0226.0.copyload227 = load i64, ptr %i.e, align 8, !noalias !868 ; 3 uses
  %.sroa.5228.0.copyload230 = load ptr, ptr %i.he, align 8, !noalias !868 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %.val.i.i.i54.i = load i64, ptr %i.g, align 8, !alias.scope !893, !noalias !869 ; 2 uses
  %i.hv = icmp eq i64 %.val.i.i.i54.i, 0
  br i1 %i.hv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val1.i.i.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !893, !noalias !869, !nonnull !5, !noundef !5
  %i.hw = mul nuw i64 %.val.i.i.i54.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %i.hw, i64 noundef range(i64 1, 9) 4) #26, !noalias !894
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %i.hx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i.i.i.i = load i64, ptr %i.hx, align 8, !alias.scope !893, !noalias !869 ; 2 uses
  %i.hy = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.hy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i
  %i.hz = shl nuw i64 %.val2.i.i.i.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hg, i64 noundef range(i64 1, 0) %i.hz, i64 noundef range(i64 1, 9) 8) #26, !noalias !894
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i.i: ; preds = %bb.bn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.val5.i.i = load i64, ptr %i.ia, align 8, !alias.scope !890, !noalias !869 ; 2 uses
  %i.ib = icmp eq i64 %.val5.i.i, 0
  br i1 %i.ib, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.val6.i.i = load ptr, ptr %i.ic, align 8, !alias.scope !890, !noalias !869, !nonnull !5, !noundef !5
  %i.id = shl nuw i64 %.val5.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.id, i64 noundef range(i64 1, 9) 4) #26, !noalias !895
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i.i: ; preds = %bb.bo, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.val.i.i = load i64, ptr %i.ie, align 8, !alias.scope !890, !noalias !869 ; 2 uses
  %i.if = icmp eq i64 %.val.i.i, 0
  br i1 %i.if, label %bb.db, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val2.i.i = load ptr, ptr %i.ig, align 8, !alias.scope !890, !noalias !869, !nonnull !5, !noundef !5
  %i.ih = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %i.ih, i64 noundef range(i64 1, 9) 4) #26, !noalias !895
  br label %bb.db

bb.bq:                                            ; preds = %._crit_edge316.i, %bb.bj
  %i.ii = phi ptr [ %.pre.i, %._crit_edge316.i ], [ %i.hj, %bb.bj ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.7231.0.copyload233
  store i64 %.sroa.02.0.copyload.i.i49.i, ptr %i.ij, align 4, !noalias !896
  %i.ik = add i64 %.sroa.7231.0.copyload233, 1    ; 2 uses
  store i64 %i.ik, ptr %i.hf, align 8, !alias.scope !889, !noalias !869
  br label %bb.be

bb.br:                                            ; preds = %bb.cz, %bb.bd
  unreachable

bb.bs:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !869 ; 4 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i60, align 8, !noalias !869 ; 4 uses
  %.sroa.6232.0.copyload.i = load i64, ptr %.sroa.6232.0..sroa_idx.i, align 8, !noalias !869 ; 3 uses
  %i.il = load <2 x i64>, ptr %.sroa.6.0..sroa_idx.i61, align 8, !noalias !869
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i62, align 8, !noalias !869 ; 6 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !869 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, i64 24, i1 false), !noalias !869
  %.sroa.9240.0.copyload.i = load i64, ptr %.sroa.9240.0..sroa_idx.i, align 8, !noalias !869 ; 4 uses
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !869 ; 4 uses
  %.sroa.11247.0.copyload.i = load i64, ptr %.sroa.11247.0..sroa_idx.i, align 8, !noalias !869 ; 3 uses
  %i.im = load <2 x i64>, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !869
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !869 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i, i64 16, i1 false), !noalias !869
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10270.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  %.sroa.0253.0.copyload.i = load i64, ptr %i.gs, align 8, !noalias !869 ; 5 uses
  %.sroa.6255.0.copyload.i = load ptr, ptr %.sroa.6255.0..sroa_idx.i, align 8, !noalias !869 ; 5 uses
  %.sroa.7261.0.copyload.i = load i64, ptr %.sroa.7261.0..sroa_idx.i, align 8, !noalias !869 ; 4 uses
  %i.in = load <2 x i64>, ptr %.sroa.7258.0..sroa_idx.i, align 8, !noalias !869
  %.sroa.8264.0.copyload.i = load ptr, ptr %.sroa.8264.0..sroa_idx.i, align 8, !noalias !869 ; 7 uses
  %.sroa.9267.0.copyload.i = load i64, ptr %.sroa.9267.0..sroa_idx.i, align 8, !noalias !869 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10270.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10270.0..sroa_idx.i, i64 24, i1 false), !noalias !869
  %.sroa.10272.0.copyload.i = load i64, ptr %.sroa.10272.0..sroa_idx.i, align 8, !noalias !869 ; 5 uses
  %.sroa.11275.0.copyload.i = load ptr, ptr %.sroa.11275.0..sroa_idx.i, align 8, !noalias !869 ; 5 uses
  %.sroa.12281.0.copyload.i = load i64, ptr %.sroa.12281.0..sroa_idx.i, align 8, !noalias !869 ; 4 uses
  %i.io = load <2 x i64>, ptr %.sroa.12278.0..sroa_idx.i, align 8, !noalias !869
  %.sroa.13284.0.copyload.i = load ptr, ptr %.sroa.13284.0..sroa_idx.i, align 8, !noalias !869 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx.i, i64 16, i1 false), !noalias !869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !869
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload.i, i64 %.sroa.8.0.copyload.i
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bw, %bb.bs
  %i.iq = phi ptr [ %.sroa.7.0.copyload.i, %bb.bs ], [ %i.it, %bb.bw ]
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.bs ], [ %i.ix, %bb.bw ] ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %i.ir = phi ptr [ %i.it, %bb.bv ], [ %i.iq, %bb.bt ] ; 3 uses
  %i.is = icmp eq ptr %i.ir, %i.ip
  br i1 %i.is, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.iv = load i8, ptr %i.iu, align 8, !range !18, !alias.scope !897, !noalias !898, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.iv, 2
  br i1 %.not.i.i.i.i.i, label %bb.bu, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iw = zext nneg i8 %i.iv to i64
  %i.ix = add i64 %.sroa.0.0.i.i, %i.iw
  br label %bb.bt

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i: ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8264.0.copyload.i) ]
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8264.0.copyload.i, i64 %.sroa.9267.0.copyload.i
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ca, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i
  %i.iz = phi ptr [ %.sroa.8264.0.copyload.i, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i ], [ %i.jc, %bb.ca ]
  %.sroa.0.0.i59.i = phi i64 [ 0, %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i ], [ %i.jg, %bb.ca ] ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %bb.bx
  %i.ja = phi ptr [ %i.jc, %bb.bz ], [ %i.iz, %bb.bx ] ; 3 uses
  %i.jb = icmp eq ptr %i.ja, %i.iy
  br i1 %i.jb, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.je = load i8, ptr %i.jd, align 8, !range !18, !alias.scope !899, !noalias !900, !noundef !5 ; 2 uses
  %.not.i.i.i.i60.i = icmp eq i8 %i.je, 2
  br i1 %.not.i.i.i.i60.i, label %bb.by, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jf = zext nneg i8 %i.je to i64
  %i.jg = add i64 %.sroa.0.0.i59.i, %i.jf
  br label %bb.bx

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i: ; preds = %bb.by
  %.not37.not.i = icmp ugt i64 %.sroa.0.0.i.i, %.sroa.0.0.i59.i
  %i.jh = icmp eq i64 %.sroa.0.0.copyload353.i, 0 ; 2 uses
  br i1 %.not37.not.i, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i
  br i1 %i.jh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i63.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ji = mul nuw i64 %.sroa.0.0.copyload353.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6255.0.copyload356.i, i64 noundef range(i64 1, 0) %i.ji, i64 noundef range(i64 1, 9) 4) #26, !noalias !901
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i63.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i63.i: ; preds = %bb.cc, %bb.cb
  %i.jj = icmp eq i64 %.sroa.7261.0.copyload359.i, 0
  br i1 %i.jj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i66.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i63.i
  %i.jk = shl nuw i64 %.sroa.7261.0.copyload359.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8264.0.copyload362.i, i64 noundef range(i64 1, 0) %i.jk, i64 noundef range(i64 1, 9) 8) #26, !noalias !901
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i66.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i66.i: ; preds = %bb.cd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i63.i
  %i.jl = icmp eq i64 %.sroa.10272.0.copyload365.i, 0
  br i1 %i.jl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i69.i, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i66.i
  %i.jm = shl nuw i64 %.sroa.10272.0.copyload365.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11275.0.copyload368.i, i64 noundef range(i64 1, 0) %i.jm, i64 noundef range(i64 1, 9) 4) #26, !noalias !902
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i69.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i69.i: ; preds = %bb.ce, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i66.i
  %i.jn = icmp eq i64 %.sroa.12281.0.copyload371.i, 0
  br i1 %i.jn, label %bb.cp, label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i69.i
  %i.jo = shl nuw i64 %.sroa.12281.0.copyload371.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13284.0.copyload374.i, i64 noundef range(i64 1, 0) %i.jo, i64 noundef range(i64 1, 9) 4) #26, !noalias !902
  br label %bb.cp

bb.cg:                                            ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_.exit.i
  br i1 %i.jh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i75.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jp = mul nuw i64 %.sroa.0.0.copyload353.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6255.0.copyload356.i, i64 noundef range(i64 1, 0) %i.jp, i64 noundef range(i64 1, 9) 4) #26, !noalias !903
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i75.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i75.i: ; preds = %bb.ch, %bb.cg
  %i.jq = icmp eq i64 %.sroa.7261.0.copyload359.i, 0
  br i1 %i.jq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i78.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i75.i
  %i.jr = shl nuw i64 %.sroa.7261.0.copyload359.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8264.0.copyload362.i, i64 noundef range(i64 1, 0) %i.jr, i64 noundef range(i64 1, 9) 8) #26, !noalias !903
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i78.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i78.i: ; preds = %bb.ci, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i75.i
  %i.js = icmp eq i64 %.sroa.10272.0.copyload365.i, 0
  br i1 %i.js, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i81.i, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i78.i
  %i.jt = shl nuw i64 %.sroa.10272.0.copyload365.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11275.0.copyload368.i, i64 noundef range(i64 1, 0) %i.jt, i64 noundef range(i64 1, 9) 4) #26, !noalias !904
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i81.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i81.i: ; preds = %bb.cj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i78.i
  %i.ju = icmp eq i64 %.sroa.12281.0.copyload371.i, 0
  br i1 %i.ju, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit84.i, label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i81.i
  %i.jv = shl nuw i64 %.sroa.12281.0.copyload371.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13284.0.copyload374.i, i64 noundef range(i64 1, 0) %i.jv, i64 noundef range(i64 1, 9) 4) #26, !noalias !904
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit84.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit84.i: ; preds = %bb.ck, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i81.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.g, align 8, !noalias !869
  store ptr %.sroa.5.0.copyload.i, ptr %i.ex, align 8, !noalias !869
  store <2 x i64> %i.il, ptr %i.ew, align 8, !noalias !869
  store ptr %.sroa.7.0.copyload.i, ptr %i.ey, align 8, !noalias !869
  store i64 %.sroa.8.0.copyload.i, ptr %i.ez, align 8, !noalias !869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx304.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !869
  store i64 %.sroa.9240.0.copyload.i, ptr %i.gu, align 8, !noalias !869
  store ptr %.sroa.10.0.copyload.i, ptr %i.gv, align 8, !noalias !869
  store <2 x i64> %i.im, ptr %.sroa.23.0..sroa_idx309.i, align 8, !noalias !869
  store ptr %.sroa.12.0.copyload.i, ptr %i.gx, align 8, !noalias !869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx315.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i, i64 16, i1 false), !noalias !869
  %i.jw = icmp eq i64 %.sroa.0253.0.copyload.i, 0
  br i1 %i.jw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i87.i, label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit84.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6255.0.copyload.i) ]
  %i.jx = mul nuw i64 %.sroa.0253.0.copyload.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6255.0.copyload.i, i64 noundef range(i64 1, 0) %i.jx, i64 noundef range(i64 1, 9) 4) #26, !noalias !905
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i87.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i87.i: ; preds = %bb.cl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit84.i
  %i.jy = icmp eq i64 %.sroa.7261.0.copyload.i, 0
  br i1 %i.jy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i90.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i87.i
  %i.jz = shl nuw i64 %.sroa.7261.0.copyload.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8264.0.copyload.i, i64 noundef range(i64 1, 0) %i.jz, i64 noundef range(i64 1, 9) 8) #26, !noalias !905
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i90.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i90.i: ; preds = %bb.cm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i87.i
  %i.ka = icmp eq i64 %.sroa.10272.0.copyload.i, 0
  br i1 %i.ka, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i93.i, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i90.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11275.0.copyload.i) ]
  %i.kb = shl nuw i64 %.sroa.10272.0.copyload.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11275.0.copyload.i, i64 noundef range(i64 1, 0) %i.kb, i64 noundef range(i64 1, 9) 4) #26, !noalias !906
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i93.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i93.i: ; preds = %bb.cn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i90.i
  %i.kc = icmp eq i64 %.sroa.12281.0.copyload.i, 0
  br i1 %i.kc, label %.thread.i, label %bb.co

bb.co:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i93.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13284.0.copyload.i) ]
  %i.kd = shl nuw i64 %.sroa.12281.0.copyload.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13284.0.copyload.i, i64 noundef range(i64 1, 0) %i.kd, i64 noundef range(i64 1, 9) 4) #26, !noalias !906
  br label %.thread.i

.thread.i:                                        ; preds = %bb.co, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10270.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i: ; preds = %bb.ct, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i, %.thread.i
  %.sroa.13284.0.copyload375.i = phi ptr [ %.sroa.13284.0.copyload.i, %bb.ct ], [ %.sroa.13284.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.12.0.copyload.i, %.thread.i ]
  %.sroa.12281.0.copyload372.i = phi i64 [ %.sroa.12281.0.copyload.i, %bb.ct ], [ %.sroa.12281.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.11247.0.copyload.i, %.thread.i ]
  %.sroa.11275.0.copyload369.i = phi ptr [ %.sroa.11275.0.copyload.i, %bb.ct ], [ %.sroa.11275.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.10.0.copyload.i, %.thread.i ]
  %.sroa.10272.0.copyload366.i = phi i64 [ %.sroa.10272.0.copyload.i, %bb.ct ], [ %.sroa.10272.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.9240.0.copyload.i, %.thread.i ]
  %.sroa.8264.0.copyload363.i = phi ptr [ %.sroa.8264.0.copyload.i, %bb.ct ], [ %.sroa.8264.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.7.0.copyload.i, %.thread.i ]
  %.sroa.7261.0.copyload360.i = phi i64 [ %.sroa.7261.0.copyload.i, %bb.ct ], [ %.sroa.7261.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.6232.0.copyload.i, %.thread.i ]
  %.sroa.6255.0.copyload357.i = phi ptr [ %.sroa.6255.0.copyload.i, %bb.ct ], [ %.sroa.6255.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.5.0.copyload.i, %.thread.i ]
  %.sroa.0.0.copyload354.i = phi i64 [ %.sroa.0253.0.copyload.i, %bb.ct ], [ %.sroa.0253.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i ], [ %.sroa.0.0.copyload.i, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  %exitcond226.not.i = icmp eq i32 %i.hc, %i.en
  br i1 %exitcond226.not.i, label %._crit_edge.i, label %bb.bc

bb.cp:                                            ; preds = %bb.cf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i69.i
  store i64 %.sroa.0253.0.copyload.i, ptr %i.g, align 8, !noalias !869
  store ptr %.sroa.6255.0.copyload.i, ptr %i.ex, align 8, !noalias !869
  store <2 x i64> %i.in, ptr %i.ew, align 8, !noalias !869
  store ptr %.sroa.8264.0.copyload.i, ptr %i.ey, align 8, !noalias !869
  store i64 %.sroa.9267.0.copyload.i, ptr %i.ez, align 8, !noalias !869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx304.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10270.i, i64 24, i1 false), !noalias !869
  store i64 %.sroa.10272.0.copyload.i, ptr %i.gu, align 8, !noalias !869
  store ptr %.sroa.11275.0.copyload.i, ptr %i.gv, align 8, !noalias !869
  store <2 x i64> %i.io, ptr %.sroa.23.0..sroa_idx309.i, align 8, !noalias !869
  store ptr %.sroa.13284.0.copyload.i, ptr %i.gx, align 8, !noalias !869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx315.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, i64 16, i1 false), !noalias !869
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10270.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %i.ke = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ke, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i99.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.kf = mul nuw i64 %.sroa.0.0.copyload.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef range(i64 1, 0) %i.kf, i64 noundef range(i64 1, 9) 4) #26, !noalias !907
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i99.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i99.i: ; preds = %bb.cq, %bb.cp
  %i.kg = icmp eq i64 %.sroa.6232.0.copyload.i, 0
  br i1 %i.kg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i102.i, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i99.i
  %i.kh = shl nuw i64 %.sroa.6232.0.copyload.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i, i64 noundef range(i64 1, 0) %i.kh, i64 noundef range(i64 1, 9) 8) #26, !noalias !907
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i102.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i102.i: ; preds = %bb.cr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i99.i
  %i.ki = icmp eq i64 %.sroa.9240.0.copyload.i, 0
  br i1 %i.ki, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i, label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i102.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i) ]
  %i.kj = shl nuw i64 %.sroa.9240.0.copyload.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.copyload.i, i64 noundef range(i64 1, 0) %i.kj, i64 noundef range(i64 1, 9) 4) #26, !noalias !908
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i: ; preds = %bb.cs, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i102.i
  %i.kk = icmp eq i64 %.sroa.11247.0.copyload.i, 0
  br i1 %i.kk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i105.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload.i) ]
  %i.kl = shl nuw i64 %.sroa.11247.0.copyload.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.copyload.i, i64 noundef range(i64 1, 0) %i.kl, i64 noundef range(i64 1, 9) 4) #26, !noalias !908
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit108.i

.lr.ph.i:                                         ; preds = %.preheader163.i, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i
  %.sroa.011.0196.i = phi i64 [ %i.km, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i ], [ 0, %.preheader163.i ] ; 4 uses
  %i.km = add nuw nsw i64 %.sroa.011.0196.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.011.0196.i, %.val4.i
  br i1 %exitcond.not.i, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.sroa.011.0196.i
  %i.ko = load i32, ptr %i.kn, align 4, !noalias !869, !noundef !5 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.sroa.011.0196.i
  %i.kq = load i32, ptr %i.kp, align 4, !noalias !869, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %.val3.i.i.i109.i = load i64, ptr %i.ew, align 8, !alias.scope !912, !noalias !869, !noundef !5
  %i.kr = zext i32 %i.ko to i64                   ; 2 uses
  %i.ks = icmp ugt i64 %.val3.i.i.i109.i, %i.kr
  br i1 %i.ks, label %bb.cv, label %.loopexit.i110.i

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i.i111.i = load ptr, ptr %i.ex, align 8, !alias.scope !912, !noalias !869, !nonnull !5, !noundef !5
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i111.i, i64 %i.kr ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i8, ptr %i.ku, align 4, !range !15, !noalias !913, !noundef !5
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i, label %.loopexit.i110.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i: ; preds = %bb.cv
  %.val4.i.i.i113.i = load ptr, ptr %i.ey, align 8, !alias.scope !912, !noalias !869, !nonnull !5, !noundef !5 ; 3 uses
  %.val5.i.i.i114.i = load i64, ptr %i.ez, align 8, !alias.scope !912, !noalias !869 ; 2 uses
  br label %bb.cx

.loopexit.i.i.i.i117.i:                           ; preds = %bb.cx, %bb.cw
  %.pn.1.i.i.i.i118.i = phi ptr [ %i.kz, %bb.cw ], [ %i.kt, %bb.cx ]
  %.sroa.04.0.in.1.i.i.i.i119.i = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i118.i, i64 4
  %.sroa.04.0.1.i.i.i.i120.i = load i32, ptr %.sroa.04.0.in.1.i.i.i.i119.i, align 4, !noalias !913, !noundef !5
  %i.kx = zext i32 %.sroa.04.0.1.i.i.i.i120.i to i64 ; 3 uses
  %i.ky = icmp ugt i64 %.val5.i.i.i114.i, %i.kx
  br i1 %i.ky, label %bb.cw, label %.loopexit.i110.i

bb.cw:                                            ; preds = %.loopexit.i.i.i.i117.i
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i113.i, i64 %i.kx ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.val.1.i.i.i.i121.i = load i32, ptr %i.la, align 4, !noalias !914, !noundef !5
  %i.lb = icmp eq i32 %.val.1.i.i.i.i121.i, %i.kq
  br i1 %i.lb, label %.loopexit8.i122.i, label %.loopexit.i.i.i.i117.i

bb.cx:                                            ; preds = %bb.cy, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i
  %.pn.i.i.i.i115.i = phi ptr [ %i.kt, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i ], [ %i.le, %bb.cy ]
  %.sroa.04.0.i.i.i.i116.i = load i32, ptr %.pn.i.i.i.i115.i, align 4, !noalias !913, !noundef !5
  %i.lc = zext i32 %.sroa.04.0.i.i.i.i116.i to i64 ; 3 uses
  %i.ld = icmp ugt i64 %.val5.i.i.i114.i, %i.lc
  br i1 %i.ld, label %bb.cy, label %.loopexit.i.i.i.i117.i

bb.cy:                                            ; preds = %bb.cx
  %i.le = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i113.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %.val.i.i.i.i127.i = load i32, ptr %i.lf, align 4, !noalias !914, !noundef !5
  %i.lg = icmp eq i32 %.val.i.i.i.i127.i, %i.kq
  br i1 %i.lg, label %.loopexit8.i122.i, label %bb.cx

.loopexit8.i122.i:                                ; preds = %bb.cy, %bb.cw
  %.pre-phi.i123.i = phi i64 [ %i.kx, %bb.cw ], [ %i.lc, %bb.cy ]
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i113.i, i64 %.pre-phi.i123.i ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load i8, ptr %i.li, align 8, !range !18, !noalias !915, !noundef !5
  %.not.i.i124.i = icmp eq i8 %i.lj, 2
  br i1 %.not.i.i124.i, label %select.unfold.i.invoke.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i125.i

.loopexit.i110.i:                                 ; preds = %.loopexit.i.i.i.i117.i, %bb.cv, %bb.cu
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8add_edgeB1k_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g, i32 noundef %i.ko, i32 noundef %i.kq, i64 noundef %.recomposed, i1 noundef zeroext true, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
          to label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i unwind label %.loopexit.split-lp.loopexit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i125.i: ; preds = %.loopexit8.i122.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !noalias !915, !noundef !5
  %i.lm = add i64 %i.ll, %.recomposed
  store i64 %i.lm, ptr %i.lk, align 8, !noalias !915
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i

_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i: ; preds = %.loopexit.i110.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i125.i
  %exitcond225.not.i = icmp eq i64 %i.km, %.val6.i
  br i1 %exitcond225.not.i, label %.preheader.i, label %.lr.ph.i

bb.cz:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val4.i, i64 noundef %.val4.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #30
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !869

.body68:                                          ; preds = %bb.du, %bb.da
  %.sroa.10217.0 = phi ptr [ %.sroa.10217.2, %bb.du ], [ %.sroa.10217.1, %bb.da ] ; 2 uses
  %.sroa.0213.0 = phi i64 [ %.sroa.0213.2, %bb.du ], [ %.sroa.0213.1, %bb.da ] ; 2 uses
  %.sroa.09.0 = phi i1 [ %.sroa.09.4, %bb.du ], [ true, %bb.da ]
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.du ], [ %i.lp, %bb.da ] ; 2 uses
  %i.ln = add i64 %.sroa.0213.0, -1
  %i.lo = icmp ult i64 %i.ln, -2
  %or.cond307.not = and i1 %i.lo, %.sroa.09.0
  br i1 %or.cond307.not, label %bb.gg, label %.thread

bb.da:                                            ; preds = %bb.ao, %bb.dq
  %.sroa.10217.1 = phi ptr [ %.sroa.10217.2, %bb.dq ], [ undef, %bb.ao ]
  %.sroa.0213.1 = phi i64 [ %.sroa.0213.2, %bb.dq ], [ -1, %bb.ao ]
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %.body68

bb.db:                                            ; preds = %bb.bp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5228.0.copyload230) ]
  %.idx.i = shl nuw nsw i64 %.sroa.7231.0.copyload233, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.5228.0.copyload230, i64 %.idx.i
  %i.lr = icmp eq i64 %.sroa.7231.0.copyload233, 0
  br i1 %i.lr, label %bb.dp, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.db
  %i.ls = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val3.i.i.i.i71 = load i64, ptr %i.ls, align 8, !alias.scope !917, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i72 = load ptr, ptr %i.lt, align 8, !alias.scope !916, !nonnull !5 ; 3 uses
  %.val4.i.i.i.i73 = load ptr, ptr %i.er, align 8, !alias.scope !916, !nonnull !5 ; 5 uses
  %.val5.i.i.i.i74 = load i64, ptr %i.et, align 8, !alias.scope !916 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.p, i64 68 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %.promoted.i75 = load i32, ptr %i.lu, align 4, !alias.scope !916 ; 2 uses
  %.promoted12.i = load i64, ptr %i.lv, align 8, !alias.scope !916 ; 2 uses
  br label %bb.dc

bb.dc:                                            ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i, %.lr.ph.i70
  %i.lw = phi i64 [ %.promoted12.i, %.lr.ph.i70 ], [ %i.oa, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %.sroa.0.0.i10.i.i.i355 = phi i32 [ %.promoted.i75, %.lr.ph.i70 ], [ %.sroa.0.0.i10.i.i.i354, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %i.lx = phi i64 [ %.promoted12.i, %.lr.ph.i70 ], [ %i.ob, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %.sroa.0.0.i10.i.i11.i = phi i32 [ %.promoted.i75, %.lr.ph.i70 ], [ %.sroa.0.0.i10.i.i10.i, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %.sroa.0.09.i = phi ptr [ %.sroa.5228.0.copyload230, %.lr.ph.i70 ], [ %i.ly, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8 ; 2 uses
  %i.lz = load i32, ptr %.sroa.0.09.i, align 4, !noalias !916, !noundef !5
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !noalias !916, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.mc = zext i32 %i.lz to i64                   ; 2 uses
  %i.md = icmp ugt i64 %.val3.i.i.i.i71, %i.mc
  br i1 %i.md, label %bb.dd, label %select.unfold.i.i.invoke

bb.dd:                                            ; preds = %bb.dc
  %i.me = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %i.mc ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i8, ptr %i.mf, align 4, !range !15, !noalias !917, !noundef !5
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77, label %select.unfold.i.i.invoke

.loopexit.i.i.i.i.i80:                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77, %bb.de
  %.pn.1.i.i.i.i.i81 = phi ptr [ %i.mk, %bb.de ], [ %i.me, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77 ]
  %.sroa.04.0.in.1.i.i.i.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i.i81, i64 4
  %.sroa.04.0.1.i.i.i.i.i83 = load i32, ptr %.sroa.04.0.in.1.i.i.i.i.i82, align 4, !noalias !917, !noundef !5 ; 2 uses
  %i.mi = zext i32 %.sroa.04.0.1.i.i.i.i.i83 to i64 ; 3 uses
  %i.mj = icmp ugt i64 %.val5.i.i.i.i74, %i.mi
  br i1 %i.mj, label %bb.de, label %select.unfold.i.i.invoke

bb.de:                                            ; preds = %.loopexit.i.i.i.i.i80
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.mi ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %.val.1.i.i.i.i.i84 = load i32, ptr %i.ml, align 4, !noalias !921, !noundef !5
  %i.mm = icmp eq i32 %.val.1.i.i.i.i.i84, %i.mb
  br i1 %i.mm, label %.loopexit10.i.i, label %.loopexit.i.i.i.i.i80

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77: ; preds = %bb.dd, %bb.df
  %.pn.i.i.i.i.i78 = phi ptr [ %i.mp, %bb.df ], [ %i.me, %bb.dd ]
  %.sroa.04.0.i.i.i.i.i79 = load i32, ptr %.pn.i.i.i.i.i78, align 4, !noalias !917, !noundef !5 ; 2 uses
  %i.mn = zext i32 %.sroa.04.0.i.i.i.i.i79 to i64 ; 3 uses
  %i.mo = icmp ugt i64 %.val5.i.i.i.i74, %i.mn
  br i1 %i.mo, label %bb.df, label %.loopexit.i.i.i.i.i80

bb.df:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77
  %i.mp = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.mn ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %.val.i.i.i.i.i90 = load i32, ptr %i.mq, align 4, !noalias !921, !noundef !5
  %i.mr = icmp eq i32 %.val.i.i.i.i.i90, %i.mb
  br i1 %i.mr, label %.loopexit10.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77

.loopexit10.i.i:                                  ; preds = %bb.df, %bb.de
  %.pre-phi.i.i85 = phi i64 [ %i.mi, %bb.de ], [ %i.mn, %bb.df ]
  %.sroa.0.0.i10.i.i.i = phi i32 [ %.sroa.04.0.1.i.i.i.i.i83, %bb.de ], [ %.sroa.04.0.i.i.i.i.i79, %bb.df ] ; 6 uses
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %.pre-phi.i.i85 ; 7 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 8, !range !18, !noalias !922, !noundef !5
  %.not.i.i.i86 = icmp eq i8 %i.mu, 2
  br i1 %.not.i.i.i86, label %select.unfold.i.i.invoke, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87: ; preds = %.loopexit10.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !noalias !922, !noundef !5
  %i.mx = add i64 %i.mw, -1                       ; 2 uses
  store i64 %i.mx, ptr %i.mv, align 8, !noalias !922
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %bb.dg, label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i

select.unfold.i.i.invoke:                         ; preds = %.loopexit10.i.i, %bb.dc, %bb.dd, %.loopexit.i.i.i.i.i80
  %i.mz = phi ptr [ @12, %.loopexit.i.i.i.i.i80 ], [ @12, %bb.dd ], [ @12, %bb.dc ], [ @13, %.loopexit10.i.i ]
  store i32 %.sroa.0.0.i10.i.i.i355, ptr %i.lu, align 4
  store i64 %i.lw, ptr %i.lv, align 8
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mz) #27
          to label %select.unfold.i.i.cont unwind label %bb.dr

select.unfold.i.i.cont:                           ; preds = %select.unfold.i.i.invoke
  unreachable

bb.dg:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.ms, align 8, !noalias !923 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i89 = load i64, ptr %i.na, align 8, !noalias !923 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i89, 32 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.nb = and i64 %.sroa.02.0.copyload.i.i.i89, 4294967295 ; 2 uses
  %i.nc = icmp ugt i64 %.val3.i.i.i.i71, %i.nb
  br i1 %i.nc, label %bb.dh, label %.loopexit.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %i.nb ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !noalias !924, !noundef !5 ; 2 uses
  %i.nf = icmp eq i32 %i.ne, %.sroa.0.0.i10.i.i.i
  br i1 %i.nf, label %bb.do, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.dh, %bb.di
  %.sroa.8.0.i.i.i.i = phi i32 [ %i.nj, %bb.di ], [ %i.ne, %bb.dh ]
  %i.ng = zext i32 %.sroa.8.0.i.i.i.i to i64      ; 2 uses
  %i.nh = icmp ugt i64 %.val5.i.i.i.i74, %i.ng
  br i1 %i.nh, label %bb.di, label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

bb.di:                                            ; preds = %.preheader.i.i.i.i
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.ng ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !noalias !925, !noundef !5 ; 2 uses
  %i.nk = icmp eq i32 %i.nj, %.sroa.0.0.i10.i.i.i
  br i1 %i.nk, label %bb.dj, label %.preheader.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  store i32 %.sroa.020.0.extract.trunc.i.i.i.i, ptr %i.ni, align 4, !noalias !924
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.do, %bb.dj
  %i.nl = icmp ugt i64 %.val3.i.i.i.i71, %.sroa.2.0.extract.shift.i.i.i.i
  br i1 %i.nl, label %bb.dk, label %.loopexit.i.i.i

bb.dk:                                            ; preds = %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i
  %i.nm = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %.sroa.2.0.extract.shift.i.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !noalias !924, !noundef !5 ; 2 uses
  %i.np = icmp eq i32 %i.no, %.sroa.0.0.i10.i.i.i
  br i1 %i.np, label %bb.dn, label %.preheader.1.i.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %bb.dk, %bb.dl
  %.sroa.8.0.1.i.i.i.i = phi i32 [ %i.nu, %bb.dl ], [ %i.no, %bb.dk ]
  %i.nq = zext i32 %.sroa.8.0.1.i.i.i.i to i64    ; 2 uses
  %i.nr = icmp ugt i64 %.val5.i.i.i.i74, %i.nq
  br i1 %i.nr, label %bb.dl, label %.loopexit.i.i.i

bb.dl:                                            ; preds = %.preheader.1.i.i.i.i
  %i.ns = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.nq ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.nu = load i32, ptr %i.nt, align 4, !noalias !925, !noundef !5 ; 2 uses
  %i.nv = icmp eq i32 %i.nu, %.sroa.0.0.i10.i.i.i
  br i1 %i.nv, label %bb.dm, label %.preheader.1.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store i32 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %i.nw, align 4, !noalias !924
  br label %.loopexit.i.i.i

bb.dn:                                            ; preds = %bb.dk
  store i32 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %i.nn, align 4, !noalias !924
  br label %.loopexit.i.i.i

bb.do:                                            ; preds = %bb.dh
  store i32 %.sroa.020.0.extract.trunc.i.i.i.i, ptr %i.nd, align 4, !noalias !924
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.1.i.i.i.i, %bb.dn, %bb.dm, %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i, %bb.dg
  store i32 %.sroa.0.0.i10.i.i11.i, ptr %i.ms, align 8, !noalias !923
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 -1, ptr %i.nx, align 4, !noalias !923
  store i32 -1, ptr %i.na, align 8, !noalias !923
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  store i32 -1, ptr %i.ny, align 4, !noalias !923
  %i.nz = add i64 %i.lx, -1                       ; 2 uses
  store i8 2, ptr %i.mt, align 8, !noalias !923
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i

_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i: ; preds = %.loopexit.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87
  %i.oa = phi i64 [ %i.lw, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %i.nz, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.i10.i.i.i354 = phi i32 [ %.sroa.0.0.i10.i.i.i355, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %.sroa.0.0.i10.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.ob = phi i64 [ %i.lx, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %i.nz, %.loopexit.i.i.i ]
  %.sroa.0.0.i10.i.i10.i = phi i32 [ %.sroa.0.0.i10.i.i11.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %.sroa.0.0.i10.i.i.i, %.loopexit.i.i.i ]
  %i.oc = icmp eq ptr %i.ly, %i.lq
  br i1 %i.oc, label %.loopexit312, label %bb.dc

.loopexit312:                                     ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i
  store i32 %.sroa.0.0.i10.i.i.i354, ptr %i.lu, align 4
  store i64 %i.oa, ptr %i.lv, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %.loopexit312, %bb.db
  %i.od = add nsw i64 %i.x, -1
  store i64 %i.od, ptr %i.cg, align 8, !alias.scope !916
  br label %bb.dq

bb.dq:                                            ; preds = %bb.q, %bb.dp
  %.sroa.12.0 = phi i64 [ undef, %bb.q ], [ %.sroa.7231.0.copyload233, %bb.dp ]
end_hunk_6
begin_hunk_7_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring15rbmg_edge_color:bb.a
  br i1 %i.uu, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit.i139, label %.lr.ph.i.i.i134

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit.i139: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i138, %bb.fn
  %.val2.i140 = load i64, ptr %i.j, align 8, !range !11, !alias.scope !953, !noundef !5 ; 2 uses
  %i.uv = icmp eq i64 %.val2.i140, 0
  br i1 %i.uv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit141, label %bb.fp

bb.fp:                                            ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit.i139
  %i.uw = mul nuw i64 %.val2.i140, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.os, i64 noundef range(i64 1, 0) %i.uw, i64 noundef range(i64 1, 9) 8) #26, !noalias !953
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit141

bb.fq:                                            ; preds = %bb.fl
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 183 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
          to label %bb.al unwind label %.loopexit.split-lp

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit141: ; preds = %bb.fp, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %.val.i.i.i142 = load i64, ptr %i.l, align 8, !alias.scope !959 ; 2 uses
  %i.ux = icmp eq i64 %.val.i.i.i142, 0
  br i1 %i.ux, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i144, label %bb.fr

bb.fr:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit141
  %i.uy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i143 = load ptr, ptr %i.uy, align 8, !alias.scope !959, !nonnull !5, !noundef !5
  %i.uz = mul nuw i64 %.val.i.i.i142, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i143, i64 noundef range(i64 1, 0) %i.uz, i64 noundef range(i64 1, 9) 4) #26, !noalias !959
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i144

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i144: ; preds = %bb.fr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core.exit141
  %i.va = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val2.i.i.i145 = load i64, ptr %i.va, align 8, !alias.scope !959 ; 2 uses
  %i.vb = icmp eq i64 %.val2.i.i.i145, 0
  br i1 %i.vb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i147, label %bb.fs

bb.fs:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i144
  %i.vc = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val3.i.i.i146 = load ptr, ptr %i.vc, align 8, !alias.scope !959, !nonnull !5, !noundef !5
  %i.vd = shl nuw i64 %.val2.i.i.i145, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i146, i64 noundef range(i64 1, 0) %i.vd, i64 noundef range(i64 1, 9) 8) #26, !noalias !959
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i147

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i147: ; preds = %bb.fs, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i144
  %i.ve = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.val5.i148 = load i64, ptr %i.ve, align 8, !alias.scope !956 ; 2 uses
  %i.vf = icmp eq i64 %.val5.i148, 0
  br i1 %i.vf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i150, label %bb.ft

bb.ft:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i147
  %i.vg = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.val6.i149 = load ptr, ptr %i.vg, align 8, !alias.scope !956, !nonnull !5, !noundef !5
  %i.vh = shl nuw i64 %.val5.i148, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i149, i64 noundef range(i64 1, 0) %i.vh, i64 noundef range(i64 1, 9) 4) #26, !noalias !956
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i150

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i150: ; preds = %bb.ft, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i147
  %i.vi = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %.val.i151 = load i64, ptr %i.vi, align 8, !alias.scope !956 ; 2 uses
  %i.vj = icmp eq i64 %.val.i151, 0
  br i1 %i.vj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit153, label %bb.fu

bb.fu:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i150
  %i.vk = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %.val2.i152 = load ptr, ptr %i.vk, align 8, !alias.scope !956, !nonnull !5, !noundef !5
  %i.vl = shl nuw i64 %.val.i151, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i152, i64 noundef range(i64 1, 0) %i.vl, i64 noundef range(i64 1, 9) 4) #26, !noalias !956
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit153: ; preds = %bb.fu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %.val.i.i.i154 = load i64, ptr %i.m, align 8, !alias.scope !963 ; 2 uses
  %i.vm = icmp eq i64 %.val.i.i.i154, 0
  br i1 %i.vm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i156, label %bb.fv

bb.fv:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit153
  %i.vn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i.i155 = load ptr, ptr %i.vn, align 8, !alias.scope !963, !nonnull !5, !noundef !5
  %i.vo = mul nuw i64 %.val.i.i.i154, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i155, i64 noundef range(i64 1, 0) %i.vo, i64 noundef range(i64 1, 9) 4) #26, !noalias !963
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i156

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i156: ; preds = %bb.fv, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit153
  %i.vp = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val2.i.i.i157 = load i64, ptr %i.vp, align 8, !alias.scope !963 ; 2 uses
  %i.vq = icmp eq i64 %.val2.i.i.i157, 0
  br i1 %i.vq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i159, label %bb.fw

bb.fw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i156
  %i.vr = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.val3.i.i.i158 = load ptr, ptr %i.vr, align 8, !alias.scope !963, !nonnull !5, !noundef !5
  %i.vs = shl nuw i64 %.val2.i.i.i157, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i158, i64 noundef range(i64 1, 0) %i.vs, i64 noundef range(i64 1, 9) 8) #26, !noalias !963
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i159

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i159: ; preds = %bb.fw, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i156
  %i.vt = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.val5.i160 = load i64, ptr %i.vt, align 8, !alias.scope !960 ; 2 uses
  %i.vu = icmp eq i64 %.val5.i160, 0
  br i1 %i.vu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i162, label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i159
  %i.vv = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.val6.i161 = load ptr, ptr %i.vv, align 8, !alias.scope !960, !nonnull !5, !noundef !5
  %i.vw = shl nuw i64 %.val5.i160, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i161, i64 noundef range(i64 1, 0) %i.vw, i64 noundef range(i64 1, 9) 4) #26, !noalias !960
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i162

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i162: ; preds = %bb.fx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i159
  %i.vx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.val.i163 = load i64, ptr %i.vx, align 8, !alias.scope !960 ; 2 uses
  %i.vy = icmp eq i64 %.val.i163, 0
  br i1 %i.vy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit165, label %bb.fy

bb.fy:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i162
  %i.vz = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %.val2.i164 = load ptr, ptr %i.vz, align 8, !alias.scope !960, !nonnull !5, !noundef !5
  %i.wa = shl nuw i64 %.val.i163, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i164, i64 noundef range(i64 1, 0) %i.wa, i64 noundef range(i64 1, 9) 4) #26, !noalias !960
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit165

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit165: ; preds = %bb.fy, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %.val.i.i.i166 = load i64, ptr %i.p, align 8, !alias.scope !967 ; 2 uses
  %i.wb = icmp eq i64 %.val.i.i.i166, 0
  br i1 %i.wb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i168, label %bb.fz

bb.fz:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit165
  %i.wc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i167 = load ptr, ptr %i.wc, align 8, !alias.scope !967, !nonnull !5, !noundef !5
  %i.wd = mul nuw i64 %.val.i.i.i166, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i167, i64 noundef range(i64 1, 0) %i.wd, i64 noundef range(i64 1, 9) 4) #26, !noalias !967
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i168

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i168: ; preds = %bb.fz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit165
  %i.we = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val2.i.i.i169 = load i64, ptr %i.we, align 8, !alias.scope !967 ; 2 uses
  %i.wf = icmp eq i64 %.val2.i.i.i169, 0
  br i1 %i.wf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i171, label %bb.ga

bb.ga:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i168
  %i.wg = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i.i.i170 = load ptr, ptr %i.wg, align 8, !alias.scope !967, !nonnull !5, !noundef !5
  %i.wh = shl nuw i64 %.val2.i.i.i169, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i170, i64 noundef range(i64 1, 0) %i.wh, i64 noundef range(i64 1, 9) 8) #26, !noalias !967
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i171

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i171: ; preds = %bb.ga, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i168
  br i1 %i.ab, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i174, label %bb.gb

bb.gb:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i171
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 9) 4) #26, !noalias !964
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i174

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i174: ; preds = %bb.gb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i171
  br i1 %i.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177.sink.split

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.fe, %.lr.ph.i.i, %bb.fb
  %i.wi = phi ptr [ inttoptr (i64 4 to ptr), %bb.fb ], [ %i.ta, %.lr.ph.i.i ], [ %i.ta, %bb.fe ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.wj = load i64, ptr %i.cs, align 8, !alias.scope !968, !noalias !969, !noundef !5 ; 3 uses
  %i.wk = load i64, ptr %i.o, align 8, !range !11, !alias.scope !968, !noalias !969, !noundef !5
  %i.wl = icmp eq i64 %i.wj, %i.wk
  br i1 %i.wl, label %bb.gc, label %bb.gf

bb.gc:                                            ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_EEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.gf unwind label %bb.gd, !noalias !969

bb.gd:                                            ; preds = %bb.gc
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.sz, label %.body129, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wi, i64 noundef range(i64 1, 0) %i.sy, i64 noundef range(i64 1, 9) 4) #26, !noalias !970
  br label %.body129

bb.gf:                                            ; preds = %bb.gc, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.wn = load ptr, ptr %i.cr, align 8, !alias.scope !968, !noalias !969, !nonnull !5, !noundef !5
  %i.wo = getelementptr inbounds nuw [24 x i8], ptr %i.wn, i64 %i.wj ; 3 uses
  store i64 %.sroa.06.0.val47, ptr %i.wo, align 8, !noalias !968
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  store ptr %i.wi, ptr %.sroa.5246.0..sroa_idx, align 8, !noalias !968
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store i64 %.sroa.06.0.val47, ptr %.sroa.7247.0..sroa_idx, align 8, !noalias !968
  %i.wp = add i64 %i.wj, 1
  store i64 %i.wp, ptr %i.cs, align 8, !alias.scope !968, !noalias !969
  br label %bb.ez

bb.gg:                                            ; preds = %.body68
  %2 = shl nuw i64 %.sroa.0213.0, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10217.0) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10217.0, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 9) 4) #26
  br label %.thread

.thread:                                          ; preds = %bb.gg, %.body68, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i194, %bb.at, %bb.dr, %bb.ds, %bb.ak, %bb.aj, %bb.aa
  %.pn29.pn.pn.pn.pn267 = phi { ptr, i32 } [ %.pn29.pn.pn.pn, %.body68 ], [ %.pn41.i, %bb.at ], [ %i.dg, %bb.aa ], [ %i.oe, %bb.ds ], [ %.pn29.pn.pn.pn, %bb.gg ], [ %i.ec, %bb.aj ], [ %i.ec, %bb.ak ], [ %.pn41.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i194 ], [ %i.oe, %bb.dr ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #28
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring19rbmg_split_into_two(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [72 x i8], align 8                ; 14 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 19 uses
  %i.q = alloca [128 x i8], align 8               ; 21 uses
  %i.r = alloca [128 x i8], align 8               ; 21 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = and i64 %i.t, 1
  %.not = icmp eq i64 %i.u, 0
  %.sink802.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink802.sroa.gep907 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 191 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call fastcc void @_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph19clone_without_edges(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.w = lshr exact i64 %i.t, 1                   ; 2 uses
  store i64 %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph19clone_without_edges(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store i64 %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvXsf_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedENtNtBX_5clone5Clone5cloneB1E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  store i64 %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  store i32 %i.ad, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 68 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  store i64 0, ptr %i.af, align 8, !alias.scope !1131
  store i32 -1, ptr %i.ah, align 4, !alias.scope !1131
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !alias.scope !1131
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1131, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1131, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.am, 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.sroa.02.04.i = phi ptr [ %i.ap, %bb.h ], [ %i.ak, %bb.g ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 8
  %i.ar = load i8, ptr %i.aq, align 4, !range !15, !noalias !1131, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %i.at = icmp eq ptr %i.ap, %i.an
  br i1 %i.at, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  store i32 -1, ptr %.sroa.02.04.i, align 4, !noalias !1131
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 4
  store i32 -1, ptr %i.au, align 4, !noalias !1131
  br label %bb.h

.body:                                            ; preds = %.loopexit234, %.loopexit.split-lp235, %bb.bz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %bb.bw
  %.pn29 = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %bb.bw ], [ %lpad.phi, %bb.bz ], [ %lpad.phi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ %lpad.loopexit236, %.loopexit234 ], [ %lpad.loopexit.split-lp237, %.loopexit.split-lp235 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %.val.i.i = load i64, ptr %i.p, align 8, !alias.scope !1134 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i, 0
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.body
  %.val1.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !1134, !nonnull !5, !noundef !5
  %i.aw = mul nuw i64 %.val.i.i, 12
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef range(i64 1, 0) %i.aw, i64 noundef range(i64 1, 9) 4) #26, !noalias !1134
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.j, %.body
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val2.i.i = load i64, ptr %i.ax, align 8, !alias.scope !1134 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ay, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i.i = load ptr, ptr %i.az, align 8, !alias.scope !1134, !nonnull !5, !noundef !5
  %i.ba = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 9) 8) #26, !noalias !1134
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit

.loopexit234:                                     ; preds = %bb.en, %.loopexit.i94, %.loopexit.i116
  %lpad.loopexit236 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp235:                            ; preds = %select.unfold.i110.invoke
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_.exit: ; preds = %bb.h, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !noundef !5
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_.exit
  %i.bo = phi ptr [ %i.bc, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_.exit ], [ %i.bq, %.backedge ] ; 5 uses
  %i.bp = icmp eq ptr %i.bo, %i.bf
  br i1 %i.bp, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !range !18, !alias.scope !1135, !noalias !1136, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bs, 2
  br i1 %.not.i.i, label %.backedge, label %bb.n

.backedge:                                        ; preds = %bb.m, %bb.en, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit136
  br label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.bu, align 8, !alias.scope !1135, !noalias !1136 ; 3 uses
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.02.0.copyload.i.i to i32 ; 3 uses
  %.sroa.6.12.extract.shift = lshr i64 %.sroa.02.0.copyload.i.i, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32 ; 7 uses
  %i.bv = load i64, ptr %i.bt, align 8, !noundef !5 ; 3 uses
  %i.bw = trunc nuw i8 %i.bs to i1                ; 3 uses
  %i.bx = icmp ugt i64 %i.bv, 1
  br i1 %i.bx, label %bb.ee, label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit136

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1138
  store i64 0, ptr %i.n, align 8, !noalias !1138
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
end_hunk_7
begin_hunk_8_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring19rbmg_split_into_two:bb.a
._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge.i: ; preds = %bb.bf
  %.pre.i = load ptr, ptr %i.ej, align 8, !alias.scope !1167, !noalias !1138
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge.i, %bb.be
  %i.hp = phi ptr [ %.pre.i, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge.i ], [ %i.fp, %bb.be ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.fq
  store i32 %i.hm, ptr %i.hq, align 4, !noalias !1168
  %i.hr = add i64 %i.fq, 1                        ; 2 uses
  store i64 %i.hr, ptr %i.ek, align 8, !alias.scope !1167, !noalias !1138
  br label %bb.bg

bb.bg:                                            ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i
  %i.hs = phi ptr [ %i.fp, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %i.hp, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i ]
  %i.ht = phi i64 [ %i.fq, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %i.hr, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i ]
  %i.hu = add nsw i64 %i.fs, -1                   ; 3 uses
  store i64 %i.hu, ptr %i.ei, align 8, !noalias !1138
  %i.hv = load i64, ptr %i.l, align 8, !range !11, !noalias !1138, !noundef !5
  %i.hw = icmp samesign ult i64 %i.hu, %i.hv
  tail call void @llvm.assume(i1 %i.hw)
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i: ; preds = %.loopexit.i.i, %bb.bi, %bb.bg
  %i.hx = phi i64 [ %i.hu, %bb.bg ], [ %i.ii, %.loopexit.i.i ], [ %i.ii, %bb.bi ] ; 3 uses
  %i.hy = phi ptr [ %i.fo, %bb.bg ], [ %i.ig, %.loopexit.i.i ], [ %i.ig, %bb.bi ]
  %i.hz = phi ptr [ %i.hs, %bb.bg ], [ %i.fp, %.loopexit.i.i ], [ %i.fp, %bb.bi ]
  %i.ia = phi i64 [ %i.ht, %bb.bg ], [ %i.fq, %.loopexit.i.i ], [ %i.fq, %bb.bi ]
  %i.ib = phi ptr [ %i.fr, %bb.bg ], [ %i.ig, %.loopexit.i.i ], [ %i.ig, %bb.bi ]
  %i.ic = phi i64 [ %i.fv, %bb.bg ], [ %i.jh, %.loopexit.i.i ], [ %i.fv, %bb.bi ] ; 3 uses
  %.sroa.875.0.ph165.i = phi i32 [ %.sroa.875.0.ph166178.i, %bb.bg ], [ %.sroa.875.0.ph.i, %.loopexit.i.i ], [ %.sroa.875.0.ph166178.i, %bb.bi ] ; 3 uses
  %i.id = phi i32 [ %i.fu, %bb.bg ], [ %.sroa.875.0.ph.i, %.loopexit.i.i ], [ %i.fu, %bb.bi ] ; 2 uses
  %i.ie = phi i64 [ %i.ft, %bb.bg ], [ %i.jh, %.loopexit.i.i ], [ %i.ft, %bb.bi ] ; 2 uses
  %i.if = icmp ult i64 %i.hx, 768614336404564651
  tail call void @llvm.assume(i1 %i.if)
  %.not21.i = icmp eq i64 %i.hx, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i42

bb.bh:                                            ; preds = %bb.bd
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCslwFuT2d6ECx_4core6option6OptionNtBP_9EdgeIndexEEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #31
          to label %._crit_edge225.i unwind label %.body49.loopexit.i, !noalias !1138

._crit_edge225.i:                                 ; preds = %bb.bh
  %.pre226.i = load ptr, ptr %i.eh, align 8, !alias.scope !1164, !noalias !1165
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge225.i, %bb.bd
  %i.ig = phi ptr [ %.pre226.i, %._crit_edge225.i ], [ %i.fo, %bb.bd ] ; 5 uses
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %i.fs ; 3 uses
  store i32 %spec.select.i.i, ptr %i.ih, align 4, !noalias !1169
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store i32 1, ptr %.sroa.483.0..sroa_idx.i, align 4, !noalias !1169
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i32 %.sroa.875.0.ph.i, ptr %.sroa.584.0..sroa_idx.i, align 4, !noalias !1169
  %i.ii = add nuw nsw i64 %i.fs, 1                ; 3 uses
  store i64 %i.ii, ptr %i.ei, align 8, !alias.scope !1164, !noalias !1165
  %i.ij = load i8, ptr %i.hb, align 8, !range !18, !noalias !1170, !noundef !5
  %.not.i62.i = icmp eq i8 %i.ij, 2
  br i1 %.not.i62.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.ha, align 8, !noalias !1170 ; 2 uses
  %.sroa.02.0.copyload.i.i43 = load i64, ptr %i.hc, align 8, !noalias !1170 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i43, 32 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.ik = and i64 %.sroa.02.0.copyload.i.i43, 4294967295 ; 2 uses
  %i.il = icmp ugt i64 %.val6.i.i, %i.ik
  br i1 %i.il, label %bb.bk, label %.loopexit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.im = getelementptr inbounds nuw [12 x i8], ptr %.val.i52.i, i64 %i.ik ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !noalias !1171, !noundef !5 ; 2 uses
  %i.io = icmp eq i32 %i.in, %.sroa.875.0.ph.i
  br i1 %i.io, label %bb.br, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bk, %bb.bl
  %.sroa.8.0.i.i.i = phi i32 [ %i.is, %bb.bl ], [ %i.in, %bb.bk ]
  %i.ip = zext i32 %.sroa.8.0.i.i.i to i64        ; 2 uses
  %i.iq = icmp ugt i64 %i.eo, %i.ip
  br i1 %i.iq, label %bb.bl, label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

bb.bl:                                            ; preds = %.preheader.i.i.i
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.ip ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !noalias !1172, !noundef !5 ; 2 uses
  %i.it = icmp eq i32 %i.is, %.sroa.875.0.ph.i
  br i1 %i.it, label %bb.bm, label %.preheader.i.i.i

bb.bm:                                            ; preds = %bb.bl
  store i32 %.sroa.020.0.extract.trunc.i.i.i, ptr %i.ir, align 4, !noalias !1171
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i: ; preds = %.preheader.i.i.i, %bb.br, %bb.bm
  %i.iu = icmp ugt i64 %.val6.i.i, %.sroa.2.0.extract.shift.i.i.i
  br i1 %i.iu, label %bb.bn, label %.loopexit.i.i

bb.bn:                                            ; preds = %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %.val.i52.i, i64 %.sroa.2.0.extract.shift.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !noalias !1171, !noundef !5 ; 2 uses
  %i.iy = icmp eq i32 %i.ix, %.sroa.875.0.ph.i
  br i1 %i.iy, label %bb.bq, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %bb.bn, %bb.bo
  %.sroa.8.0.1.i.i.i = phi i32 [ %i.jd, %bb.bo ], [ %i.ix, %bb.bn ]
  %i.iz = zext i32 %.sroa.8.0.1.i.i.i to i64      ; 2 uses
  %i.ja = icmp ugt i64 %i.eo, %i.iz
  br i1 %i.ja, label %bb.bo, label %.loopexit.i.i

bb.bo:                                            ; preds = %.preheader.1.i.i.i
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.iz ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !noalias !1172, !noundef !5 ; 2 uses
  %i.je = icmp eq i32 %i.jd, %.sroa.875.0.ph.i
  br i1 %i.je, label %bb.bp, label %.preheader.1.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 %.sroa.3.0.extract.trunc.i.i.i, ptr %i.jf, align 4, !noalias !1171
  br label %.loopexit.i.i

bb.bq:                                            ; preds = %bb.bn
  store i32 %.sroa.3.0.extract.trunc.i.i.i, ptr %i.iw, align 4, !noalias !1171
  br label %.loopexit.i.i

bb.br:                                            ; preds = %bb.bk
  store i32 %.sroa.020.0.extract.trunc.i.i.i, ptr %i.im, align 4, !noalias !1171
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

.loopexit.i.i:                                    ; preds = %.preheader.1.i.i.i, %bb.bq, %bb.bp, %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i, %bb.bj
  store i32 %i.fu, ptr %i.ha, align 8, !noalias !1170
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 -1, ptr %i.jg, align 4, !noalias !1170
  store i32 -1, ptr %i.hc, align 8, !noalias !1170
  store i32 -1, ptr %i.hd, align 4, !noalias !1170
  %i.jh = add i64 %i.ft, -1                       ; 2 uses
  store i8 2, ptr %i.hb, align 8, !noalias !1170
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i

bb.bs:                                            ; preds = %bb.au, %._crit_edge.i
  %i.ji = load ptr, ptr %i.by, align 8, !alias.scope !1159, !noalias !1160, !nonnull !5, !noundef !5
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %i.fj ; 3 uses
  store i64 %.sroa.085.0.copyload.pre.i, ptr %i.jj, align 8, !noalias !1173
  %.sroa.587.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %.sroa.587.0.copyload.pre.i, ptr %.sroa.587.0..sroa_idx88.i, align 8, !noalias !1173
  %.sroa.690.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i64 %.sroa.690.0.copyload.pre.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !noalias !1173
  %i.jk = add i64 %i.fj, 1
  store i64 %i.jk, ptr %i.bz, align 8, !alias.scope !1159, !noalias !1160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1138
  %.val41.i = load i64, ptr %i.l, align 8, !noalias !1138 ; 2 uses
  %i.jl = icmp eq i64 %.val41.i, 0
  br i1 %i.jl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val42.i = load ptr, ptr %i.eh, align 8, !noalias !1138, !nonnull !5, !noundef !5
  %i.jm = mul nuw i64 %.val41.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42.i, i64 noundef range(i64 1, 0) %i.jm, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1138
  br label %.outer.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i: ; preds = %bb.bv, %bb.aw
  %.sroa.085.0.copyload.pre.lcssa.sink.i = phi i64 [ %.sroa.085.0.copyload.pre.i, %bb.aw ], [ %.val35.i, %bb.bv ]
  %.sroa.587.0.copyload.pre.lcssa.sink.i = phi ptr [ %.sroa.587.0.copyload.pre.i, %bb.aw ], [ %.val36.i, %bb.bv ]
  %eh.lpad-body50110.ph.i = phi { ptr, i32 } [ %i.fm, %bb.aw ], [ %i.jq, %bb.bv ]
  %i.jn = shl nuw i64 %.sroa.085.0.copyload.pre.lcssa.sink.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.587.0.copyload.pre.lcssa.sink.i, i64 noundef range(i64 1, 0) %i.jn, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %.body49.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i, %bb.av
  %eh.lpad-body50110.i = phi { ptr, i32 } [ %i.jq, %.body49.i ], [ %i.fm, %bb.av ], [ %eh.lpad-body50110.ph.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i ] ; 2 uses
  %.val39.i = load i64, ptr %i.l, align 8, !noalias !1138 ; 2 uses
  %i.jo = icmp eq i64 %.val39.i, 0
  br i1 %i.jo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %.val40.i = load ptr, ptr %i.eh, align 8, !noalias !1138, !nonnull !5, !noundef !5
  %i.jp = mul nuw i64 %.val39.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i, i64 noundef range(i64 1, 0) %i.jp, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i

.body49.i:                                        ; preds = %.body49.thread111.i, %.body49.loopexit.split-lp.i, %.body49.loopexit.i
  %i.jq = phi { ptr, i32 } [ %i.gj, %.body49.thread111.i ], [ %lpad.loopexit.i, %.body49.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body49.loopexit.split-lp.i ] ; 2 uses
  %.val35.i = load i64, ptr %i.k, align 8, !noalias !1138 ; 2 uses
  %i.jr = icmp eq i64 %.val35.i, 0
  br i1 %i.jr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.body49.i
  %.val36.i = load ptr, ptr %i.ej, align 8, !noalias !1138, !nonnull !5, !noundef !5
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i

bb.bw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, %bb.p
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ca, %bb.p ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #28, !noalias !1138
  br label %.body

bb.bx:                                            ; preds = %bb.ao, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1138
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.js = icmp ult i64 %.sroa.5181.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.js)
  %.idx = mul nuw nsw i64 %.sroa.5181.0.copyload, 24
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.idx ; 5 uses
  %i.ju = icmp eq i64 %.sroa.5181.0.copyload, 0
  br i1 %i.ju, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph: ; preds = %bb.bx
  %i.jv = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val36 = load ptr, ptr %i.jv, align 8, !nonnull !5 ; 2 uses
  %.val37 = load i64, ptr %i.ai, align 8          ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.q, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i170 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i171 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.4.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.r, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.4.0..sroa_idx.i.i156 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.cg, %bb.cf
  %i.ke = ptrtoint ptr %i.jt to i64
  %i.kf = ptrtoint ptr %i.kr to i64
  %i.kg = sub nuw i64 %i.ke, %i.kf
  %i.kh = udiv exact i64 %i.kg, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.ki = icmp eq ptr %i.jt, %i.kr
  br i1 %i.ki, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.kk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.kr, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.kk = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.kj, align 8, !alias.scope !1174, !noalias !1175 ; 2 uses
  %i.kl = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.kl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i
  %i.km = getelementptr i8, ptr %i.kj, i64 8
  %.val9.i.i.i = load ptr, ptr %i.km, align 8, !alias.scope !1174, !noalias !1175, !nonnull !5, !noundef !5
  %i.kn = shl nuw i64 %.val8.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef range(i64 1, 0) %i.kn, i64 noundef range(i64 1, 9) 4) #26, !noalias !1176
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.by, %.lr.ph.i.i.i
  %i.ko = icmp eq i64 %i.kk, %i.kh
  br i1 %i.ko, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.kp = icmp eq i64 %.sroa.0179.0.copyload, 0
  br i1 %i.kp, label %.body, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %i.kq = mul nuw i64 %.sroa.0179.0.copyload, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %i.kq, i64 noundef range(i64 1, 9) 8) #26, !noalias !1175
  br label %.body

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61
  %.sroa.5184.0364 = phi ptr [ %.sroa.4.0.copyload, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph ], [ %i.kr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61 ] ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.5184.0364, i64 24 ; 6 uses
  %.sroa.0187.0.copyload188 = load i64, ptr %.sroa.5184.0364, align 8, !noalias !1177 ; 5 uses
  %.sroa.7189.0..sroa.5184.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5184.0364, i64 8
  %.sroa.7189.sroa.0.0.copyload = load ptr, ptr %.sroa.7189.0..sroa.5184.8..sroa_idx, align 8, !noalias !1177 ; 6 uses
  %.sroa.7189.sroa.5.0..sroa.7189.0..sroa.5184.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5184.0364, i64 16
  %.sroa.7189.sroa.5.0.copyload = load i64, ptr %.sroa.7189.sroa.5.0..sroa.7189.0..sroa.5184.8..sroa_idx.sroa_idx, align 8, !noalias !1177 ; 5 uses
  %.not24 = icmp eq i64 %.sroa.0187.0.copyload188, -1
  br i1 %.not24, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7189.sroa.0.0.copyload) ]
  %.idx366 = shl nuw nsw i64 %.sroa.7189.sroa.5.0.copyload, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.7189.sroa.0.0.copyload, i64 %.idx366
  %i.kt = icmp eq i64 %.sroa.7189.sroa.5.0.copyload, 0
  br i1 %i.kt, label %.thread, label %.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit, %bb.bx
  %.sroa.5184.1214 = phi ptr [ %.sroa.4.0.copyload, %bb.bx ], [ %i.kr, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit ] ; 3 uses
  %i.ku = ptrtoint ptr %i.jt to i64
  %i.kv = ptrtoint ptr %.sroa.5184.1214 to i64
  %i.kw = sub nuw i64 %i.ku, %i.kv
  %i.kx = udiv exact i64 %i.kw, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.ky = icmp eq ptr %i.jt, %.sroa.5184.1214
  br i1 %i.ky, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52
  %.sroa.0.011.i.i.i49 = phi i64 [ %i.la, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52 ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5184.1214, i64 %.sroa.0.011.i.i.i49 ; 2 uses
  %i.la = add nuw nsw i64 %.sroa.0.011.i.i.i49, 1 ; 2 uses
  %.val8.i.i.i50 = load i64, ptr %i.kz, align 8, !alias.scope !1178, !noalias !1179 ; 2 uses
  %i.lb = icmp eq i64 %.val8.i.i.i50, 0
  br i1 %i.lb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i48
  %i.lc = getelementptr i8, ptr %i.kz, i64 8
  %.val9.i.i.i51 = load ptr, ptr %i.lc, align 8, !alias.scope !1178, !noalias !1179, !nonnull !5, !noundef !5
  %i.ld = shl nuw i64 %.val8.i.i.i50, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i51, i64 noundef range(i64 1, 0) %i.ld, i64 noundef range(i64 1, 9) 4) #26, !noalias !1180
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52: ; preds = %bb.cb, %.lr.ph.i.i.i48
  %i.le = icmp eq i64 %i.la, %i.kx
  br i1 %i.le, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53, label %.lr.ph.i.i.i48

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread
  %i.lf = icmp eq i64 %.sroa.0179.0.copyload, 0
  br i1 %i.lf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53
  %i.lg = mul nuw i64 %.sroa.0179.0.copyload, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %i.lg, i64 noundef range(i64 1, 9) 8) #26, !noalias !1179
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54: ; preds = %bb.cc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.r, i64 128, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.lh, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i64 128, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %.val.i.i55 = load i64, ptr %i.p, align 8, !alias.scope !1183 ; 2 uses
  %i.li = icmp eq i64 %.val.i.i55, 0
  br i1 %i.li, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54
  %.val1.i.i56 = load ptr, ptr %i.aj, align 8, !alias.scope !1183, !nonnull !5, !noundef !5
  %i.lj = mul nuw i64 %.val.i.i55, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56, i64 noundef range(i64 1, 0) %i.lj, i64 noundef range(i64 1, 9) 4) #26, !noalias !1183
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57: ; preds = %bb.cd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54
  %i.lk = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val2.i.i58 = load i64, ptr %i.lk, align 8, !alias.scope !1183 ; 2 uses
  %i.ll = icmp eq i64 %.val2.i.i58, 0
  br i1 %i.ll, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit60, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57
  %i.lm = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i.i59 = load ptr, ptr %i.lm, align 8, !alias.scope !1183, !nonnull !5, !noundef !5
  %i.ln = shl nuw i64 %.val2.i.i58, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i59, i64 noundef range(i64 1, 0) %i.ln, i64 noundef range(i64 1, 9) 8) #26, !noalias !1183
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit60

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit60: ; preds = %bb.ce, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

.loopexit:                                        ; preds = %bb.dg, %bb.eb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp:                               ; preds = %.invoke800, %.invoke798, %.invoke796, %select.unfold.i.invoke, %.invoke, %bb.cn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.lo = icmp eq i64 %.sroa.0187.0.copyload188, 0
  br i1 %i.lo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lp = shl nuw i64 %.sroa.0187.0.copyload188, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7189.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %i.lp, i64 noundef range(i64 1, 9) 4) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit

.lr.ph:                                           ; preds = %bb.ca, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit
  %.sroa.0196.0363 = phi ptr [ %i.lq, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit ], [ %.sroa.7189.sroa.0.0.copyload, %bb.ca ] ; 2 uses
  %.sroa.7198.0362 = phi i64 [ %i.lr, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit ], [ 0, %bb.ca ] ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0196.0363, i64 4 ; 2 uses
  %i.lr = add nuw nsw i64 %.sroa.7198.0362, 1
  %i.ls = load i32, ptr %.sroa.0196.0363, align 4, !noundef !5
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %i.lu = icmp ugt i64 %.val37, %i.lt
  br i1 %i.lu, label %bb.ch, label %.invoke

bb.ch:                                            ; preds = %.lr.ph
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %.val36, i64 %i.lt ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load i8, ptr %i.lw, align 8, !range !18, !noalias !1184, !noundef !5
  %.not.i = icmp eq i8 %i.lx, 2
  br i1 %.not.i, label %.invoke, label %bb.cj

.thread:                                          ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit, %bb.ca
  %i.ly = icmp eq i64 %.sroa.0187.0.copyload188, 0
  br i1 %i.ly, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61, label %bb.ci

bb.ci:                                            ; preds = %.thread
  %i.lz = shl nuw i64 %.sroa.0187.0.copyload188, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7189.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %i.lz, i64 noundef range(i64 1, 9) 4) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61
end_hunk_8
begin_hunk_9_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching15augment_blossom:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.02.08.i, 1
  %i.y = icmp eq ptr %i.w, %i.s
  br i1 %i.y, label %.loopexit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #27
  unreachable

bb.i:                                             ; preds = %.lr.ph.i
  %i.z = icmp ult i64 %.sroa.02.08.i, %i.r
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = zext nneg i64 %.sroa.02.08.i to i128    ; 2 uses
  %i.ab = and i64 %.sroa.02.08.i, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.k

.loopexit:                                        ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #27
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.k
  %.sroa.019.0 = phi i64 [ 0, %bb.k ], [ 1, %bb.i ] ; 3 uses
  %.sroa.017.0 = phi i128 [ 1, %bb.k ], [ -1, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i128 [ %i.ai, %bb.k ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ad = icmp eq i128 %.sroa.04.0, 0
  br i1 %i.ad, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = icmp ult i64 %i.r, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = zext nneg i64 %i.r to i128
  %i.ai = sub nsw i128 %i.aa, %i.ah
  br label %bb.j

._crit_edge259.loopexit:                          ; preds = %bb.cx
  %.pre = load i64, ptr %i.j, align 8
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %._crit_edge259.loopexit, %bb.j
  %i.aj = phi i64 [ %.pre, %._crit_edge259.loopexit ], [ %i.k, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ak = icmp ult i64 %0, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph258, %bb.cx
  %.sroa.04.1256 = phi i128 [ %.sroa.04.0, %.lr.ph258 ], [ %i.gx, %bb.cx ]
  %i.al = add i128 %.sroa.04.1256, %.sroa.017.0   ; 4 uses
  %i.am = icmp slt i128 %i.al, 0
  %i.an = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.ao = icmp ult i64 %0, %i.an                  ; 2 uses
  br i1 %i.am, label %bb.bo, label %bb.bn

bb.m:                                             ; preds = %._crit_edge259
  %i.ap = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %0 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 5 uses
  %i.at = icmp ugt i64 %.sroa.02.08.i, %i.as
  br i1 %i.at, label %bb.s, label %bb.o, !prof !6

bb.n:                                             ; preds = %._crit_edge259
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = sub nuw i64 %i.as, %.sroa.02.08.i       ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.02.08.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.ay = shl nuw nsw i64 %i.aw, 3                ; 3 uses
  %i.az = icmp eq i64 %i.as, %.sroa.02.08.i
  br i1 %i.az, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i, label %bb.p

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i: ; preds = %bb.o
  store i64 0, ptr %i.b, align 8, !alias.scope !1534, !noalias !1535
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8, !alias.scope !1534, !noalias !1535
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bb, align 8, !alias.scope !1534, !noalias !1535
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1536
  %i.bc = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 9) 8) #26, !noalias !1536 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ay) #30, !noalias !1537
  unreachable

bb.r:                                             ; preds = %bb.p
  store i64 %i.aw, ptr %i.b, align 8, !alias.scope !1534, !noalias !1535
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !alias.scope !1534, !noalias !1535
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull readonly align 8 %i.ax, i64 %i.ay, i1 false), !noalias !1534
  store i64 %i.aw, ptr %i.bf, align 8, !alias.scope !1534, !noalias !1535
  %.pre310 = load i64, ptr %i.j, align 8
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i, %bb.r
  %i.bg = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i ], [ %i.bc, %bb.r ]
  %i.bh = phi i64 [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i ], [ %i.aw, %bb.r ] ; 4 uses
  %i.bi = phi i64 [ %i.aj, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i ], [ %.pre310, %bb.r ] ; 3 uses
  %i.bj = icmp ult i64 %0, %i.bi
  br i1 %i.bj, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.08.i, i64 noundef %i.as, i64 noundef %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #27
  unreachable

bb.t:                                             ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.bk = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %0 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5 ; 2 uses
  %.not112 = icmp ugt i64 %.sroa.02.08.i, %i.bn
  br i1 %.not112, label %bb.w, label %bb.x, !prof !20

bb.u:                                             ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #30
          to label %bb.v unwind label %bb.bl

bb.v:                                             ; preds = %bb.as, %bb.am, %bb.al, %bb.ac, %bb.w, %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.02.08.i, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #30
          to label %bb.v unwind label %bb.bl

bb.x:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %.idx204 = shl nuw nsw i64 %.sroa.02.08.i, 3    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.not394 = icmp eq i64 %.sroa.02.08.i, 0        ; 2 uses
  br i1 %.not394, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i, !prof !9

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i: ; preds = %bb.x
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bh, i64 noundef range(i64 0, 2305843009213693952) %.sroa.02.08.i, i64 noundef 8, i64 noundef 8)
          to label %bb.y unwind label %bb.bl

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.x
  %i.br = icmp ult i64 %i.bh, 1152921504606846976
  tail call void @llvm.assume(i1 %i.br)
  br label %bb.z

bb.y:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i
  %i.bs = load i64, ptr %i.bq, align 8, !alias.scope !1540, !noundef !5 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bt)
  %.sroa.0152.0.copyload.pre.pre = load i64, ptr %i.b, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre311 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1540 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.pre311, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull readonly align 8 %i.bp, i64 %.idx204, i1 false), !noalias !1540
  %.pre314 = load i64, ptr %i.j, align 8
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %bb.y
  %i.bv = phi i64 [ %.pre314, %bb.y ], [ %i.bi, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ] ; 2 uses
  %.sroa.6155.0.copyload = phi ptr [ %.pre311, %bb.y ], [ %i.bg, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ] ; 3 uses
  %.sroa.0152.0.copyload = phi i64 [ %.sroa.0152.0.copyload.pre.pre, %bb.y ], [ %i.bh, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ] ; 3 uses
  %i.bw = phi i64 [ %i.bs, %bb.y ], [ %i.bh, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ]
  %i.bx = add nuw nsw i64 %i.bw, %.sroa.02.08.i
  %.not115 = icmp ult i64 %0, %i.bv
  br i1 %.not115, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %0 ; 4 uses
  %.val134 = load i64, ptr %i.bz, align 8         ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8      ; 2 uses
  %i.cb = icmp eq i64 %.val134, 0
  br i1 %i.cb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val135 = load ptr, ptr %i.ca, align 8, !nonnull !5, !noundef !5
  %i.cc = shl nuw i64 %.val134, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val135, i64 noundef range(i64 1, 0) %i.cc, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit

bb.ac:                                            ; preds = %bb.z
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #30
          to label %bb.v unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0152.0.copyload, 0
  br i1 %i.ce, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bk

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.ab, %bb.aa
  store i64 %.sroa.0152.0.copyload, ptr %i.bz, align 8
  store ptr %.sroa.6155.0.copyload, ptr %i.ca, align 8
  %.sroa.7.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.bx, ptr %.sroa.7.0..sroa_idx162, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !5 ; 3 uses
  %i.ci = icmp ult i64 %0, %i.ch
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %0 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5 ; 5 uses
  %i.cn = icmp ugt i64 %.sroa.02.08.i, %i.cm
  br i1 %i.cn, label %bb.aj, label %bb.ag, !prof !6

bb.af:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !5, !noundef !5
  %i.cq = sub nuw i64 %i.cm, %.sroa.02.08.i       ; 4 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.sroa.02.08.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.cs = shl nuw nsw i64 %i.cq, 3                ; 3 uses
  %i.ct = icmp eq i64 %i.cm, %.sroa.02.08.i
  br i1 %i.ct, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136, label %bb.ah

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136: ; preds = %bb.ag
  store i64 0, ptr %i.a, align 8, !alias.scope !1541, !noalias !1542
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cu, align 8, !alias.scope !1541, !noalias !1542
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.cv, align 8, !alias.scope !1541, !noalias !1542
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1543
  %i.cw = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cs, i64 noundef range(i64 1, 9) 8) #26, !noalias !1543 ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.noexc137, label %bb.ai

.noexc137:                                        ; preds = %bb.ah
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cs) #30
  unreachable

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.cq, ptr %i.a, align 8, !alias.scope !1541, !noalias !1542
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cw, ptr %i.cy, align 8, !alias.scope !1541, !noalias !1542
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull readonly align 8 %i.cr, i64 %i.cs, i1 false), !noalias !1541
  store i64 %i.cq, ptr %i.cz, align 8, !alias.scope !1541, !noalias !1542
  %.pre315 = load i64, ptr %i.cg, align 8
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138

bb.aj:                                            ; preds = %bb.ae
  tail call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.08.i, i64 noundef %i.cm, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #30
  unreachable

_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138: ; preds = %bb.ai, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136
  %i.da = phi ptr [ %i.cw, %bb.ai ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136 ]
  %i.db = phi i64 [ %i.cq, %bb.ai ], [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136 ] ; 4 uses
  %i.dc = phi i64 [ %.pre315, %bb.ai ], [ %i.ch, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136 ] ; 3 uses
  %i.dd = icmp ult i64 %0, %i.dc
  br i1 %i.dd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138
  %i.de = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %0 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !5 ; 2 uses
  %.not116 = icmp ugt i64 %.sroa.02.08.i, %i.dh
  br i1 %.not116, label %bb.am, label %bb.an, !prof !6

bb.al:                                            ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #30
          to label %bb.v unwind label %bb.bi

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.02.08.i, i64 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #30
          to label %bb.v unwind label %bb.bi

bb.an:                                            ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %.not394, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141, !prof !9

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141: ; preds = %bb.an
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.db, i64 noundef range(i64 0, 2305843009213693952) %.sroa.02.08.i, i64 noundef 8, i64 noundef 8)
          to label %bb.ao unwind label %bb.bi

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139: ; preds = %bb.an
  %i.dl = icmp ult i64 %i.db, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dl)
  br label %bb.ap

bb.ao:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141
  %i.dm = load i64, ptr %i.dk, align 8, !alias.scope !1546, !noundef !5 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dn)
  %.sroa.0164.0.copyload.pre.pre = load i64, ptr %i.a, align 8
  %.phi.trans.insert316 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre317 = load ptr, ptr %.phi.trans.insert316, align 8, !alias.scope !1546 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre317, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull readonly align 8 %i.dj, i64 %.idx204, i1 false), !noalias !1546
  %.pre320 = load i64, ptr %i.cg, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139, %bb.ao
  %i.dp = phi i64 [ %.pre320, %bb.ao ], [ %i.dc, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ] ; 2 uses
  %.sroa.6167.0.copyload = phi ptr [ %.pre317, %bb.ao ], [ %i.da, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ] ; 3 uses
  %.sroa.0164.0.copyload = phi i64 [ %.sroa.0164.0.copyload.pre.pre, %bb.ao ], [ %i.db, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ] ; 3 uses
  %i.dq = phi i64 [ %i.dm, %bb.ao ], [ %i.db, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ]
  %i.dr = add nuw nsw i64 %i.dq, %.sroa.02.08.i
  %.not119 = icmp ult i64 %0, %i.dp
  br i1 %.not119, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %0 ; 4 uses
  %.val132 = load i64, ptr %i.dt, align 8         ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = icmp eq i64 %.val132, 0
  br i1 %i.dv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val133 = load ptr, ptr %i.du, align 8, !nonnull !5, !noundef !5
  %i.dw = shl nuw i64 %.val132, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val133, i64 noundef range(i64 1, 0) %i.dw, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144

bb.as:                                            ; preds = %bb.ap
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #30
          to label %bb.v unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = icmp eq i64 %.sroa.0164.0.copyload, 0
  br i1 %i.dy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bh

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144: ; preds = %bb.ar, %bb.aq
  store i64 %.sroa.0164.0.copyload, ptr %i.dt, align 8
  store ptr %.sroa.6167.0.copyload, ptr %i.du, align 8
  %.sroa.7172.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %i.dr, ptr %.sroa.7172.0..sroa_idx175, align 8
  %i.dz = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.ea = icmp ult i64 %0, %i.dz
  br i1 %i.ea, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144
  %i.eb = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %0 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5
  %.not120 = icmp eq i64 %i.ee, 0
  br i1 %.not120, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #30
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !5, !noundef !5
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !5 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !noundef !5 ; 4 uses
  %i.em = icmp ult i64 %i.eh, %i.el
  br i1 %i.em, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #30
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.en = icmp ult i64 %0, %i.el
  br i1 %i.en, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #30
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eh
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %0
  %i.eq = load <2 x i64>, ptr %i.eo, align 8
  store <2 x i64> %i.eq, ptr %i.ep, align 8
  %i.er = load i64, ptr %i.ek, align 8, !noundef !5 ; 2 uses
  %i.es = icmp ult i64 %0, %i.er
  br i1 %i.es, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.ay
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #30
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.et = load ptr, ptr %i.ei, align 8, !nonnull !5, !noundef !5
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %0 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !range !13, !noundef !5
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.be, label %bb.bf, !prof !9

bb.bd:                                            ; preds = %bb.ba
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #30
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !5
  %i.ez = icmp eq i64 %i.ey, %1
  br i1 %i.ez, label %bb.bg, label %bb.bf, !prof !9

bb.bf:                                            ; preds = %bb.bc, %bb.be
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #30
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.bh:                                            ; preds = %bb.at
  %11 = shl nuw i64 %.sroa.0164.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6167.0.copyload) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6167.0.copyload, i64 noundef range(i64 1, 0) %11, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

bb.bi:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141, %bb.am, %bb.al
  %lpad.thr_comm.split-lp194 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val128 = load i64, ptr %i.a, align 8          ; 2 uses
  %i.fa = icmp eq i64 %.val128, 0
  br i1 %i.fa, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val129 = load ptr, ptr %i.fb, align 8, !nonnull !5, !noundef !5
  %12 = shl nuw i64 %.val128, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val129, i64 noundef range(i64 1, 0) %12, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

bb.bk:                                            ; preds = %bb.ad
  %13 = shl nuw i64 %.sroa.0152.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6155.0.copyload) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6155.0.copyload, i64 noundef range(i64 1, 0) %13, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148: ; preds = %bb.bh, %bb.at, %bb.bk, %bb.ad, %bb.bj, %bb.bi, %bb.bm, %bb.bl
  %.pn123181 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.bm ], [ %i.dx, %bb.bh ], [ %lpad.thr_comm, %bb.bl ], [ %i.cd, %bb.bk ], [ %lpad.thr_comm.split-lp194, %bb.bj ], [ %i.dx, %bb.at ], [ %lpad.thr_comm.split-lp194, %bb.bi ], [ %i.cd, %bb.ad ]
  resume { ptr, i32 } %.pn123181

bb.bl:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i, %bb.w, %bb.u
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fc = icmp eq i64 %.val, 0
  br i1 %i.fc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val125 = load ptr, ptr %i.fd, align 8, !nonnull !5, !noundef !5
  %14 = shl nuw i64 %.val, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125, i64 noundef range(i64 1, 0) %14, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

bb.bn:                                            ; preds = %bb.l
  br i1 %i.ao, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.l
  br i1 %i.ao, label %bb.bt, label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  %i.fe = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %0 ; 2 uses
  %i.fg = trunc i128 %i.al to i64                 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !5 ; 2 uses
  %i.fj = icmp ugt i64 %i.fi, %i.fg
  br i1 %i.fj, label %bb.bv, label %bb.br

bb.bq:                                            ; preds = %bb.bn
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #27
  unreachable

bb.br:                                            ; preds = %bb.bp
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fg, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #27
  unreachable

bb.bs:                                            ; preds = %bb.bo
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #27
  unreachable

bb.bt:                                            ; preds = %bb.bo
  %i.fk = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %0 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !5 ; 4 uses
  %i.fo = icmp ult i64 %i.fn, 1152921504606846976
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = trunc i128 %i.al to i64                 ; 2 uses
  %i.fq = add i64 %i.fn, %i.fp                    ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.fn
  br i1 %i.fr, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fq, i64 noundef %i.fn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #27
  unreachable

bb.bv:                                            ; preds = %bb.bp
  %i.fs = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.ft = icmp ult i64 %0, %i.fs
  br i1 %i.ft, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bt
  %i.fu = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.fv = icmp ult i64 %0, %i.fu
  br i1 %i.fv, label %bb.cc, label %bb.cb

bb.bx:                                            ; preds = %bb.bv
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !nonnull !5, !noundef !5
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fg
  %i.fz = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %0
  %i.gb = sub i64 %i.fg, %.sroa.019.0             ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !5 ; 2 uses
  %i.ge = icmp ult i64 %i.gb, %i.gd
  br i1 %i.ge, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %bb.bv
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.fs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #27
  unreachable

bb.bz:                                            ; preds = %bb.bx
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.gb, i64 noundef %i.gd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #27
  unreachable

bb.ca:                                            ; preds = %bb.bx, %bb.cc
  %i.gf = phi ptr [ %i.go, %bb.cc ], [ %i.fz, %bb.bx ]
  %.sink446 = phi i64 [ %i.gu, %bb.cc ], [ %i.gb, %bb.bx ]
  %.sroa.023.0201.in = phi ptr [ %i.gn, %bb.cc ], [ %i.fy, %bb.bx ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %0
  %.sroa.023.0201 = load i64, ptr %.sroa.023.0201.in, align 8, !noundef !5 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !5, !noundef !5
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.sink446
  %.pn = load i64, ptr %i.gj, align 8, !noundef !5
  %.sroa.024.0 = xor i64 %.pn, %.sroa.019.0       ; 9 uses
  %i.gk = icmp ugt i64 %.sroa.023.0201, %2
  br i1 %i.gk, label %bb.ce, label %bb.cf

bb.cb:                                            ; preds = %bb.bw
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #27
  unreachable

bb.cc:                                            ; preds = %bb.bw
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !5, !noundef !5
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.fq
  %i.go = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !5 ; 4 uses
  %i.gs = icmp ult i64 %i.gr, 1152921504606846976
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = sub i64 %i.fp, %.sroa.019.0
  %i.gu = add i64 %i.gt, %i.gr                    ; 3 uses
  %i.gv = icmp ult i64 %i.gu, %i.gr
  br i1 %i.gv, label %bb.ca, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.gu, i64 noundef %i.gr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #27
  unreachable

bb.ce:                                            ; preds = %bb.ca
  %i.gw = icmp ult i64 %.sroa.024.0, %6
  br i1 %i.gw, label %bb.cg, label %bb.ch

bb.cf:                                            ; preds = %bb.ca, %bb.cg
  %i.gx = add i128 %i.al, %.sroa.017.0            ; 5 uses
  %i.gy = icmp slt i128 %i.gx, 0
  %i.gz = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.ha = icmp ult i64 %0, %i.gz                  ; 2 uses
  br i1 %i.gy, label %bb.cj, label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.024.0
  %i.hc = load i64, ptr %i.hb, align 8, !noundef !5
  tail call fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching15augment_blossom(i64 noundef %.sroa.023.0201, i64 noundef %i.hc, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(24) %7, ptr noalias nofree noundef align 8 dereferenceable(24) %8, ptr noalias nofree noundef align 8 dereferenceable(24) %9, ptr noalias nofree noundef align 8 dereferenceable(40) %10)
  br label %bb.cf

bb.ch:                                            ; preds = %bb.ce
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.024.0, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #27
  unreachable

bb.ci:                                            ; preds = %bb.cf
  br i1 %i.ha, label %bb.ck, label %bb.cl

bb.cj:                                            ; preds = %bb.cf
  br i1 %i.ha, label %bb.cp, label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.hd = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %0
  %i.hf = trunc i128 %i.gx to i64                 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !noundef !5 ; 2 uses
  %i.hi = icmp ugt i64 %i.hh, %i.hf
  br i1 %i.hi, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %bb.ci
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.gz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #27
  unreachable

bb.cm:                                            ; preds = %bb.ck
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %i.hh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #27
  unreachable

bb.cn:                                            ; preds = %bb.ck, %bb.cp
  %i.hj = phi ptr [ %i.hp, %bb.cp ], [ %i.hd, %bb.ck ]
  %.sink449 = phi i64 [ %i.hv, %bb.cp ], [ %i.hf, %bb.ck ]
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %0
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !nonnull !5, !noundef !5
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.sink449
  %storemerge111 = load i64, ptr %i.hn, align 8, !noundef !5 ; 2 uses
  %i.ho = icmp ugt i64 %storemerge111, %2
  br i1 %i.ho, label %bb.cr, label %bb.cs

bb.co:                                            ; preds = %bb.cj
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.gz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #27
  unreachable

bb.cp:                                            ; preds = %bb.cj
  %i.hp = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %0
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !5 ; 4 uses
  %i.ht = icmp ult i64 %i.hs, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = trunc i128 %i.gx to i64
  %i.hv = add i64 %i.hs, %i.hu                    ; 3 uses
  %i.hw = icmp ult i64 %i.hv, %i.hs
  br i1 %i.hw, label %bb.cn, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.hv, i64 noundef %i.hs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #27
  unreachable

bb.cr:                                            ; preds = %bb.cn
  %i.hx = xor i64 %.sroa.024.0, 1                 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %6
  br i1 %i.hy, label %bb.ct, label %bb.cu

bb.cs:                                            ; preds = %bb.cn, %bb.ct
  %i.hz = icmp ult i64 %.sroa.024.0, %6
  br i1 %i.hz, label %bb.cv, label %bb.cw

bb.ct:                                            ; preds = %bb.cr
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hx
  %i.ib = load i64, ptr %i.ia, align 8, !noundef !5
  tail call fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching15augment_blossom(i64 noundef %storemerge111, i64 noundef %i.ib, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(24) %7, ptr noalias nofree noundef align 8 dereferenceable(24) %8, ptr noalias nofree noundef align 8 dereferenceable(24) %9, ptr noalias nofree noundef align 8 dereferenceable(40) %10)
  br label %bb.cs
end_hunk_9
begin_hunk_10_@_RNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles13process_stack:bb.a
._crit_edge.i.i42.i:                              ; preds = %bb.as, %bb.ar
  %i.nl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i36.i, splat (i8 -1)
  %i.nm = bitcast <16 x i1> %i.nl to i16
  %i.nn = icmp eq i16 %i.nm, 0
  br i1 %i.nn, label %bb.at, label %select.unfold.i, !prof !6

bb.as:                                            ; preds = %.lr.ph.i.i38.i
  %i.no = add i16 %.sroa.05.0.i31.i.i39.i, -1
  %i.np = and i16 %i.no, %.sroa.05.0.i31.i.i39.i  ; 2 uses
  %.not.i.not.i.i41.i = icmp eq i16 %i.np, 0
  br i1 %.not.i.not.i.i41.i, label %._crit_edge.i.i42.i, label %.lr.ph.i.i38.i

bb.at:                                            ; preds = %._crit_edge.i.i42.i
  %i.nq = add i64 %.sroa.011.0.i.i.i33.i, 16      ; 2 uses
  %i.nr = add i64 %.sroa.01.0.i.i.i35.i, %i.nq
  br label %bb.ar

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE12remove_entryBO_ECsbNMRYq9Xj9a_14rustworkx_core.exit72.i: ; preds = %._crit_edge.i.i.i59, %._crit_edge.i.i63.i, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE6removeCsbNMRYq9Xj9a_14rustworkx_core.exit.i70.i
  %i.ns = phi i64 [ %i.mj, %._crit_edge.i.i63.i ], [ %i.sr, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE6removeCsbNMRYq9Xj9a_14rustworkx_core.exit.i70.i ], [ %i.ib, %._crit_edge.i.i.i59 ]
  %i.nt = phi i64 [ %i.mh, %._crit_edge.i.i63.i ], [ %i.sp, %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE6removeCsbNMRYq9Xj9a_14rustworkx_core.exit.i70.i ], [ %i.ic, %._crit_edge.i.i.i59 ]
  %i.nu = load i64, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2068, !noalias !2018, !noundef !5 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 0
  br i1 %i.nv, label %._crit_edge.i, label %bb.af

select.unfold.i:                                  ; preds = %._crit_edge.i.i42.i, %bb.ap
  %i.nw = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i unwind label %.loopexit121.i, !noalias !2018 ; 2 uses

.noexc.i:                                         ; preds = %select.unfold.i
  %i.nx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !2069
  %i.ny = icmp eq i8 %i.nx, 2
  br i1 %i.ny, label %bb.av, label %bb.au, !prof !9

bb.au:                                            ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #31
          to label %bb.av unwind label %.loopexit121.i, !noalias !2018

bb.av:                                            ; preds = %bb.au, %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  %.val.i45.i = load i64, ptr %i.ae, align 8, !alias.scope !2071, !noalias !2072, !noundef !5
  %i.nz = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !2073, !noundef !5
  %i.oa = xor i64 %.val.i45.i, %i.kc
  %i.ob = zext i64 %i.oa to i128
  %i.oc = zext i64 %i.nz to i128
  %i.od = mul nuw i128 %i.oc, %i.ob               ; 2 uses
  %i.oe = lshr i128 %i.od, 64
  %i.of = xor i128 %i.oe, %i.od
  %i.og = trunc i128 %i.of to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.oh = load i64, ptr %i.ag, align 8, !alias.scope !2075, !noalias !2076, !noundef !5
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.aw, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, !prof !6

bb.aw:                                            ; preds = %bb.av
  %i.oj = invoke { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %6, i64 noundef 1, ptr noundef nonnull readonly align 8 %i.ae, i1 noundef zeroext true) #31
          to label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i unwind label %bb.bd, !noalias !2076 ; 0 uses

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.aw, %bb.av
  %.val.i.i.i = load ptr, ptr %6, align 8, !alias.scope !2077, !noalias !2076, !nonnull !5, !noundef !5 ; 8 uses
  %.val5.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !2077, !noalias !2076, !noundef !5 ; 4 uses
  %i.ok = lshr i64 %i.og, 57
  %i.ol = trunc nuw nsw i64 %i.ok to i8           ; 3 uses
  %i.om = insertelement <16 x i8> poison, i8 %i.ol, i64 0
  %i.on = shufflevector <16 x i8> %i.om, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ba, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  %.pn.i.i.i46.i = phi i64 [ %i.og, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %i.pm, %bb.ba ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %.sroa.4.120.i.i.i.i, %bb.ba ]
  %.sroa.01.0.i.i.i47.i = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %.sroa.01.122.i.i.i.i, %bb.ba ]
  %i.oo = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1D_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %i.pl, %bb.ba ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i46.i, %.val5.i.i.i ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.op, align 1, !noalias !2078 ; 3 uses
  %i.oq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %i.on
  %i.or = bitcast <16 x i1> %i.oq to i16          ; 2 uses
  %.not28.i.i.i.i = icmp eq i16 %i.or, 0
  br i1 %.not28.i.i.i.i, label %._crit_edge.i.i.i50.i, label %.lr.ph.i.i.i48.i

.lr.ph.i.i.i48.i:                                 ; preds = %bb.ax, %bb.ay
  %.sroa.05.029.i.i.i.i = phi i16 [ %i.pb, %bb.ay ], [ %i.or, %bb.ax ] ; 3 uses
  %i.os = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i.i.i, i1 true)
  %i.ot = zext nneg i16 %i.os to i64
  %i.ou = add i64 %.sroa.0.017.i.i.i.i, %i.ot
  %i.ov = and i64 %i.ou, %.val5.i.i.i
  %i.ow = sub nsw i64 0, %i.ov
  %i.ox = getelementptr inbounds [48 x i8], ptr %.val.i.i.i, i64 %i.ow ; 5 uses
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 -48
  %.val2.i.i.i49.i = load i32, ptr %i.oy, align 4, !noalias !2079, !noundef !5
  %i.oz = icmp eq i32 %i.im, %.val2.i.i.i49.i
  br i1 %i.oz, label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.ay, !prof !9

._crit_edge.i.i.i50.i:                            ; preds = %bb.ay, %bb.ax
  %.not11.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i47.i, 1
  br i1 %.not11.i.i.i.i, label %.thread.i.i.i.i, label %bb.az, !prof !6

bb.ay:                                            ; preds = %.lr.ph.i.i.i48.i
  %i.pa = add i16 %.sroa.05.029.i.i.i.i, -1
  %i.pb = and i16 %i.pa, %.sroa.05.029.i.i.i.i    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.pb, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i50.i, label %.lr.ph.i.i.i48.i

bb.az:                                            ; preds = %._crit_edge.i.i.i50.i
  %i.pc = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, zeroinitializer
  %i.pd = bitcast <16 x i1> %i.pc to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.pd, 0
  br i1 %.not.i.i.i.i.i, label %bb.ba, label %.thread24.i.i.i.i, !prof !6

.thread24.i.i.i.i:                                ; preds = %bb.az
  %i.pe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pd, i1 true)
  %i.pf = zext nneg i16 %i.pe to i64
  %i.pg = add i64 %.sroa.0.017.i.i.i.i, %i.pf
  %i.ph = and i64 %i.pg, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread24.i.i.i.i, %._crit_edge.i.i.i50.i
  %.sroa.4.121.i.i.i.i = phi i64 [ %i.ph, %.thread24.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i50.i ] ; 3 uses
  %i.pi = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.pj = bitcast <16 x i1> %i.pi to i16
  %i.pk = icmp eq i16 %i.pj, 0
  br i1 %i.pk, label %bb.ba, label %bb.bb, !prof !6

bb.ba:                                            ; preds = %.thread.i.i.i.i, %bb.az
  %.sroa.01.122.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.az ]
  %.sroa.4.120.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.az ]
  %i.pl = add i64 %i.oo, 16                       ; 2 uses
  %i.pm = add i64 %i.pl, %.sroa.0.017.i.i.i.i
  br label %bb.ax

bb.bb:                                            ; preds = %.thread.i.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.121.i.i.i.i
  %i.po = load i8, ptr %i.pn, align 1, !noalias !2080, !noundef !5 ; 2 uses
  %i.pp = icmp sgt i8 %i.po, -1
  br i1 %i.pp, label %bb.bc, label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i, !prof !6

bb.bc:                                            ; preds = %bb.bb
  %.val2.i.i.i.i52.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !2080
  %i.pq = icmp slt <16 x i8> %.val2.i.i.i.i52.i, zeroinitializer
  %i.pr = bitcast <16 x i1> %i.pq to i16          ; 2 uses
  %.not.i22.i.i.i.i = icmp ne i16 %i.pr, 0
  %i.ps = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pr, i1 true)
  %i.pt = zext nneg i16 %i.ps to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.pt
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !2081
  br label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i

_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i: ; preds = %bb.bc, %bb.bb
  %i.pu = phi i8 [ %.pre.i.i, %bb.bc ], [ %i.po, %bb.bb ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.pt, %bb.bc ], [ %.sroa.4.121.i.i.i.i, %bb.bb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  %i.pv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.pw = and i8 %i.pu, 1
  %i.px = zext nneg i8 %i.pw to i64
  %i.py = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.pz = and i64 %i.py, %.val5.i.i.i
  store i8 %i.ol, ptr %i.pv, align 1, !noalias !2081
  %i.qa = getelementptr i8, ptr %.val.i.i.i, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 16
  store i8 %i.ol, ptr %i.qb, align 1, !noalias !2081
  %i.qc = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !2083, !noalias !2084
  %i.qd = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.px, i64 0
  %i.qe = sub <2 x i64> %i.qc, %i.qd
  store <2 x i64> %i.qe, ptr %i.ag, align 8, !alias.scope !2083, !noalias !2084
  %i.qf = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.qg = getelementptr inbounds [48 x i8], ptr %.val.i.i.i, i64 %i.qf ; 5 uses
  %i.qh = getelementptr inbounds i8, ptr %i.qg, i64 -48
  store i32 %i.im, ptr %i.qh, align 8, !noalias !2085
  %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i51.sroa_idx.i = getelementptr inbounds i8, ptr %i.qg, i64 -40
  store ptr @3, ptr %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i51.sroa_idx.i, align 8, !noalias !2085
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i51.sroa_idx.i = getelementptr inbounds i8, ptr %i.qg, i64 -32
  store i64 0, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i51.sroa_idx.i, align 8, !noalias !2085
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i51.sroa_idx.i = getelementptr inbounds i8, ptr %i.qg, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i51.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @4, i64 16), i64 16, i1 false), !noalias !2085
  %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i51.sroa_idx.i = getelementptr inbounds i8, ptr %i.qg, i64 -8
  store i64 %i.nw, ptr %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i51.sroa_idx.i, align 8, !noalias !2085
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.bd:                                            ; preds = %bb.aw
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %.lr.ph.i.i.i48.i
  %i.qj = getelementptr inbounds i8, ptr %i.ox, i64 -40 ; 2 uses
  %.sroa.084.0.copyload.i = load ptr, ptr %i.qj, align 8, !noalias !2086 ; 3 uses
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ox, i64 -32 ; 2 uses
  %.sroa.585.0.copyload.i = load i64, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !2086 ; 4 uses
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ox, i64 -24
  store ptr @3, ptr %i.qj, align 8, !noalias !2087
  store i64 0, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !2087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.686.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @4, i64 16), i64 16, i1 false), !noalias !2087
  %.sroa.794.sroa.5.0..sroa.794.0..sroa_idx95.sroa_idx.i = getelementptr inbounds i8, ptr %i.ox, i64 -8
  store i64 %i.nw, ptr %.sroa.794.sroa.5.0..sroa.794.0..sroa_idx95.sroa_idx.i, align 8, !noalias !2087
  %i.qk = icmp eq ptr %.sroa.084.0.copyload.i, null
  %i.ql = icmp eq i64 %.sroa.585.0.copyload.i, 0
  %or.cond.i.i = select i1 %i.qk, i1 true, i1 %i.ql
  br i1 %or.cond.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %i.qm = shl i64 %.sroa.585.0.copyload.i, 2
  %i.qn = icmp slt i64 %.sroa.585.0.copyload.i, 4611686018427387900
  call void @llvm.assume(i1 %i.qn)
  %i.qo = and i64 %i.qm, -16                      ; 2 uses
  %i.qp = add i64 %i.qo, 16                       ; 2 uses
  %i.qq = add nsw i64 %.sroa.585.0.copyload.i, 17
  %i.qr = add i64 %i.qq, %i.qp                    ; 4 uses
  %i.qs = icmp uge i64 %i.qr, %i.qp
  %i.qt = icmp ult i64 %i.qr, 9223372036854775793
  call void @llvm.assume(i1 %i.qs)
  call void @llvm.assume(i1 %i.qt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.084.0.copyload.i) ]
  %i.qu = icmp eq i64 %i.qr, 0
  br i1 %i.qu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.be

bb.be:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.qv = sub nuw nsw i64 -16, %i.qo
  %i.qw = getelementptr inbounds i8, ptr %.sroa.084.0.copyload.i, i64 %i.qv
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qw, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2018
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.bp, %bb.be, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.i, %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB7_3set7HashSetBN_EE6insertCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %.val.i53.i = load i64, ptr %i.z, align 8, !alias.scope !2089, !noalias !2090, !noundef !5
  %i.qx = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !2091, !noundef !5
  %i.qy = xor i64 %.val.i53.i, %i.kc
  %i.qz = zext i64 %i.qy to i128
  %i.ra = zext i64 %i.qx to i128
  %i.rb = mul nuw i128 %i.ra, %i.qz               ; 2 uses
  %i.rc = lshr i128 %i.rb, 64
  %i.rd = xor i128 %i.rc, %i.rb
  %i.re = trunc i128 %i.rd to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.rf = lshr i64 %i.re, 57
  %i.rg = trunc nuw nsw i64 %i.rf to i8
  %i.rh = load i64, ptr %i.aa, align 8, !alias.scope !2094, !noalias !2095, !noundef !5 ; 3 uses
  %i.ri = load ptr, ptr %5, align 8, !alias.scope !2094, !noalias !2095, !nonnull !5, !noundef !5 ; 4 uses
  %i.rj = insertelement <16 x i8> poison, i8 %i.rg, i64 0
  %i.rk = shufflevector <16 x i8> %i.rj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %.sroa.011.0.i.i.i54.i = phi i64 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.sb, %bb.bh ]
  %.pn.i.i55.i = phi i64 [ %i.re, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.sc, %bb.bh ]
  %.sroa.01.0.i.i.i56.i = and i64 %.pn.i.i55.i, %i.rh ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 %.sroa.01.0.i.i.i56.i
  %.sroa.0.0.copyload.i24.i.i57.i = load <16 x i8>, ptr %i.rl, align 1, !noalias !2096 ; 2 uses
  %i.rm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i57.i, %i.rk
  %i.rn = bitcast <16 x i1> %i.rm to i16          ; 2 uses
  %.not.i.not30.i.i58.i = icmp eq i16 %i.rn, 0
  br i1 %.not.i.not30.i.i58.i, label %._crit_edge.i.i63.i, label %.lr.ph.i.i59.i

.lr.ph.i.i59.i:                                   ; preds = %bb.bf, %bb.bg
  %.sroa.05.0.i31.i.i60.i = phi i16 [ %i.sa, %bb.bg ], [ %i.rn, %bb.bf ] ; 3 uses
  %i.ro = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i60.i, i1 true)
  %i.rp = zext nneg i16 %i.ro to i64
  %i.rq = add i64 %.sroa.01.0.i.i.i56.i, %i.rp
  %i.rr = and i64 %i.rq, %i.rh                    ; 3 uses
  %i.rs = sub nsw i64 0, %i.rr
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.rs
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 -4
  %.val2.i.i.i61.i = load i32, ptr %i.ru, align 4, !noalias !2097, !noundef !5
  %i.rv = icmp eq i32 %i.im, %.val2.i.i.i61.i
  br i1 %i.rv, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i66.i, label %bb.bg, !prof !9

._crit_edge.i.i63.i:                              ; preds = %bb.bg, %bb.bf
  %i.rw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i57.i, splat (i8 -1)
  %i.rx = bitcast <16 x i1> %i.rw to i16
  %i.ry = icmp eq i16 %i.rx, 0
  br i1 %i.ry, label %bb.bh, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE12remove_entryBO_ECsbNMRYq9Xj9a_14rustworkx_core.exit72.i, !prof !6

bb.bg:                                            ; preds = %.lr.ph.i.i59.i
  %i.rz = add i16 %.sroa.05.0.i31.i.i60.i, -1
  %i.sa = and i16 %i.rz, %.sroa.05.0.i31.i.i60.i  ; 2 uses
  %.not.i.not.i.i62.i = icmp eq i16 %i.sa, 0
  br i1 %.not.i.not.i.i62.i, label %._crit_edge.i.i63.i, label %.lr.ph.i.i59.i

bb.bh:                                            ; preds = %._crit_edge.i.i63.i
  %i.sb = add i64 %.sroa.011.0.i.i.i54.i, 16      ; 2 uses
  %i.sc = add i64 %.sroa.01.0.i.i.i56.i, %i.sb
  br label %bb.bf

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i66.i: ; preds = %.lr.ph.i.i59.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  %i.sd = add nsw i64 %i.rr, -16
  %i.se = and i64 %i.sd, %i.rh
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.se ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i67.i = load <16 x i8>, ptr %i.sf, align 1, !noalias !2101
  %i.sg = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i67.i, splat (i8 -1)
  %i.sh = bitcast <16 x i1> %i.sg to i16
  %i.si = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rr ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i68.i = load <16 x i8>, ptr %i.si, align 1, !noalias !2102
  %i.sj = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i68.i, splat (i8 -1)
  %i.sk = bitcast <16 x i1> %i.sj to i16
  %i.sl = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.sh, i1 false)
  %i.sm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.sk, i1 false)
  %narrow.i.i.i.i69.i = add nuw nsw i16 %i.sm, %i.sl
  %i.sn = icmp samesign ugt i16 %narrow.i.i.i.i69.i, 15
  br i1 %i.sn, label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE6removeCsbNMRYq9Xj9a_14rustworkx_core.exit.i70.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i66.i
  %i.so = add i64 %i.mh, 1                        ; 2 uses
  store i64 %i.so, ptr %i.ab, align 8, !alias.scope !2103, !noalias !2017
  br label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE6removeCsbNMRYq9Xj9a_14rustworkx_core.exit.i70.i

_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE6removeCsbNMRYq9Xj9a_14rustworkx_core.exit.i70.i: ; preds = %bb.bi, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i66.i
  %i.sp = phi i64 [ %i.so, %bb.bi ], [ %i.mh, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i66.i ]
  %.sroa.0.0.i.i.i.i71.i = phi i8 [ -1, %bb.bi ], [ -128, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i66.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i71.i, ptr %i.si, align 1, !noalias !2104
  %i.sq = getelementptr i8, ptr %i.sf, i64 16
  store i8 %.sroa.0.0.i.i.i.i71.i, ptr %i.sq, align 1, !noalias !2104
  %i.sr = add i64 %i.ib, -2                       ; 2 uses
  store i64 %i.sr, ptr %i.ac, align 8, !alias.scope !2103, !noalias !2017
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE12remove_entryBO_ECsbNMRYq9Xj9a_14rustworkx_core.exit72.i

bb.bj:                                            ; preds = %.lr.ph.i.i38.i
  %i.ss = getelementptr inbounds i8, ptr %i.ni, i64 -40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.st = load ptr, ptr %i.ss, align 8, !alias.scope !2105, !noalias !2106, !nonnull !5, !noundef !5 ; 7 uses
  %i.su = getelementptr inbounds i8, ptr %i.ni, i64 -32 ; 3 uses
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !2105, !noalias !2106, !noundef !5 ; 12 uses
  %.val4.i.i = load <16 x i8>, ptr %i.st, align 16, !noalias !2107
  %i.sw = getelementptr inbounds i8, ptr %i.ni, i64 -16 ; 3 uses
  %i.sx = load i64, ptr %i.sw, align 8, !alias.scope !2105, !noalias !2106, !noundef !5 ; 2 uses
  %.sroa.5107.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ni, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ss, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false), !noalias !2018
  %i.sy = icmp eq i64 %i.sx, 0
  br i1 %i.sy, label %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i._crit_edge, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.bj
  %i.sz = icmp sgt <16 x i8> %.val4.i.i, splat (i8 -1)
  %i.ta = bitcast <16 x i1> %i.sz to i16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  br label %bb.bk

_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i: ; preds = %._crit_edge17.i.i.i.i.i
  %i.tc = add i64 %i.tg, -1                       ; 2 uses
  %i.td = add i16 %.lcssa.i.i.i.i.i, -1
  %i.te = and i16 %i.td, %.lcssa.i.i.i.i.i
  %i.tf = icmp eq i64 %i.tc, 0
  br i1 %i.tf, label %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph348, %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i
  %i.tg = phi i64 [ %i.sx, %.lr.ph348 ], [ %i.tc, %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i ]
  %.lcssa912.i.i.i346 = phi ptr [ %i.st, %.lr.ph348 ], [ %.lcssa911.i.i.i, %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i ] ; 2 uses
  %i.th = phi i16 [ %i.ta, %.lr.ph348 ], [ %i.te, %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i ] ; 2 uses
  %.lcssa16.i.i.i345 = phi ptr [ %i.tb, %.lr.ph348 ], [ %.lcssa15.i.i.i, %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i16 %i.th, 0
  br i1 %.not10.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bk, %.lr.ph.i.i.i.i.i
  %i.ti = phi ptr [ %i.tm, %.lr.ph.i.i.i.i.i ], [ %.lcssa16.i.i.i345, %bb.bk ] ; 2 uses
  %i.tj = phi ptr [ %i.tl, %.lr.ph.i.i.i.i.i ], [ %.lcssa912.i.i.i346, %bb.bk ]
  %.val8.i.i.i.i.i = load <16 x i8>, ptr %i.ti, align 16, !noalias !2108
  %i.tk = icmp sgt <16 x i8> %.val8.i.i.i.i.i, splat (i8 -1)
  %i.tl = getelementptr inbounds i8, ptr %i.tj, i64 -64 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.tk to i16 ; 2 uses
  %.not.i.i.i.i75.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i75.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i

bb.bl:                                            ; preds = %._crit_edge17.i.i.i.i.i
  %i.tn = landingpad { ptr, i32 }
          cleanup
  %i.to = icmp eq i64 %i.sv, 0
  br i1 %i.to, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.tp = add i64 %i.sv, 17
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.st, i8 -1, i64 %i.tp, i1 false), !noalias !2109
  br label %bb.bo

._crit_edge17.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.bk
  %.lcssa15.i.i.i = phi ptr [ %.lcssa16.i.i.i345, %bb.bk ], [ %i.tm, %.lr.ph.i.i.i.i.i ]
  %.lcssa911.i.i.i = phi ptr [ %.lcssa912.i.i.i346, %bb.bk ], [ %i.tl, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.th, %bb.bk ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.tq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.tr = zext nneg i16 %i.tq to i64
  %i.ts = sub nsw i64 0, %i.tr
  %i.tt = getelementptr inbounds [4 x i8], ptr %.lcssa911.i.i.i, i64 %i.ts
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 -4
  %i.tv = load i32, ptr %i.tu, align 4, !noalias !2110, !noundef !5
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef %i.tv)
          to label %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i unwind label %bb.bl

_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i._crit_edge: ; preds = %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i, %bb.bj
  %i.tw = icmp eq i64 %i.sv, 0
  br i1 %i.tw, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i._crit_edge
  %i.tx = add i64 %i.sv, 17
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.st, i8 -1, i64 %i.tx, i1 false), !noalias !2111
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.ty = icmp ult i64 %i.sv, 8
  %i.tz = add i64 %i.sv, 1
  %i.ua = lshr i64 %i.tz, 3
  %i.ub = mul nuw i64 %i.ua, 7
  %.sroa.0.0.i.i.i.i74.i = select i1 %i.ty, i64 %i.sv, i64 %i.ub
  store ptr %i.st, ptr %i.ss, align 8, !noalias !2112
  store i64 %i.sv, ptr %i.su, align 8, !noalias !2112
  store i64 %.sroa.0.0.i.i.i.i74.i, ptr %.sroa.5107.0..sroa_idx.i, align 8, !noalias !2112
  store i64 0, ptr %i.sw, align 8, !noalias !2112
  br label %.body.i

bb.bp:                                            ; preds = %bb.bn, %_RNCINvXsz_NtCs3sCKvcUjPpt_9hashbrown3setINtB8_5DrainNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBO_NCNvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity21johnson_simple_cycles7unblock0E0E0B3d_.exit.i.i.i._crit_edge
  %i.uc = icmp ult i64 %i.sv, 8
  %i.ud = add i64 %i.sv, 1
end_hunk_10
