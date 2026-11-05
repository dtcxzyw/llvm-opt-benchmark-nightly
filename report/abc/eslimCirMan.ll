Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/eslimCirMan?download=true
inline.NumInlined: 2087
inline.NumDeleted: 787
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL16Gia_ManAppendAndP10Gia_Man_t_ii:bb.a
  %i.ca = and i64 %i.bz, 1073741824
  %.not68 = icmp eq i64 %i.ca, 0
  %storemerge69.v = select i1 %.not68, i64 1073741824, i64 4611686018427387904
  %storemerge69 = or i64 %storemerge69.v, %i.bz
  store i64 %storemerge69, ptr %i.bw, align 4
  %.val84 = load i64, ptr %i.bs, align 4
  %i.cb = lshr i64 %.val84, 63
  %.val72 = load i64, ptr %i.a, align 4           ; 3 uses
  %i.cc = lshr i64 %.val72, 29
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.bz, 63
  %i.cf = lshr i64 %.val72, 61
  %i.cg = and i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.ce
  %i.ci = and i64 %i.ch, %i.cd
  %i.cj = shl nuw i64 %i.ci, 63
  %i.ck = and i64 %.val72, 9223372036854775807
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.a, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !245
  %.not70 = icmp eq i32 %i.cn, 0
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = load i64, ptr %i.a, align 4             ; 5 uses
  %i.cp = and i64 %i.co, 536870911
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cq
  %i.cs = lshr i64 %i.co, 32
  %i.ct = and i64 %i.cs, 536870911
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cu
  %.val82 = load i64, ptr %i.cr, align 4
  %i.cw = lshr i64 %.val82, 63
  %i.cx = lshr i64 %i.co, 29
  %i.cy = xor i64 %i.cw, %i.cx
  %.val81 = load i64, ptr %i.cv, align 4
  %i.cz = lshr i64 %.val81, 63
  %i.da = lshr i64 %i.co, 61
  %i.db = and i64 %i.da, 1
  %i.dc = xor i64 %i.cz, %i.db
  %i.dd = and i64 %i.dc, %i.cy
  %i.de = shl nuw i64 %i.dd, 63
  %i.df = and i64 %i.co, 9223372036854775807
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.a, align 4
  %i.dh = getelementptr i8, ptr %0, i64 32
  %.val74 = load ptr, ptr %i.dh, align 8, !tbaa !103
  %i.di = ptrtoint ptr %i.a to i64
  %i.dj = ptrtoint ptr %.val74 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 12
  %i.dm = trunc i64 %i.dl to i32
  tail call void @Gia_ManBuiltInSimPerform(ptr noundef nonnull %0, i32 noundef %i.dm) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !246
  %.not71 = icmp eq ptr %i.do, null
  br i1 %.not71, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Gia_ManQuantSetSuppAnd(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dp = getelementptr i8, ptr %0, i64 32
  %.val73 = load ptr, ptr %i.dp, align 8, !tbaa !103
  %i.dq = ptrtoint ptr %i.a to i64
  %i.dr = ptrtoint ptr %.val73 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 12
  %i.du = trunc i64 %i.dt to i32
  %i.dv = shl i32 %i.du, 1
  ret i32 %i.dv
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.10", align 8    ; 7 uses
  %2 = alloca %"class.std::vector.43", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call ptr @Gia_ManStart(i32 noundef %i.i) #31 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 2305843009213693951
  br i1 %i.q, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit:   ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = ashr exact i64 %i.o, 1                   ; 3 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #29 ; 5 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !77
  %i.v = and i64 %i.r, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.v, i1 false), !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !64
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.x = ptrtoint ptr %i.t to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.y = phi i64 [ 0, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.x, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ]
  %i.z = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.s, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ] ; 6 uses
  %i.aa = phi ptr [ %i.k, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %.pre68, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ] ; 2 uses
  %i.ab = phi ptr [ %i.k, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %.pre, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.w, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr null, ptr %2, align 8, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !250
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !156
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !253
  %.not.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = ashr exact i64 %i.aj, 3                 ; 5 uses
  %i.al = add nsw i64 %i.ak, 63                   ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 2305843009213693944
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #29 ; 5 uses
  %i.ap = lshr i64 %i.al, 6                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !253
  store ptr %i.ao, ptr %2, align 8
  store i32 0, ptr %i.ad, align 8
  %i.ar = sdiv i64 %i.ak, 64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ar
  %i.at = and i64 %i.ak, -9223372036854775745
  %i.au = icmp ugt i64 %i.at, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.au, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.as, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.av = trunc i64 %i.ak to i32
  %i.aw = and i32 %i.av, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.ae, align 8
  store i32 %i.aw, ptr %i.af, align 8
  %.idx.i = shl nuw nsw i64 %i.ap, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %.idx.i, i1 false)
  %i.ax = ptrtoint ptr %storemerge.i.i.i.i.i to i64
  %i.ay = and i64 %i.ak, 63
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %bb.c
  %i.az = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.aq, %bb.c ] ; 2 uses
  %i.ba = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.ay, %bb.c ]
  %i.bb = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.ax, %bb.c ]
  %i.bc = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.ao, %bb.c ] ; 5 uses
  %i.bd = load i32, ptr %0, align 8, !tbaa !80
  %.not49 = icmp eq i32 %i.bd, 0
  br i1 %.not49, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  br label %bb.d

.preheader.loopexit:                              ; preds = %_ZL15Gia_ManAppendCiP10Gia_Man_t_.exit
  %i.bg = add i32 %i.dv, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.lcssa48 = phi i32 [ 1, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.bg, %.preheader.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bi = sext i32 %.lcssa48 to i64
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %i.bp = load i32, ptr %i.bh, align 4, !tbaa !76 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = sub nsw i64 %i.bo, %i.bq
  %i.bs = icmp ugt i64 %i.br, %i.bi
  br i1 %i.bs, label %.lr.ph53, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZL15Gia_ManAppendCiP10Gia_Man_t_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZL15Gia_ManAppendCiP10Gia_Man_t_.exit ] ; 5 uses
  %i.bt = tail call fastcc noundef ptr @_ZL16Gia_ManAppendObjP10Gia_Man_t_(ptr noundef %i.j) ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 4
  %i.bv = or i64 %i.bu, 2684354559                ; 2 uses
  store i64 %i.bv, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !104
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %.val.i = load i32, ptr %i.bx, align 4, !tbaa !105
  %i.by = and i32 %.val.i, 536870911
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 32
  %i.cb = and i64 %i.bv, -2305843004918726657
  %i.cc = or disjoint i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.bt, align 4
  %i.cd = load ptr, ptr %i.be, align 8, !tbaa !104 ; 6 uses
  %.val11.i = load ptr, ptr %i.bf, align 8, !tbaa !103 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !105 ; 7 uses
  %i.cg = load i32, ptr %i.cd, align 8, !tbaa !124
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.e, label %_ZL15Gia_ManAppendCiP10Gia_Man_t_.exit

bb.e:                                             ; preds = %bb.d
  %i.ci = icmp slt i32 %i.cf, 16
  br i1 %i.ci, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !106 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ck, i64 noundef 64) #34
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.cm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i:          ; preds = %bb.h, %bb.g
  %i.cn = phi ptr [ %i.cl, %bb.g ], [ %i.cm, %bb.h ]
  store ptr %i.cn, ptr %i.cj, align 8, !tbaa !106
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i

bb.i:                                             ; preds = %bb.e
  %i.co = icmp samesign ult i32 %i.cf, 1073741823
  %i.cp = shl nuw nsw i32 %i.cf, 1
  %spec.select.i.i = select i1 %i.co, i32 %i.cp, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.cf, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.j, label %_ZL15Gia_ManAppendCiP10Gia_Man_t_.exit

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !106 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.cr, null
  %i.cs = zext nneg i32 %spec.select.i.i to i64
  %i.ct = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = tail call ptr @realloc(ptr noundef nonnull %i.cr, i64 noundef %i.ct) #34
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cv = tail call noalias ptr @malloc(i64 noundef %i.ct) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cw = phi ptr [ %i.cu, %bb.k ], [ %i.cv, %bb.l ]
  store ptr %i.cw, ptr %i.cq, align 8, !tbaa !106
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i: ; preds = %bb.m, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.m ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.cd, align 8, !tbaa !124
  %.pre.i = load i32, ptr %i.ce, align 4, !tbaa !105
  %.val10.pre.i = load ptr, ptr %i.bf, align 8, !tbaa !103
  br label %_ZL15Gia_ManAppendCiP10Gia_Man_t_.exit

_ZL15Gia_ManAppendCiP10Gia_Man_t_.exit:           ; preds = %bb.d, %bb.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i
  %.val10.i = phi ptr [ %.val11.i, %bb.d ], [ %.val11.i, %bb.i ], [ %.val10.pre.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i ]
  %i.cx = phi i32 [ %i.cf, %bb.d ], [ %i.cf, %bb.i ], [ %.pre.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i ] ; 2 uses
  %i.cy = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cz = ptrtoint ptr %.val11.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 12
  %i.dc = trunc i64 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !106
  %i.df = add nsw i32 %i.cx, 1
  store i32 %i.df, ptr %i.ce, align 4, !tbaa !105
  %i.dg = sext i32 %i.cx to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  store i32 %i.dc, ptr %i.dh, align 4, !tbaa !74
  %i.di = ptrtoint ptr %.val10.i to i64
  %i.dj = sub i64 %i.cy, %i.di
  %i.dk = sdiv exact i64 %i.dj, 12
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = shl i32 %i.dl, 1
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !74
  %i.do = lshr i64 %indvars.iv, 6
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.do ; 2 uses
  %i.dq = and i64 %indvars.iv, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = xor i64 %i.dr, -1
  %i.dt = load i64, ptr %i.dp, align 8, !tbaa !110
  %i.du = and i64 %i.dt, %i.ds
  store i64 %i.du, ptr %i.dp, align 8, !tbaa !110
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dv = load i32, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.dw = zext i32 %i.dv to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.dw
  br i1 %.not.not, label %bb.d, label %.preheader.loopexit, !llvm.loop !247

._crit_edge:                                      ; preds = %.lr.ph53, %.preheader
  %.pre-phi71 = phi i64 [ %i.bo, %.preheader ], [ %i.eq, %.lr.ph53 ] ; 2 uses
  %i.dx = phi ptr [ %i.bk, %.preheader ], [ %i.em, %.lr.ph53 ]
  %.lcssa46 = phi i32 [ %i.bp, %.preheader ], [ %i.er, %.lr.ph53 ]
  %i.dy = trunc i64 %.pre-phi71 to i32
  %i.dz = sub i32 %i.dy, %.lcssa46
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = icmp ugt i64 %.pre-phi71, %i.ea
  br i1 %i.eb, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %._crit_edge
  %i.ec = ptrtoint ptr %i.bc to i64
  %i.ed = sub i64 %i.bb, %i.ec
  %i.ee = shl nsw i64 %i.ed, 3
  %i.ef = add nsw i64 %i.ee, %i.ba                ; 2 uses
  %i.eg = getelementptr i8, ptr %i.j, i64 32      ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  br label %bb.o

.lr.ph53:                                         ; preds = %.preheader, %.lr.ph53
  %.02252 = phi i32 [ %.022, %.lr.ph53 ], [ %.lcssa48, %.preheader ] ; 2 uses
  %i.ej = call noundef i32 @_ZN5eSLIM11eSLIMCirMan10addGiaGateEP10Gia_Man_t_iRSt6vectorIiSaIiEERS3_IbSaIbEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.j, i32 noundef %.02252, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 0 uses
  %.022 = add i32 %.02252, 1                      ; 2 uses
  %i.ek = sext i32 %.022 to i64
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = load i32, ptr %i.bh, align 4, !tbaa !76 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = sub nsw i64 %i.eq, %i.es
  %i.eu = icmp ugt i64 %i.et, %i.ek
  br i1 %i.eu, label %.lr.ph53, label %._crit_edge, !llvm.loop !248

._crit_edge59:                                    ; preds = %._crit_edge
  %.not.i.i28 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i28, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %._crit_edge59.thread

._crit_edge59.thread:                             ; preds = %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit, %._crit_edge59
  %i.ev = ptrtoint ptr %i.az to i64
  %i.ew = ptrtoint ptr %i.bc to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = ashr exact i64 %i.ex, 3
  %i.ez = sub nsw i64 0, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ez
  tail call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.ex) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge59, %._crit_edge59.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.fb = ptrtoint ptr %i.z to i64
  %i.fc = sub i64 %i.y, %i.fb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.fc) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret ptr %i.j
end_hunk_0
begin_hunk_1_@_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv:bb.a
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv65
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !49 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !43
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !41 ; 2 uses
  %i.fk = sext i32 %i.fj to i64                   ; 5 uses
  %.not.i.i29 = icmp ugt i64 %i.ef, %i.fk
  br i1 %.not.i.i29, label %_ZNSt6vectorIbSaIbEE2atEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.26, i64 noundef %i.fk, i64 noundef %i.ef) #28
  unreachable

_ZNSt6vectorIbSaIbEE2atEm.exit:                   ; preds = %bb.o
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 80
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !75
  %i.fn = icmp eq i64 %i.fm, 1
  %i.fo = sdiv i32 %i.fj, 64
  %.sext = sext i32 %i.fo to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %.sext
  %i.fq = and i64 %i.fk, -9223372036854775745
  %i.fr = icmp ugt i64 %i.fq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.fr, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fp, i64 %storemerge.idx.i.i.i.i.i.i
  %i.fs = and i64 %i.fk, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !110
  %i.fv = and i64 %i.fu, %i.ft
  %i.fw = icmp ne i64 %i.fv, 0
  %i.fx = xor i1 %i.fn, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fk
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !74 ; 2 uses
  %i.ga = zext i1 %i.fx to i32
  %i.gb = xor i32 %i.fz, %i.ga
  %i.gc = tail call fastcc noundef ptr @_ZL16Gia_ManAppendObjP10Gia_Man_t_(ptr noundef %i.j) ; 8 uses
  %i.gd = load i64, ptr %i.gc, align 4
  %i.ge = or i64 %i.gd, 2147483648                ; 2 uses
  store i64 %i.ge, ptr %i.gc, align 4
  %.val20.i = load ptr, ptr %i.eg, align 8, !tbaa !103
  %i.gf = ptrtoint ptr %i.gc to i64               ; 3 uses
  %i.gg = ptrtoint ptr %.val20.i to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = sdiv exact i64 %i.gh, 12
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = lshr i32 %i.fz, 1
  %i.gl = sub i32 %i.gj, %i.gk
  %i.gm = and i32 %i.gl, 536870911
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = and i64 %i.ge, -1073741824
  %i.gp = shl i32 %i.gb, 29
  %i.gq = and i32 %i.gp, 536870912
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = or disjoint i64 %i.go, %i.gr
  %i.gt = or disjoint i64 %i.gs, %i.gn            ; 2 uses
  store i64 %i.gt, ptr %i.gc, align 4
  %i.gu = load ptr, ptr %i.eh, align 8, !tbaa !109
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
  %.val.i30 = load i32, ptr %i.gv, align 4, !tbaa !105
  %i.gw = and i32 %.val.i30, 536870911
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, 32
  %i.gz = and i64 %i.gt, -2305843004918726657
  %i.ha = or disjoint i64 %i.gz, %i.gy
  store i64 %i.ha, ptr %i.gc, align 4
  %i.hb = load ptr, ptr %i.eh, align 8, !tbaa !109 ; 6 uses
  %.val19.i = load ptr, ptr %i.eg, align 8, !tbaa !103
  %i.hc = ptrtoint ptr %.val19.i to i64
  %i.hd = sub i64 %i.gf, %i.hc
  %i.he = sdiv exact i64 %i.hd, 12
  %i.hf = trunc i64 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !105 ; 7 uses
  %i.hi = load i32, ptr %i.hb, align 8, !tbaa !124
  %i.hj = icmp eq i32 %i.hh, %i.hi
  br i1 %i.hj, label %bb.q, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

bb.q:                                             ; preds = %_ZNSt6vectorIbSaIbEE2atEm.exit
  %i.hk = icmp slt i32 %i.hh, 16
  br i1 %i.hk, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !106 ; 2 uses
  %.not9.i.i.i37 = icmp eq ptr %i.hm, null
  br i1 %.not9.i.i.i37, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hm, i64 noundef 64) #34
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i38

bb.t:                                             ; preds = %bb.r
  %i.ho = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i38

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i38:        ; preds = %bb.t, %bb.s
  %i.hp = phi ptr [ %i.hn, %bb.s ], [ %i.ho, %bb.t ]
  store ptr %i.hp, ptr %i.hl, align 8, !tbaa !106
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i34

bb.u:                                             ; preds = %bb.q
  %i.hq = icmp samesign ult i32 %i.hh, 1073741823
  %i.hr = shl nuw nsw i32 %i.hh, 1
  %spec.select.i.i31 = select i1 %i.hq, i32 %i.hr, i32 2147483647 ; 3 uses
  %.not.i9.i.i32 = icmp samesign ult i32 %i.hh, %spec.select.i.i31
  br i1 %.not.i9.i.i32, label %bb.v, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

bb.v:                                             ; preds = %bb.u
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !106 ; 2 uses
  %.not9.i10.i.i33 = icmp eq ptr %i.ht, null
  %i.hu = zext nneg i32 %spec.select.i.i31 to i64
  %i.hv = shl nuw nsw i64 %i.hu, 2                ; 2 uses
  br i1 %.not9.i10.i.i33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hw = tail call ptr @realloc(ptr noundef nonnull %i.ht, i64 noundef %i.hv) #34
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.hx = tail call noalias ptr @malloc(i64 noundef %i.hv) #33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hy = phi ptr [ %i.hw, %bb.w ], [ %i.hx, %bb.x ]
  store ptr %i.hy, ptr %i.hs, align 8, !tbaa !106
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i34

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i34: ; preds = %bb.y, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i38
  %spec.select.sink.i.i35 = phi i32 [ %spec.select.i.i31, %bb.y ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i38 ]
  store i32 %spec.select.sink.i.i35, ptr %i.hb, align 8, !tbaa !124
  %.pre.i36 = load i32, ptr %i.hg, align 4, !tbaa !105
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i:            ; preds = %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i34, %bb.u, %_ZNSt6vectorIbSaIbEE2atEm.exit
  %i.hz = phi i32 [ %i.hh, %_ZNSt6vectorIbSaIbEE2atEm.exit ], [ %i.hh, %bb.u ], [ %.pre.i36, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i34 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !106
  %i.ic = add nsw i32 %i.hz, 1
  store i32 %i.ic, ptr %i.hg, align 4, !tbaa !105
  %i.id = sext i32 %i.hz to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.id
  store i32 %i.hf, ptr %i.ie, align 4, !tbaa !74
  %i.if = load ptr, ptr %i.ei, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.if, null
  br i1 %.not.i, label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit, label %bb.z

bb.z:                                             ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i
  %i.ig = load i64, ptr %i.gc, align 4
  %i.ih = and i64 %i.ig, 536870911
  %i.ii = sub nsw i64 0, %i.ih
  %i.ij = getelementptr inbounds [12 x i8], ptr %i.gc, i64 %i.ii
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ij, ptr noundef nonnull %i.gc) #31
  br label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit

_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit:          ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i, %bb.z
  %.val18.i = load ptr, ptr %i.eg, align 8, !tbaa !103
  %i.ik = ptrtoint ptr %.val18.i to i64
  %i.il = sub i64 %i.gf, %i.ik
  %i.im = sdiv exact i64 %i.il, 12
  %i.in = trunc i64 %i.im to i32
  %i.io = shl i32 %i.in, 1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv65
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !74
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.iq = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = ashr exact i64 %i.iu, 3
  %i.iw = icmp ugt i64 %i.iv, %indvars.iv.next66
  br i1 %i.iw, label %bb.o, label %._crit_edge59.thread, !llvm.loop !249
}

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToNtkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit:
  tail call void @_ZN5eSLIM11eSLIMCirMan23simplifyDuplicateFaninsEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.a = tail call ptr @Abc_NtkAlloc(i32 noundef 2, i32 noundef 1, i32 noundef 1) #31 ; 9 uses
  %i.b = tail call ptr @Abc_NtkCreateNodeConst0(ptr noundef %i.a) #31 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 15
  %i.l = tail call ptr @Abc_ObjName(ptr noundef %i.b) #31
  %i.m = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.f, i32 noundef %i.h, i32 noundef %i.k, ptr noundef %i.l, ptr noundef null) #31 ; 0 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !80
  %.not136 = icmp eq i32 %i.n, 0
  br i1 %.not136, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64
  %i.o = add i32 %i.bc, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit
  %.sroa.0102.0.lcssa = phi ptr [ %i.c, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0102.3, %.preheader.loopexit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ %i.d, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %.sroa.13.3, %.preheader.loopexit ]
  %.sroa.22.0.lcssa = phi ptr [ %i.d, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %.sroa.22.3, %.preheader.loopexit ] ; 2 uses
  %.lcssa131 = phi i32 [ 1, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %i.o, %.preheader.loopexit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = sext i32 %.lcssa131 to i64               ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = load i32, ptr %i.r, align 4, !tbaa !76   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = sub nsw i64 %i.y, %i.aa
  %i.ac = icmp ugt i64 %i.ab, %i.s
  br i1 %i.ac, label %.lr.ph152, label %._crit_edge

.lr.ph152:                                        ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.e

.lr.ph:                                           ; preds = %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64
  %.0140 = phi i32 [ %i.bb, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64 ], [ 1, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.22.0139 = phi ptr [ %.sroa.22.3, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64 ], [ %i.d, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.13.0138 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64 ], [ %i.d, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.0102.0137 = phi ptr [ %.sroa.0102.3, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64 ], [ %i.c, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %i.ae = tail call noundef ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 2) #31 ; 5 uses
  %.not.i57 = icmp eq ptr %.sroa.13.0138, %.sroa.22.0139
  br i1 %.not.i57, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  store ptr %i.ae, ptr %.sroa.13.0138, align 8, !tbaa !158
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64

bb.b:                                             ; preds = %.lr.ph
  %i.af = ptrtoint ptr %.sroa.22.0139 to i64
  %i.ag = ptrtoint ptr %.sroa.0102.0137 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.c, label %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i58

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i58: ; preds = %bb.b
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i59 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i59, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i60)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #29 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.ae, ptr %i.aq, align 8, !tbaa !158
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.d, label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63

bb.d:                                             ; preds = %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %.sroa.0102.0137, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63

_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63: ; preds = %bb.d, %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i58
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0137, i64 noundef %i.ah) #30
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64

_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit64: ; preds = %bb.a, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63
  %.sroa.0102.3 = phi ptr [ %i.ap, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63 ], [ %.sroa.0102.0137, %bb.a ] ; 2 uses
  %.pn = phi ptr [ %i.aq, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63 ], [ %.sroa.13.0138, %bb.a ]
  %.sroa.22.3 = phi ptr [ %i.as, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63 ], [ %.sroa.22.0139, %bb.a ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 15
  %i.az = tail call ptr @Abc_ObjName(ptr noundef %i.ae) #31
  %i.ba = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.at, i32 noundef %i.av, i32 noundef %i.ay, ptr noundef %i.az, ptr noundef null) #31 ; 0 uses
  %i.bb = add nuw nsw i32 %.0140, 1
  %i.bc = load i32, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.not = icmp ult i32 %.0140, %i.bc
  br i1 %.not.not, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !254

.loopexit.loopexit:                               ; preds = %.lr.ph146
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit72
  %i.bd = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.dj, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit72 ] ; 2 uses
  %.051 = add i32 %.051151, 1                     ; 2 uses
  %i.be = sext i32 %.051 to i64                   ; 2 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 2 uses
  %i.bk = load i32, ptr %i.r, align 4, !tbaa !76  ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = sub nsw i64 %i.bj, %i.bl
  %i.bn = icmp ugt i64 %i.bm, %i.be
  br i1 %i.bn, label %bb.e, label %._crit_edge, !llvm.loop !255

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.pre-phi168 = phi i64 [ %i.y, %.preheader ], [ %i.bj, %.loopexit ] ; 2 uses
  %i.bo = phi ptr [ %i.u, %.preheader ], [ %i.bd, %.loopexit ]
  %.sroa.0102.1.lcssa = phi ptr [ %.sroa.0102.0.lcssa, %.preheader ], [ %.sroa.0102.4, %.loopexit ] ; 3 uses
  %.sroa.22.1.lcssa = phi ptr [ %.sroa.22.0.lcssa, %.preheader ], [ %.sroa.22.4, %.loopexit ]
  %.lcssa = phi i32 [ %i.z, %.preheader ], [ %i.bk, %.loopexit ]
  %i.bp = trunc i64 %.pre-phi168 to i32
  %i.bq = sub i32 %i.bp, %.lcssa
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = icmp ugt i64 %.pre-phi168, %i.br
  br i1 %i.bs, label %.lr.ph160, label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EED2Ev.exit

.lr.ph160:                                        ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph152, %.loopexit
  %i.bu = phi i64 [ %i.s, %.lr.ph152 ], [ %i.be, %.loopexit ] ; 2 uses
  %.051151 = phi i32 [ %.lcssa131, %.lr.ph152 ], [ %.051, %.loopexit ]
  %.sroa.22.1150 = phi ptr [ %.sroa.22.0.lcssa, %.lr.ph152 ], [ %.sroa.22.4, %.loopexit ] ; 3 uses
  %.sroa.13.1149 = phi ptr [ %.sroa.13.0.lcssa, %.lr.ph152 ], [ %.sroa.13.4, %.loopexit ] ; 3 uses
  %.sroa.0102.1148 = phi ptr [ %.sroa.0102.0.lcssa, %.lr.ph152 ], [ %.sroa.0102.4, %.loopexit ] ; 4 uses
  %i.bv = tail call noundef ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 7) #31 ; 7 uses
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !139
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 15
  %i.cc = tail call ptr @Abc_ObjName(ptr noundef %i.bv) #31
  %i.cd = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.bw, i32 noundef %i.by, i32 noundef %i.cb, ptr noundef %i.cc, ptr noundef null) #31 ; 0 uses
  %.not.i65 = icmp eq ptr %.sroa.13.1149, %.sroa.22.1150
  br i1 %.not.i65, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.bv, ptr %.sroa.13.1149, align 8, !tbaa !158
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit72

bb.g:                                             ; preds = %bb.e
  %i.ce = ptrtoint ptr %.sroa.22.1150 to i64
  %i.cf = ptrtoint ptr %.sroa.0102.1148 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.h, label %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i66

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i66: ; preds = %bb.g
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i67 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i67, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #29 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store ptr %i.bv, ptr %i.cp, align 8, !tbaa !158
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.i, label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i71

bb.i:                                             ; preds = %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i66
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.0102.1148, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i71

_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i71: ; preds = %bb.i, %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i66
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.1148, i64 noundef %i.cg) #30
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit72

_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit72: ; preds = %bb.f, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i71
  %.sroa.0102.4 = phi ptr [ %i.co, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i71 ], [ %.sroa.0102.1148, %bb.f ] ; 3 uses
  %.pn120 = phi ptr [ %i.cp, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i71 ], [ %.sroa.13.1149, %bb.f ]
  %.sroa.22.4 = phi ptr [ %i.cr, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i71 ], [ %.sroa.22.1150, %bb.f ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn120, i64 8
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.bu
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !49 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !75
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42
end_hunk_1
begin_hunk_2_@_ZN5eSLIM11eSLIMCirMan23simplifyDuplicateFaninsEv:bb.a
  br i1 %.not11.i.i.i41, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i64, ptr %i.b, align 8, !tbaa !132
  %i.ix = load i32, ptr %i.iv, align 4, !tbaa !74
  %i.iy = sext i32 %i.ix to i64
  %i.iz = urem i64 %i.iy, %i.iw
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.iz
  store ptr %i.hj, ptr %i.ja, align 8, !tbaa !142
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store ptr %i.c, ptr %i.ir, align 8, !tbaa !142
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i38

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i38: ; preds = %bb.bj, %bb.bg
  %i.jb = load i64, ptr %i.t, align 8, !tbaa !140
  %i.jc = add i64 %i.jb, 1
  store i64 %i.jc, ptr %i.t, align 8, !tbaa !140
  br label %_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit42

_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit42: ; preds = %bb.as, %bb.ar, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i38
  %i.jd = phi ptr [ %i.iq, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i38 ], [ %i.dw, %bb.ar ], [ %i.dw, %bb.as ] ; 3 uses
  %i.je = phi ptr [ %i.iq, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i38 ], [ %i.dx, %bb.ar ], [ %i.dx, %bb.as ] ; 3 uses
  %.pn.i39 = phi ptr [ %i.hj, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i38 ], [ %i.gz, %bb.ar ], [ %i.he, %bb.as ]
  %.1.i40 = getelementptr inbounds nuw i8, ptr %.pn.i39, i64 12
  %i.jf = load i32, ptr %.1.i40, align 4, !tbaa !74
  %i.jg = add nsw i32 %i.jf, -1
  %i.jh = zext i32 %i.jg to i64                   ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE14isTruePatterns, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !110
  %i.jk = and i64 %i.bj, 4294967295               ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE14isTruePatterns, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !110
  %i.jn = and i64 %i.jm, %i.jj                    ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE15isFalsePatterns, i64 %i.jh
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !110
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE15isFalsePatterns, i64 %i.jk
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !110
  %i.js = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jn, i1 true)
  %i.jt = icmp eq i64 %i.jn, 0
  %i.ju = select i1 %i.jt, i64 -1, i64 %i.js
  %i.jv = getelementptr inbounds nuw i8, ptr @_ZZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjjE12firstTrueIn1, i64 %i.jh
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !146
  %i.jx = zext i8 %i.jw to i64
  %i.jy = sub nsw i64 %i.ju, %i.jx
  %i.jz = and i64 %i.jn, %i.gr
  %i.ka = and i64 %i.jp, %i.jr
  %i.kb = and i64 %i.ka, %i.gr
  %i.kc = lshr i64 %i.jz, %i.jy
  %i.kd = or i64 %i.kc, %i.kb                     ; 3 uses
  %i.ke = icmp eq i32 %i.bk, 5
  br i1 %i.ke, label %bb.bk, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit42
  %i.kf = icmp slt i32 %i.bk, 5
  br i1 %i.kf, label %.lr.ph.preheader.i.i, label %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %sext = shl i64 %i.bi, 29
  %i.kg = ashr i64 %sext, 32
  br label %.lr.ph.i.i

bb.bk:                                            ; preds = %_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit42
  %i.kh = and i64 %i.kd, 4294967295
  br label %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.kg, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 4 uses
  %.01315.i.i = phi i64 [ %i.kd, %.lr.ph.preheader.i.i ], [ %i.ks, %.lr.ph.i.i ] ; 2 uses
  %i.ki = getelementptr inbounds [8 x i8], ptr @_ZZN5eSLIM11eSLIMCirMan10compressTTEmjE8filters1, i64 %indvars.iv.i.i
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !110
  %i.kk = and i64 %i.kj, %.01315.i.i
  %i.kl = getelementptr inbounds [8 x i8], ptr @_ZZN5eSLIM11eSLIMCirMan10compressTTEmjE8filters2, i64 %indvars.iv.i.i
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !110
  %i.kn = and i64 %i.km, %.01315.i.i
  %i.ko = getelementptr inbounds [4 x i8], ptr @_ZZN5eSLIM11eSLIMCirMan10compressTTEmjE6shifts, i64 %indvars.iv.i.i
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !74
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = lshr i64 %i.kn, %i.kq
  %i.ks = or i64 %i.kr, %i.kk                     ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kt = and i64 %indvars.iv.next.i.i, 4294967295
  %exitcond.not.i.i = icmp eq i64 %i.kt, 5
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit, label %.lr.ph.i.i, !llvm.loop !5

_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i, %bb.bk
  %.012.i.i = phi i64 [ %i.kh, %bb.bk ], [ %i.kd, %.preheader.i.i ], [ %i.ks, %.lr.ph.i.i ]
  %i.ku = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !49 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 80
  store i64 %.012.i.i, ptr %i.kx, align 8, !tbaa !75
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !46 ; 2 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = sub i64 %i.bg, %i.la
  %i.lc = getelementptr inbounds i8, ptr %i.kz, i64 %i.lb ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !46 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ld, %i.lf
  br i1 %.not.i.i, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.ld to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 3 uses
  %i.lj = icmp sgt i64 %i.li, 8
  br i1 %i.lj, label %bb.bm, label %bb.bn, !prof !47

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lc, ptr nonnull align 8 %i.ld, i64 %i.li, i1 false)
  %.pre.i.i = load ptr, ptr %i.le, align 8, !tbaa !42
  %.pre = load ptr, ptr %1, align 8, !tbaa !131   ; 2 uses
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.bn:                                            ; preds = %bb.bl
  %i.lk = icmp eq i64 %i.li, 8
  br i1 %i.lk, label %bb.bo, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ll = load ptr, ptr %i.ld, align 8, !tbaa !49
  store ptr %i.ll, ptr %i.lc, align 8, !tbaa !49
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit, %bb.bm, %bb.bn, %bb.bo
  %i.lm = phi ptr [ %i.jd, %bb.bo ], [ %i.jd, %bb.bn ], [ %.pre, %bb.bm ], [ %i.jd, %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit ]
  %i.ln = phi ptr [ %i.je, %bb.bo ], [ %i.je, %bb.bn ], [ %.pre, %bb.bm ], [ %i.je, %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit ]
  %i.lo = phi ptr [ %i.lf, %bb.bo ], [ %i.lf, %bb.bn ], [ %.pre.i.i, %bb.bm ], [ %i.lf, %_ZN5eSLIM11eSLIMCirMan17removeInputFromTTEmjj.exit ]
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -8
  store ptr %i.lp, ptr %i.le, align 8, !tbaa !42
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit28
  %i.lq = phi ptr [ %i.gl, %_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit28 ], [ %i.lm, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ]
  %i.lr = phi ptr [ %i.gl, %_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit28 ], [ %i.ln, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ]
  %.sroa.071.1 = phi ptr [ %i.gm, %_ZNSt8__detail9_Map_baseIiSt4pairIKiiESaIS3_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit28 ], [ %i.lc, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ] ; 2 uses
  %i.ls = load ptr, ptr %i.g, align 8, !tbaa !63  ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !49 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !46
  %.not80 = icmp eq ptr %.sroa.071.1, %i.lw
  br i1 %.not80, label %.loopexit, label %.lr.ph, !llvm.loop !259
}

declare ptr @Abc_NtkAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Abc_NtkCreateNodeConst0(ptr noundef) local_unnamed_addr #4

declare ptr @Nm_ManStoreIdName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #4

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5eSLIM11eSLIMCirMan22eSLIMCirManToMappedNtkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit:
  %1 = alloca %"class.std::unordered_map.26", align 8 ; 18 uses
  %2 = alloca %"class.std::unordered_map.26", align 8 ; 17 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  tail call void @Mio_IntallSimpleLibrary() #31
  %i.b = tail call ptr @Abc_FrameReadLibGen() #31 ; 14 uses
  %i.c = tail call ptr @Abc_NtkAlloc(i32 noundef 2, i32 noundef 4, i32 noundef 1) #31 ; 10 uses
  %i.d = tail call noundef ptr @Abc_NtkCreateObj(ptr noundef %i.c, i32 noundef 7) #31 ; 5 uses
  %i.e = tail call ptr @Mio_LibraryReadGateByName(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef null) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !146
  %i.g = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 4 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !158
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 15
  %i.p = tail call ptr @Abc_ObjName(ptr noundef %i.d) #31
  %i.q = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.o, ptr noundef %i.p, ptr noundef null) #31 ; 0 uses
  %i.r = tail call noundef ptr @Abc_NtkCreateObj(ptr noundef %i.c, i32 noundef 7) #31 ; 9 uses
  %i.s = tail call ptr @Mio_LibraryReadGateByName(ptr noundef %i.b, ptr noundef nonnull @.str.1, ptr noundef null) #31
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !146
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !139
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 15
  %i.aa = tail call ptr @Abc_ObjName(ptr noundef %i.r) #31
  %i.ab = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.u, i32 noundef %i.w, i32 noundef %i.z, ptr noundef %i.aa, ptr noundef null) #31 ; 0 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !80
  %.not269 = icmp eq i32 %i.ac, 0
  br i1 %.not269, label %.preheader233, label %.lr.ph

.preheader233.loopexit:                           ; preds = %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81
  %i.ad = add i32 %i.bp, 1
  br label %.preheader233

.preheader233:                                    ; preds = %.preheader233.loopexit, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit
  %.sroa.49.0.lcssa = phi ptr [ %i.h, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %.sroa.49.10, %.preheader233.loopexit ] ; 2 uses
  %.sroa.26.0.lcssa = phi ptr [ %i.h, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %.sroa.26.9, %.preheader233.loopexit ] ; 2 uses
  %.sroa.0184.0.lcssa = phi ptr [ %i.g, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0184.10, %.preheader233.loopexit ] ; 2 uses
  %.lcssa264 = phi i32 [ 1, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ], [ %i.ad, %.preheader233.loopexit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ah = sext i32 %.lcssa264 to i64              ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !76 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.an, %i.ap
  %.not70281 = icmp ugt i64 %i.aq, %i.ah
  br i1 %.not70281, label %.lr.ph286, label %.critedge73

.lr.ph:                                           ; preds = %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81
  %.065273 = phi i32 [ %i.bo, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81 ], [ 1, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0184.0272 = phi ptr [ %.sroa.0184.10, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81 ], [ %i.g, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.26.0271 = phi ptr [ %.sroa.26.9, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81 ], [ %i.h, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.49.0270 = phi ptr [ %.sroa.49.10, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81 ], [ %i.h, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.ar = tail call noundef ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.c, i32 noundef 2) #31 ; 5 uses
  %.not.i74 = icmp eq ptr %.sroa.26.0271, %.sroa.49.0270
  br i1 %.not.i74, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  store ptr %i.ar, ptr %.sroa.26.0271, align 8, !tbaa !158
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81

bb.b:                                             ; preds = %.lr.ph
  %i.as = ptrtoint ptr %.sroa.26.0271 to i64
  %i.at = ptrtoint ptr %.sroa.0184.0272 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 6 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.c, label %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i75

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i75: ; preds = %bb.b
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i76 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i76, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i77 = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i77)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #29 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store ptr %i.ar, ptr %i.bd, align 8, !tbaa !158
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.d, label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i80

bb.d:                                             ; preds = %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %.sroa.0184.0272, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i80

_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i80: ; preds = %bb.d, %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i75
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.0272, i64 noundef %i.au) #30
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81

_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit81: ; preds = %bb.a, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i80
  %.sroa.49.10 = phi ptr [ %i.bf, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i80 ], [ %.sroa.49.0270, %bb.a ] ; 2 uses
  %.pn = phi ptr [ %i.bd, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i80 ], [ %.sroa.26.0271, %bb.a ]
  %.sroa.0184.10 = phi ptr [ %i.bc, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i80 ], [ %.sroa.0184.0272, %bb.a ] ; 2 uses
  %.sroa.26.9 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !159
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !139
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = and i32 %i.bk, 15
  %i.bm = tail call ptr @Abc_ObjName(ptr noundef %i.ar) #31
  %i.bn = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.bl, ptr noundef %i.bm, ptr noundef null) #31 ; 0 uses
  %i.bo = add nuw nsw i32 %.065273, 1
  %i.bp = load i32, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.not = icmp ult i32 %.065273, %i.bp
  br i1 %.not.not, label %.lr.ph, label %.preheader233.loopexit, !llvm.loop !260

.lr.ph286:                                        ; preds = %.preheader233, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89
  %i.bq = phi ptr [ %i.he, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89 ], [ %i.aj, %.preheader233 ]
  %i.br = phi i64 [ %i.hc, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89 ], [ %i.ah, %.preheader233 ] ; 3 uses
  %.064285 = phi i32 [ %.064, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89 ], [ %.lcssa264, %.preheader233 ]
  %.sroa.0184.1284 = phi ptr [ %.sroa.0184.2, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89 ], [ %.sroa.0184.0.lcssa, %.preheader233 ] ; 12 uses
  %.sroa.26.1283 = phi ptr [ %.sroa.26.2, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89 ], [ %.sroa.26.0.lcssa, %.preheader233 ] ; 12 uses
  %.sroa.49.1282 = phi ptr [ %.sroa.49.2, %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89 ], [ %.sroa.49.0.lcssa, %.preheader233 ] ; 6 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !75
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.e, label %.lr.ph286._crit_edge

.lr.ph286._crit_edge:                             ; preds = %.lr.ph286
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.pre305 = load ptr, ptr %.phi.trans.insert304, align 8, !tbaa !43
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph286
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !42 ; 3 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !43 ; 4 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp eq i64 %i.cd, 8
  br i1 %i.ce, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !49
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !41
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.not.i82 = icmp eq ptr %.sroa.26.1283, %.sroa.49.1282
  br i1 %.not.i82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.r, ptr %.sroa.26.1283, align 8, !tbaa !158
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.26.1283, i64 8
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89

bb.i:                                             ; preds = %bb.g
  %i.cj = ptrtoint ptr %.sroa.26.1283 to i64
  %i.ck = ptrtoint ptr %.sroa.0184.1284 to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 6 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.j, label %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i83

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i83: ; preds = %bb.i
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i84 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i84, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i85 = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i85)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cl ; 2 uses
  store ptr %i.r, ptr %i.cu, align 8, !tbaa !158
  %i.cv = icmp sgt i64 %i.cl, 0
  br i1 %i.cv, label %bb.k, label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i88

bb.k:                                             ; preds = %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i83
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr align 8 %.sroa.0184.1284, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i88

_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i88: ; preds = %bb.k, %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i83
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.1284, i64 noundef %i.cl) #30
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89

bb.l:                                             ; preds = %.lr.ph286._crit_edge, %bb.f, %bb.e
  %i.cy = phi ptr [ %.pre305, %.lr.ph286._crit_edge ], [ %i.ca, %bb.f ], [ %i.ca, %bb.e ]
  %i.cz = phi ptr [ %.pre, %.lr.ph286._crit_edge ], [ %i.bz, %bb.f ], [ %i.bz, %bb.e ]
  %i.da = icmp eq ptr %i.cz, %i.cy
  br i1 %i.da, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not.i90 = icmp eq ptr %.sroa.26.1283, %.sroa.49.1282
  br i1 %.not.i90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.r, ptr %.sroa.26.1283, align 8, !tbaa !158
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.26.1283, i64 8
  br label %_ZNSt6vectorIP10Abc_Obj_t_SaIS1_EE9push_backERKS1_.exit89

bb.o:                                             ; preds = %bb.m
  %i.dc = ptrtoint ptr %.sroa.26.1283 to i64
  %i.dd = ptrtoint ptr %.sroa.0184.1284 to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.p, label %_ZNKSt6vectorIP10Abc_Obj_t_SaIS1_EE12_M_check_lenEmPKc.exit.i.i91

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

end_hunk_2
