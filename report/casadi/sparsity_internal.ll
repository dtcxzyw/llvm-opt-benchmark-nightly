Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZNK6casadi16SparsityInternal3sccERSt6vectorIxSaIxEES4_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8    ; 4 uses
  %i.r = and i64 %i.q, 8646911284551352320
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %i.s = shl i64 %i.q, 4
  %i.t = or disjoint i64 %i.s, 8                  ; 3 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28
          to label %.noexc103 unwind label %bb.t  ; 10 uses

.noexc103:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.u, align 8, !tbaa !8
  %i.v = icmp eq i64 %i.q, 0
  br i1 %i.v, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc103
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc103
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8    ; 3 uses
  %i.aa = add nsw i64 %i.z, 1                     ; 4 uses
  %i.ab = icmp ugt i64 %i.aa, 1152921504606846975
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104

bb.h:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc109 unwind label %bb.u

.noexc109:                                        ; preds = %bb.h
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104: ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i105 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i105, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104
  %i.ac = shl nuw nsw i64 %i.aa, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #28
          to label %.noexc110 unwind label %bb.u  ; 4 uses

.noexc110:                                        ; preds = %bb.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !65
  store i64 0, ptr %i.ad, align 8, !tbaa !8
  %i.ag = getelementptr i8, ptr %i.ad, i64 8      ; 3 uses
  %i.ah = icmp eq i64 %i.z, 0
  br i1 %i.ah, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106: ; preds = %.noexc110
  %.idx.i.i.i.i.i.i.i107 = shl nuw nsw i64 %i.z, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i107, i1 false), !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i.i.i.i.i107
  br label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106, %.noexc110
  %.0.i.i.i.i.i108 = phi ptr [ %i.ai, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106 ], [ %i.ag, %.noexc110 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i108, ptr %i.aj, align 8, !tbaa !66
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !61  ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8  ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 3 uses
  %i.au = icmp ugt i64 %i.am, %i.at
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.av = sub nuw i64 %i.am, %i.at
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.av)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge unwind label %bb.v

._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge:    ; preds = %bb.j
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !61  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre205 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.aw = icmp ult i64 %i.am, %i.at
  br i1 %i.aw, label %bb.l, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.l
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i, %bb.l, %bb.k
  %i.ay = phi i64 [ %.pre205, %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge ], [ %i.am, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.am, %bb.l ], [ %i.am, %bb.k ]
  %i.az = phi ptr [ %.pre, %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge ], [ %i.ak, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ak, %bb.l ], [ %i.ak, %bb.k ] ; 3 uses
  %i.ba = add nsw i64 %i.ay, 6                    ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3                 ; 3 uses
  %i.bi = icmp ugt i64 %i.ba, %i.bh
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.bj = sub nuw i64 %i.ba, %i.bh
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bj)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge unwind label %bb.v

._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge: ; preds = %bb.m
  %.pre206 = load ptr, ptr %i.n, align 8, !tbaa !61
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116

bb.n:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.bk = icmp ult i64 %i.ba, %i.bh
  br i1 %i.bk, label %bb.o, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ba ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i113, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114:     ; preds = %bb.o
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116

_ZNSt6vectorIxSaIxEE6resizeEm.exit116:            ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114, %bb.o, %bb.n
  %i.bm = phi ptr [ %.pre206, %._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge ], [ %i.az, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114 ], [ %i.az, %bb.o ], [ %i.az, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8  ; 5 uses
  store ptr null, ptr %7, align 8, !tbaa !143
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !152
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i32 0, ptr %i.br, align 8, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !153
  %.not.i.i117 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i117, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit116
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.p:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit116
  %i.bu = add i64 %i.bo, 63                       ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 2305843009213693944
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit unwind label %bb.q ; 12 uses

bb.q:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !143   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %.body118, label %.body118.sink.split

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.p
  %i.ca = lshr i64 %i.bu, 6                       ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !153
  store ptr %i.bx, ptr %7, align 8
  store i32 0, ptr %i.bp, align 8
  %i.cc = sdiv i64 %i.bo, 64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cc
  %i.ce = and i64 %i.bo, -9223372036854775745
  %i.cf = icmp ugt i64 %i.ce, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.cf, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cd, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.cg = trunc i64 %i.bo to i32
  %i.ch = and i32 %i.cg, 63                       ; 2 uses
  %8 = ptrtoint ptr %storemerge.i.i.i.i.i to i64
  store i64 %8, ptr %i.bq, align 8
  store i32 %i.ch, ptr %i.br, align 8
  %.idx.i = shl nuw nsw i64 %i.ca, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %.idx.i, i1 false)
  %.pre207 = load ptr, ptr %i.n, align 8, !tbaa !61 ; 8 uses
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %.pre207, i64 8
  %.pre209 = load i64, ptr %.phi.trans.insert208, align 8, !tbaa !8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre207, i64 8 ; 5 uses
  %i.cj = icmp sgt i64 %.pre209, 0
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre207, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %4, align 8               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cl, %i.cn
  %i.cp = load ptr, ptr %6, align 8               ; 2 uses
  br label %bb.w

._crit_edge.loopexit:                             ; preds = %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %i.bq, align 8
  %.sroa.2.0.copyload.i.pre = load i32, ptr %i.br, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.i.pre, %._crit_edge.loopexit ], [ %i.ch, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ] ; 4 uses
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.pre, %._crit_edge.loopexit ], [ %storemerge.i.i.i.i.i, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ] ; 4 uses
  %.not.i.i.i122 = icmp eq ptr %i.bx, %.sroa.0.0.copyload.i
  br i1 %.not.i.i.i122, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.cq = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.cr = ptrtoint ptr %i.bx to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %i.cs, i1 false)
  %.not27.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.r
  %i.ct = sub i32 64, %.sroa.2.0.copyload.i
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = lshr i64 -1, %i.cu
  %i.cw = xor i64 %i.cv, -1
  %i.cx = load i64, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !146
  %i.cy = and i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !146
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.s:                                             ; preds = %._crit_edge
  %.not25.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i, 0
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i:           ; preds = %bb.s
  %i.cz = sub i32 64, %.sroa.2.0.copyload.i
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 -1, %i.da
  %i.dc = xor i64 %i.db, -1
  %i.dd = load i64, ptr %i.bx, align 8, !tbaa !146
  %i.de = and i64 %i.dd, %i.dc
  store i64 %i.de, ptr %i.bx, align 8, !tbaa !146
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.t:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.g
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.u:                                             ; preds = %bb.i, %bb.h
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit144

bb.v:                                             ; preds = %bb.m, %bb.j
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.w:                                             ; preds = %.lr.ph, %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit
  %i.di = phi i64 [ %.pre209, %.lr.ph ], [ %i.fi, %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit ] ; 2 uses
  %.086174 = phi i64 [ %.pre209, %.lr.ph ], [ %.187, %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit ] ; 2 uses
  %.090173 = phi i64 [ 0, %.lr.ph ], [ %i.fj, %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit ] ; 4 uses
  %i.dj = lshr i64 %.090173, 6
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dj
  %i.dl = and i64 %.090173, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = load i64, ptr %i.dk, align 8, !tbaa !146
  %i.do = and i64 %i.dn, %i.dm
  %.not164 = icmp eq i64 %i.do, 0
  br i1 %.not164, label %bb.x, label %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr [8 x i8], ptr %.pre207, i64 %i.di
  %i.dq = getelementptr i8, ptr %i.dp, i64 24
  store i64 %.090173, ptr %i.u, align 8, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.ai, %bb.x
  %.04576.i = phi i64 [ 0, %bb.x ], [ %.4.i, %bb.ai ] ; 5 uses
  %.04875.i = phi i64 [ %.086174, %bb.x ], [ %.149.i, %bb.ai ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04576.i
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !8  ; 6 uses
  br i1 %i.co, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dv = phi i64 [ %i.du, %bb.z ], [ %i.ds, %bb.y ] ; 4 uses
  %i.dw = sdiv i64 %i.ds, 64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.dw
  %i.dy = and i64 %i.ds, -9223372036854775745
  %i.dz = icmp ugt i64 %i.dy, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.dz, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.dx, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.ea = and i64 %i.ds, 63
  %i.eb = shl nuw i64 1, %i.ea                    ; 2 uses
  %i.ec = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !146 ; 2 uses
  %i.ed = and i64 %i.ec, %i.eb
  %.not.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ee = or i64 %i.ec, %i.eb
  store i64 %i.ee, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !146
  %i.ef = icmp slt i64 %i.dv, 0
  br i1 %i.ef, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dv
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ei = phi i64 [ %i.eh, %bb.ac ], [ 0, %bb.ab ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.04576.i
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %i.ek = icmp slt i64 %i.dv, 0
  br i1 %i.ek, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eo = phi i64 [ %i.en, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.04576.i ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !8  ; 2 uses
  %i.er = icmp slt i64 %i.eq, %i.eo
  br i1 %i.er, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ag, %bb.ah
  %.04374.i = phi i64 [ %i.fd, %bb.ah ], [ %i.eq, %bb.ag ] ; 3 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %.04374.i
  %i.et = load i64, ptr %i.es, align 8, !tbaa !8  ; 4 uses
  %i.eu = sdiv i64 %i.et, 64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.eu
  %i.ew = and i64 %i.et, -9223372036854775745
  %i.ex = icmp ugt i64 %i.ew, -9223372036854775808
  %storemerge.idx.i.i.i.i.i56.i = select i1 %i.ex, i64 -8, i64 0
  %storemerge.i.i.i.i.i57.i = getelementptr inbounds i8, ptr %i.ev, i64 %storemerge.idx.i.i.i.i.i56.i
  %i.ey = and i64 %i.et, 63
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = load i64, ptr %storemerge.i.i.i.i.i57.i, align 8, !tbaa !146
  %i.fb = and i64 %i.ez, %i.fa
  %.not72.i = icmp eq i64 %i.fb, 0
  br i1 %.not72.i, label %.thread68.i, label %bb.ah

.thread68.i:                                      ; preds = %.lr.ph.i
  store i64 %.04374.i, ptr %i.ep, align 8, !tbaa !8
  %i.fc = add nuw nsw i64 %.04576.i, 1            ; 2 uses
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i
  %i.fd = add i64 %.04374.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fd, %i.eo
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !147

._crit_edge.i:                                    ; preds = %bb.ah, %bb.ag
  %i.fe = add nsw i64 %.04576.i, -1
  %i.ff = add nsw i64 %.04875.i, -1               ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %.thread68.i
  %.sink85.i = phi i64 [ %i.fc, %.thread68.i ], [ %i.ff, %._crit_edge.i ]
  %.lcssa.sink.i = phi i64 [ %i.et, %.thread68.i ], [ %i.ds, %._crit_edge.i ]
  %.149.i = phi i64 [ %.04875.i, %.thread68.i ], [ %i.ff, %._crit_edge.i ] ; 2 uses
  %.4.i = phi i64 [ %i.fc, %.thread68.i ], [ %i.fe, %._crit_edge.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sink85.i
  store i64 %.lcssa.sink.i, ptr %i.fg, align 8, !tbaa !8
  %i.fh = icmp sgt i64 %.4.i, -1
  br i1 %i.fh, label %bb.y, label %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit.loopexit, !llvm.loop !148

_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit.loopexit: ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@_ZNK6casadi16SparsityInternal14_appendColumnsERKS0_:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !90
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.t
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.t ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ] ; 2 uses
  %.624 = phi i1 [ true, %bb.t ], [ %.523, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.523, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.be = load ptr, ptr %12, align 8, !tbaa !84   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !90
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.s
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.s ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ] ; 2 uses
  %.725 = phi i1 [ true, %bb.s ], [ %.624, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.624, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ] ; 2 uses
  %i.bj = load ptr, ptr %13, align 8, !tbaa !84   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !90
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.r ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %.826 = phi i1 [ true, %bb.r ], [ %.725, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.725, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %i.bo = load ptr, ptr %14, align 8, !tbaa !84   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !90
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.q ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  %.927 = phi i1 [ true, %bb.q ], [ %.826, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.826, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bt = load ptr, ptr %4, align 8, !tbaa !84    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !90
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.p ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 4 uses
  %.1028 = phi i1 [ true, %bb.p ], [ %.927, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.927, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 2 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !90
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.cd = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.thread: ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.thread
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !90
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !90
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cn) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.1028, label %bb.aa, label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.1028, label %bb.aa, label %bb.ax

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn114.ph = phi { ptr, i32 } [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn114 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn114.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.ax

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8, !noalias !492 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.d, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 24     ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cp
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !8, !noalias !492 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !492
  %.idx.i = shl nsw i64 %i.cu, 3                  ; 6 uses
  %i.cv = icmp ugt i64 %.idx.i, 9223372036854775800
  br i1 %i.cv, label %.noexc.i.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !492
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.ab
  %.not.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !65, !alias.scope !492
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #28, !noalias !492 ; 6 uses
  store ptr %i.cy, ptr %17, align 8, !tbaa !61, !alias.scope !492
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !65, !alias.scope !492
  %i.db = icmp samesign ugt i64 %.idx.i, 8
  br i1 %i.db, label %bb.ac, label %bb.ad, !prof !117

bb.ac:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr align 8 %i.cr, i64 %.idx.i, i1 false), !noalias !492
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.dc = load i64, ptr %i.cr, align 8, !tbaa !8, !noalias !492
  store i64 %i.dc, ptr %i.cy, align 8, !tbaa !8, !noalias !492
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNK6casadi16SparsityInternal7get_rowEv.exit:     ; preds = %.thread.i.i.i, %bb.ac, %bb.ad
  %i.dd = phi ptr [ %i.cy, %bb.ac ], [ null, %.thread.i.i.i ], [ %i.cy, %bb.ad ] ; 2 uses
  %i.de = phi ptr [ %i.cz, %bb.ac ], [ %i.cw, %.thread.i.i.i ], [ %i.cz, %bb.ad ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.de, ptr %i.df, align 8, !tbaa !66, !alias.scope !492
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !83  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !8  ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.dg, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 24     ; 2 uses
  %19 = ptrtoint ptr %i.de to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.di
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !8
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dn
  %i.dp = ptrtoint ptr %i.dd to i64
  %i.dq = sub i64 %19, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dd, i64 %i.dq
  invoke void @_ZNSt6vectorIxSaIxEE15_M_range_insertIPKxEEvN9__gnu_cxx17__normal_iteratorIPxS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.dr, ptr noundef %i.dk, ptr noundef %i.do)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !83, !noalias !495 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !8, !noalias !495 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !495
  %.idx.i95 = shl nsw i64 %i.dv, 3
  %i.dw = add nsw i64 %.idx.i95, 8                ; 5 uses
  %i.dx = icmp ugt i64 %i.dw, 9223372036854775800
  br i1 %i.dx, label %.noexc.i.i100, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i96

.noexc.i.i100:                                    ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %.noexc.i.i100
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i96: ; preds = %bb.ae
  %.not.i.i.i.i97 = icmp eq i64 %i.dv, -1
  br i1 %.not.i.i.i.i97, label %.thread.i.i.i99, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i98

.thread.i.i.i99:                                  ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i96
  %i.dy = getelementptr inbounds nuw i8, ptr null, i64 %i.dw ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !65, !alias.scope !495
  br label %bb.ah

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i98: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i96
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #28
          to label %.noexc101 unwind label %bb.ap ; 6 uses

.noexc101:                                        ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i98
  store ptr %i.ea, ptr %18, align 8, !tbaa !61, !alias.scope !495
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dw ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !65, !alias.scope !495
  %i.ed = icmp sgt i64 %i.dv, 0
  br i1 %i.ed, label %bb.af, label %bb.ag, !prof !117

bb.af:                                            ; preds = %.noexc101
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dt, i64 %i.dw, i1 false), !noalias !495
  br label %bb.ah

bb.ag:                                            ; preds = %.noexc101
  %i.ee = load i64, ptr %i.dt, align 8, !tbaa !8, !noalias !495
  store i64 %i.ee, ptr %i.ea, align 8, !tbaa !8, !noalias !495
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.thread.i.i.i99
  %i.ef = phi ptr [ %i.ea, %bb.af ], [ null, %.thread.i.i.i99 ], [ %i.ea, %bb.ag ] ; 8 uses
  %i.eg = phi ptr [ %i.eb, %bb.af ], [ %i.dy, %.thread.i.i.i99 ], [ %i.eb, %bb.ag ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !66, !alias.scope !495
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !83  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !61  ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !8
  %i.ep = add i64 %i.em, 1
  %i.eq = add i64 %i.ep, %i.eo                    ; 4 uses
  %i.er = ptrtoint ptr %i.eg to i64
  %i.es = ptrtoint ptr %i.ef to i64               ; 4 uses
  %i.et = sub i64 %i.er, %i.es                    ; 5 uses
  %i.eu = ashr exact i64 %i.et, 3                 ; 7 uses
  %i.ev = icmp ugt i64 %i.eq, %i.eu
  br i1 %i.ev, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.ew = sub nuw i64 %i.eq, %i.eu                ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ey = icmp ult i64 %i.eu, 1152921504606846976
  call void @llvm.assume(i1 %i.ey)
  %i.ez = xor i64 %i.eu, 1152921504606846975
  %i.fa = icmp ult i64 %i.ez, %i.ew
  br i1 %i.fa, label %bb.aj, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc109 unwind label %bb.aq

.noexc109:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ai
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ew)
  %i.fb = add nuw nsw i64 %.sroa.speculated.i.i, %i.eu
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975) ; 2 uses
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #28
          to label %.noexc110 unwind label %bb.aq ; 6 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.et ; 3 uses
  store i64 0, ptr %i.ff, align 8, !tbaa !8
  %i.fg = add nsw i64 %i.ew, -1                   ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc110
  %i.fi = getelementptr i8, ptr %i.ff, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.fg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !8
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc110
  %i.fj = icmp sgt i64 %i.et, 0
  br i1 %i.fj, label %bb.ak, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

bb.ak:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr align 8 %i.ef, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i: ; preds = %bb.ak, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.ef, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.et) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i: ; preds = %bb.al, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  store ptr %i.fe, ptr %18, align 8, !tbaa !61
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ew ; 2 uses
  store ptr %i.fk, ptr %i.eh, align 8, !tbaa !66
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fc
  store ptr %i.fl, ptr %i.ex, align 8, !tbaa !65
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !61
  %.pre129.a = ptrtoint ptr %i.fe to i64
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.am:                                            ; preds = %bb.ah
  %i.fm = icmp ult i64 %i.eq, %i.eu
  br i1 %i.fm, label %bb.an, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eq ; 3 uses
  %.not.i.i = icmp eq ptr %i.eg, %i.fn
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.fn, ptr %i.eh, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i
  %.pre-phi = phi i64 [ %i.es, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.es, %bb.an ], [ %i.es, %bb.am ], [ %.pre129.a, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ]
  %i.fo = phi ptr [ %i.ef, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ef, %bb.an ], [ %i.ef, %bb.am ], [ %i.fe, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 3 uses
  %i.fp = phi ptr [ %i.fn, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.eg, %bb.an ], [ %i.eg, %bb.am ], [ %i.fk, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ]
  %i.fq = phi ptr [ %i.ek, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ek, %bb.an ], [ %i.ek, %bb.am ], [ %.pre, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 5 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !8  ; 5 uses
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.ft, %.pre-phi
  %i.fv = ashr exact i64 %i.fu, 3                 ; 4 uses
  %.0126 = add nsw i64 %i.fs, 1                   ; 4 uses
  %i.fw = icmp ult i64 %.0126, %i.fv
  br i1 %i.fw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 3 uses
  %i.fy = add nsw i64 %i.fv, -2
  %i.fz = sub i64 %i.fs, %i.fv
  %i.ga = and i64 %i.fz, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ga, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.gb = load i64, ptr %i.fr, align 8, !tbaa !8  ; 2 uses
  %i.gc = sub nsw i64 %.0126, %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !8
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gb
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !8
  %i.gh = add nsw i64 %i.gg, %i.ge
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.0126
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !8
  %.0.prol = add nsw i64 %i.fs, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.0127.unr = phi i64 [ %.0126, %.lr.ph ], [ %.0.prol, %.prol.loopexit.unr-lcssa ]
  %i.gj = icmp eq i64 %i.fy, %i.fs
  br i1 %i.gj, label %._crit_edge.loopexit, label %.lr.ph.new

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre128 = load i64, ptr %i.fr, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.gk = phi i64 [ %.pre128, %._crit_edge.loopexit ], [ %i.fs, %_ZNSt6vectorIxSaIxEE6resizeEm.exit ]
end_hunk_1
begin_hunk_2_@_ZN6casadi14message_prefixERSo:bb.a
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.et)
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !59
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef signext i8 %i.ey(ptr noundef nonnull align 8 dereferenceable(570) %i.et, i8 noundef signext 32), !inline_history !606 ; 0 uses
  %.pre53.pre = load ptr, ptr %0, align 8, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i48

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i48: ; preds = %bb.z, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i46
  %.pre53 = phi ptr [ %.pre53.pre, %bb.z ], [ %i.el, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i46 ]
  store i8 1, ptr %i.ep, align 1, !tbaa !603
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit49

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit49: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i48
  %i.fa = phi ptr [ %i.el, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44 ], [ %.pre53, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i48 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 224
  store i8 48, ptr %i.fb, align 8, !tbaa !607
  %i.fc = getelementptr i8, ptr %i.fa, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %0, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 2, ptr %i.ff, align 8, !tbaa !602
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.010.0.copyload) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal13largest_firstEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83, !noalias !608 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8, !noalias !608 ; 3 uses
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = add nsw i64 %.idx.i, 8                   ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !608
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28, !noalias !608 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 2 uses
  %i.k = icmp sgt i64 %i.e, 0
  br i1 %i.k, label %bb.b, label %bb.c, !prof !117

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.c, i64 %i.f, i1 false), !noalias !608
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.l = load i64, ptr %i.c, align 8, !tbaa !8, !noalias !608
  store i64 %i.l, ptr %i.i, align 8, !tbaa !8, !noalias !608
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNK6casadi16SparsityInternal10get_colindEv.exit: ; preds = %.thread.i.i.i, %bb.b, %bb.c
  %.sroa.23.1 = phi ptr [ %i.h, %.thread.i.i.i ], [ %i.j, %bb.b ], [ %i.j, %bb.c ] ; 7 uses
  %.sroa.0120.1 = phi ptr [ null, %.thread.i.i.i ], [ %i.i, %bb.b ], [ %i.i, %bb.c ] ; 11 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6casadi16SparsityInternal10get_colindEv.exit
  %.pre = load i64, ptr %.sroa.0120.1, align 8, !tbaa !8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK6casadi16SparsityInternal10get_colindEv.exit
  %.0135.lcssa = phi i64 [ 0, %_ZNK6casadi16SparsityInternal10get_colindEv.exit ], [ %.sroa.speculated, %.lr.ph ] ; 8 uses
  %.lcssa138 = phi i64 [ %i.o, %_ZNK6casadi16SparsityInternal10get_colindEv.exit ], [ %i.at, %.lr.ph ] ; 4 uses
  %i.q = ptrtoint ptr %.sroa.23.1 to i64
  %i.r = ptrtoint ptr %.sroa.0120.1 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 7 uses
  %i.u = icmp ugt i64 %.lcssa138, %i.t
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %._crit_edge
  %i.v = sub nuw i64 %.lcssa138, %i.t             ; 4 uses
  %i.w = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %i.x = xor i64 %i.t, 1152921504606846975
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc62 unwind label %bb.k

.noexc62:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.v)
  %i.z = add nuw nsw i64 %.sroa.speculated.i.i, %i.t
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975) ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #28
          to label %.noexc63 unwind label %bb.k   ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.s ; 3 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !8
  %i.ae = add nsw i64 %i.v, -1                    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc63
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !8
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc63
  %i.ah = icmp sgt i64 %i.s, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %.sroa.0120.1, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i: ; preds = %bb.f, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0120.1, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.1, i64 noundef %i.s) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i: ; preds = %bb.g, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.v
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ak = icmp ult i64 %.lcssa138, %i.t
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.1, i64 %.lcssa138 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.23.1, %i.al
  %spec.select = select i1 %.not.i.i, ptr %.sroa.23.1, ptr %i.al
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.am = phi i64 [ %i.ap, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.0140 = phi i64 [ %i.an, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0135139 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.an = add nuw nsw i64 %.0140, 1               ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.1, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !8  ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.1, i64 %.0140
  %i.ar = sub nsw i64 %i.ap, %i.am                ; 2 uses
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !8
  %i.as = add nsw i64 %i.ar, 1
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %.0135139, i64 %i.as) ; 2 uses
  %i.at = load i64, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %i.au = icmp slt i64 %i.an, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !611

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i
  %.sroa.23.2 = phi ptr [ %.sroa.23.1, %bb.h ], [ %.sroa.23.1, %bb.i ], [ %i.aj, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 3 uses
  %.sroa.16.0 = phi ptr [ %.sroa.23.1, %bb.h ], [ %spec.select, %bb.i ], [ %i.ai, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 2 uses
  %.sroa.0120.2 = phi ptr [ %.sroa.0120.1, %bb.h ], [ %.sroa.0120.1, %bb.i ], [ %i.ac, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 10 uses
  %i.av = add nuw nsw i64 %.0135.lcssa, 1         ; 8 uses
  %i.aw = icmp ugt i64 %.0135.lcssa, 1152921504606846974
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.ax = shl nuw nsw i64 %i.av, 3                ; 6 uses
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #28
          to label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit unwind label %bb.l ; 22 uses

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit:            ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i8 0, i64 %i.ax, i1 false), !tbaa !8
  %.idx = shl nuw nsw i64 %i.av, 3                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax ; 2 uses
  %2 = ptrtoint ptr %.sroa.0120.2 to i64
  %.not142 = icmp eq ptr %.sroa.0120.2, %.sroa.16.0
  br i1 %.not142, label %.preheader, label %.lr.ph144

.preheader:                                       ; preds = %bb.n, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %.not179 = icmp eq i64 %.0135.lcssa, 0
  br i1 %.not179, label %._crit_edge147, label %.lr.ph146.preheader

.lr.ph146.preheader:                              ; preds = %.preheader
  %.pre153 = load i64, ptr %i.ay, align 8, !tbaa !8 ; 2 uses
  %xtraiter = and i64 %.0135.lcssa, 3             ; 3 uses
  %i.bb = icmp ult i64 %.0135.lcssa, 4
  br i1 %i.bb, label %.lr.ph146.epil.preheader, label %.lr.ph146.preheader.new

.lr.ph146.preheader.new:                          ; preds = %.lr.ph146.preheader
  %unroll_iter = and i64 %.0135.lcssa, 1152921504606846972
  br label %.lr.ph146

bb.k:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit59

bb.l:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit59

.lr.ph144:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit, %bb.n
  %.sroa.092.0143 = phi ptr [ %i.bj, %bb.n ], [ %.sroa.0120.2, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit ] ; 2 uses
  %i.be = load i64, ptr %.sroa.092.0143, align 8, !tbaa !8
  %i.bf = add nsw i64 %i.be, 1                    ; 3 uses
  %.not.i.i37.not = icmp ugt i64 %i.bf, %.0135.lcssa
  br i1 %.not.i.i37.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph144
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.156, i64 noundef %i.bf, i64 noundef %i.av) #27
          to label %.noexc38 unwind label %bb.o

.noexc38:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.lr.ph144
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !8
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.092.0143, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %.sroa.16.0
  br i1 %.not, label %.preheader, label %.lr.ph144, !llvm.loop !612

bb.o:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit57

._crit_edge147.loopexit.unr-lcssa:                ; preds = %.lr.ph146
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge147, label %.lr.ph146.epil.preheader

.lr.ph146.epil.preheader:                         ; preds = %._crit_edge147.loopexit.unr-lcssa, %.lr.ph146.preheader
  %.epil.init = phi i64 [ %.pre153, %.lr.ph146.preheader ], [ %i.cr, %._crit_edge147.loopexit.unr-lcssa ]
  %.022145.epil.init = phi i64 [ 0, %.lr.ph146.preheader ], [ %i.co, %._crit_edge147.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph146.epil

.lr.ph146.epil:                                   ; preds = %.lr.ph146.epil, %.lr.ph146.epil.preheader
  %i.bl = phi i64 [ %i.bp, %.lr.ph146.epil ], [ %.epil.init, %.lr.ph146.epil.preheader ]
  %.022145.epil = phi i64 [ %i.bm, %.lr.ph146.epil ], [ %.022145.epil.init, %.lr.ph146.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph146.epil ], [ 0, %.lr.ph146.epil.preheader ]
  %i.bm = add nuw nsw i64 %.022145.epil, 1        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8
  %i.bp = add nsw i64 %i.bo, %i.bl                ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge147, label %.lr.ph146.epil, !llvm.loop !613

._crit_edge147:                                   ; preds = %._crit_edge147.loopexit.unr-lcssa, %.lr.ph146.epil, %.preheader
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !8  ; 5 uses
  %i.bt = icmp ugt i64 %i.bs, 1152921504606846975
  br i1 %i.bt, label %bb.p, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39

bb.p:                                             ; preds = %._crit_edge147
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc42 unwind label %bb.v

.noexc42:                                         ; preds = %bb.p
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39: ; preds = %._crit_edge147
  %.not.i.i.i.i40 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i40, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39
  %i.bu = shl nuw nsw i64 %i.bs, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #28
          to label %.noexc43 unwind label %bb.v   ; 5 uses

.noexc43:                                         ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bs ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !8
  %i.bx = getelementptr i8, ptr %i.bv, i64 8      ; 3 uses
  %i.by = add nsw i64 %i.bs, -1                   ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc43
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.by, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

.lr.ph146:                                        ; preds = %.lr.ph146, %.lr.ph146.preheader.new
  %i.cb = phi i64 [ %.pre153, %.lr.ph146.preheader.new ], [ %i.cr, %.lr.ph146 ]
  %.022145 = phi i64 [ 0, %.lr.ph146.preheader.new ], [ %i.co, %.lr.ph146 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph146.preheader.new ], [ %niter.next.3, %.lr.ph146 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.022145
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !8
  %i.cf = add nsw i64 %i.ce, %i.cb                ; 2 uses
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.022145
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !8
  %i.cj = add nsw i64 %i.ci, %i.cf                ; 2 uses
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.022145
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !8
  %i.cn = add nsw i64 %i.cm, %i.cj                ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !8
  %i.co = add nuw nsw i64 %.022145, 4             ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !8
  %i.cr = add nsw i64 %i.cq, %i.cn                ; 3 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !8
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge147.loopexit.unr-lcssa, label %.lr.ph146, !llvm.loop !614

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc43, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39
  %.sroa.083.0 = phi ptr [ %i.bv, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bv, %.noexc43 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ] ; 10 uses
  %.sroa.14.0 = phi ptr [ %i.bw, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bw, %.noexc43 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ca, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bx, %.noexc43 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ]
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !8  ; 5 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph149.preheader, label %._crit_edge150

.lr.ph149.preheader:                              ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %xtraiter188 = and i64 %i.cu, 1
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph149.prol.loopexit, label %.lr.ph149.prol

.lr.ph149.prol:                                   ; preds = %.lr.ph149.preheader
  %.021.prol = add nsw i64 %i.cu, -1              ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.2, i64 %.021.prol
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cx ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %i.da = add nsw i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.cz
  store i64 %.021.prol, ptr %i.db, align 8, !tbaa !8
  br label %.lr.ph149.prol.loopexit

.lr.ph149.prol.loopexit:                          ; preds = %.lr.ph149.prol, %.lr.ph149.preheader
  %.021.in148.unr = phi i64 [ %i.cu, %.lr.ph149.preheader ], [ %.021.prol, %.lr.ph149.prol ]
  %i.dc = icmp eq i64 %i.cu, 1
  br i1 %i.dc, label %._crit_edge150, label %.lr.ph149

._crit_edge150:                                   ; preds = %.lr.ph149.prol.loopexit, %.lr.ph149, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.de = ptrtoint ptr %.sroa.083.0 to i64        ; 3 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = ashr exact i64 %i.df, 3                 ; 8 uses
  %i.dh = icmp ugt i64 %i.dg, %i.av
  br i1 %i.dh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge150
  %i.di = sub nuw nsw i64 %i.dg, %i.av            ; 4 uses
  %i.dj = xor i64 %i.av, 1152921504606846975
  %i.dk = icmp ult i64 %i.dj, %i.di
  br i1 %i.dk, label %bb.s, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc78 unwind label %bb.ad

.noexc78:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70: ; preds = %bb.r
  %.sroa.speculated.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.di)
  %i.dl = add nuw nsw i64 %.sroa.speculated.i.i71, %i.av
end_hunk_2
begin_hunk_3_@_ZNK6casadi16SparsityInternal13largest_firstEv:bb.a
_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72: ; preds = %.noexc79
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  %.idx.i.i.i.i.i31.i73 = shl nuw nsw i64 %i.dq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %.idx.i.i.i.i.i31.i73, i1 false), !tbaa !8
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72, %.noexc79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ax, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %.idx) #30
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.di
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47

bb.t:                                             ; preds = %._crit_edge150
  %.not180 = icmp ugt i64 %i.dg, %.0135.lcssa
  br i1 %.not180, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.df
  %.not.i.i44 = icmp samesign eq i64 %i.ax, %i.df
  %spec.select136 = select i1 %.not.i.i44, ptr %i.ba, ptr %i.dv
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47

bb.v:                                             ; preds = %bb.q, %bb.p
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit57

.lr.ph149:                                        ; preds = %.lr.ph149.prol.loopexit, %.lr.ph149
  %.021.in148 = phi i64 [ %.021.1, %.lr.ph149 ], [ %.021.in148.unr, %.lr.ph149.prol.loopexit ] ; 3 uses
  %.021 = add nsw i64 %.021.in148, -1             ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.2, i64 %.021
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dy ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !8  ; 2 uses
  %i.eb = add nsw i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.ea
  store i64 %.021, ptr %i.ec, align 8, !tbaa !8
  %.021.1 = add nsw i64 %.021.in148, -2           ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.2, i64 %.021.1
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ee ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !8  ; 2 uses
  %i.eh = add nsw i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.eg
  store i64 %.021.1, ptr %i.ei, align 8, !tbaa !8
  %i.ej = icmp sgt i64 %.021.in148, 2
  br i1 %i.ej, label %.lr.ph149, label %._crit_edge150, !llvm.loop !615

_ZNSt6vectorIxSaIxEE6resizeEm.exit47:             ; preds = %bb.u, %bb.t, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77
  %.sroa.17.0 = phi ptr [ %i.ba, %bb.t ], [ %spec.select136, %bb.u ], [ %i.dt, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 4 uses
  %.sroa.27.4 = phi ptr [ %i.az, %bb.t ], [ %i.az, %bb.u ], [ %i.du, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 3 uses
  %.sroa.096.4 = phi ptr [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.do, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 7 uses
  %i.ek = ptrtoint ptr %.sroa.17.0 to i64
  %i.el = icmp sgt i64 %i.dg, 0
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit47
  %xtraiter190 = and i64 %i.dg, 7                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.em = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ]
  %.07.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.dg, %.lr.ph.i.i.i.i.i.preheader ]
  %.056.i.i.i.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.083.0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.en = load i64, ptr %.056.i.i.i.i.i.prol, align 8, !tbaa !8, !noalias !616
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 3 uses
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !8, !noalias !616
  %i.ep = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.eq = add nsw i64 %.07.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter190
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !627

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr192 = phi ptr [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eo, %.lr.ph.i.i.i.i.i.prol ]
  %.07.i.i.i.i.i.unr = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %.056.i.i.i.i.i.unr = phi ptr [ %.sroa.083.0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.i.i.prol ]
  %i.er = icmp ult i64 %i.dg, 8
  br i1 %i.er, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.es = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %.unr192, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.07.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %.056.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.et = load i64, ptr %.056.i.i.i.i.i, align 8, !tbaa !8, !noalias !616
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -8
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !8, !noalias !616
  %i.ev = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !8, !noalias !616
  %i.ex = getelementptr inbounds i8, ptr %i.es, i64 -16
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !8, !noalias !616
  %i.ey = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !8, !noalias !616
  %i.fa = getelementptr inbounds i8, ptr %i.es, i64 -24
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !8, !noalias !616
  %i.fb = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !8, !noalias !616
  %i.fd = getelementptr inbounds i8, ptr %i.es, i64 -32
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !8, !noalias !616
  %i.fe = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !8, !noalias !616
  %i.fg = getelementptr inbounds i8, ptr %i.es, i64 -40
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !8, !noalias !616
  %i.fh = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 40
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !8, !noalias !616
  %i.fj = getelementptr inbounds i8, ptr %i.es, i64 -48
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !8, !noalias !616
  %i.fk = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 48
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !8, !noalias !616
  %i.fm = getelementptr inbounds i8, ptr %i.es, i64 -56
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !8, !noalias !616
  %i.fn = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 56
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !8, !noalias !616
  %i.fp = getelementptr inbounds i8, ptr %i.es, i64 -64 ; 2 uses
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !8, !noalias !616
  %i.fq = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 64
  %i.fr = add nsw i64 %.07.i.i.i.i.i, -8
  %i.fs = icmp sgt i64 %.07.i.i.i.i.i, 8
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i, !llvm.loop !628

_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIxSaIxEE6resizeEm.exit47
  %i.ft = ptrtoint ptr %.sroa.096.4 to i64        ; 2 uses
  %i.fu = sub i64 %i.ek, %i.ft                    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i48 = icmp eq ptr %.sroa.17.0, %.sroa.096.4
  br i1 %.not.i.i.i.i48, label %.thread, label %bb.w

.thread:                                          ; preds = %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = getelementptr inbounds i8, ptr null, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !65
  br label %bb.aa

bb.w:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i
  %i.fy = icmp ugt i64 %i.fu, 9223372036854775800
  br i1 %i.fy, label %.noexc.i.i49, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, !prof !272

.noexc.i.i49:                                     ; preds = %bb.w
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc50 unwind label %bb.ad

.noexc50:                                         ; preds = %.noexc.i.i49
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.w
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #28
          to label %.noexc51 unwind label %bb.ad  ; 5 uses

.noexc51:                                         ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.fz, ptr %0, align 8, !tbaa !61
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !66
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fu ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !65
  %i.gd = icmp samesign ugt i64 %i.fu, 8
  br i1 %i.gd, label %bb.x, label %bb.y, !prof !117

bb.x:                                             ; preds = %.noexc51
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fz, ptr nonnull align 8 %.sroa.096.4, i64 %i.fu, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %.noexc51
  %i.ge = icmp eq i64 %i.fu, 8
  br i1 %i.ge, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gf = load i64, ptr %.sroa.096.4, align 8, !tbaa !8
  store i64 %i.gf, ptr %i.fz, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %.thread
  %i.gg = phi ptr [ %i.gb, %bb.x ], [ %i.gb, %bb.y ], [ %i.gb, %bb.z ], [ %i.fw, %.thread ]
  %i.gh = phi ptr [ %i.ga, %bb.x ], [ %i.ga, %bb.y ], [ %i.ga, %bb.z ], [ %i.fv, %.thread ]
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !66
  %.not.i.i.i = icmp eq ptr %.sroa.083.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit53, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gi = ptrtoint ptr %.sroa.14.0 to i64
  %i.gj = sub i64 %i.gi, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.gj) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit53

_ZNSt6vectorIxSaIxEED2Ev.exit53:                  ; preds = %bb.aa, %bb.ab
  %i.gk = ptrtoint ptr %.sroa.27.4 to i64
  %i.gl = sub i64 %i.gk, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.4, i64 noundef %i.gl) #30
  %.not.i.i.i54 = icmp eq ptr %.sroa.0120.2, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIxSaIxEED2Ev.exit55, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit53
  %i.gm = ptrtoint ptr %.sroa.23.2 to i64
  %i.gn = sub i64 %i.gm, %2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.2, i64 noundef %i.gn) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit55

_ZNSt6vectorIxSaIxEED2Ev.exit55:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit53, %bb.ac
  ret void

bb.ad:                                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70, %bb.s, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i49
  %.sroa.27.0 = phi ptr [ %.sroa.27.4, %.noexc.i.i49 ], [ %.sroa.27.4, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ], [ %i.az, %bb.s ], [ %i.az, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70 ] ; 2 uses
  %.sroa.096.0 = phi ptr [ %.sroa.096.4, %.noexc.i.i49 ], [ %.sroa.096.4, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ], [ %i.ay, %bb.s ], [ %i.ay, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70 ] ; 2 uses
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %.sroa.083.0, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIxSaIxEED2Ev.exit57, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = ptrtoint ptr %.sroa.14.0 to i64
  %i.gq = sub i64 %i.gp, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.gq) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit57

_ZNSt6vectorIxSaIxEED2Ev.exit57:                  ; preds = %bb.o, %bb.ae, %bb.ad, %bb.v
  %.sroa.27.2 = phi ptr [ %i.az, %bb.o ], [ %i.az, %bb.v ], [ %.sroa.27.0, %bb.ad ], [ %.sroa.27.0, %bb.ae ]
  %.sroa.096.2 = phi ptr [ %i.ay, %bb.o ], [ %i.ay, %bb.v ], [ %.sroa.096.0, %bb.ad ], [ %.sroa.096.0, %bb.ae ] ; 2 uses
  %.pn30 = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.dw, %bb.v ], [ %i.go, %bb.ad ], [ %i.go, %bb.ae ]
  %i.gr = ptrtoint ptr %.sroa.27.2 to i64
  %i.gs = ptrtoint ptr %.sroa.096.2 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.2, i64 noundef %i.gt) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit59

_ZNSt6vectorIxSaIxEED2Ev.exit59:                  ; preds = %bb.l, %_ZNSt6vectorIxSaIxEED2Ev.exit57, %bb.k
  %.sroa.23.0 = phi ptr [ %.sroa.23.1, %bb.k ], [ %.sroa.23.2, %_ZNSt6vectorIxSaIxEED2Ev.exit57 ], [ %.sroa.23.2, %bb.l ]
  %.sroa.0120.0 = phi ptr [ %.sroa.0120.1, %bb.k ], [ %.sroa.0120.2, %_ZNSt6vectorIxSaIxEED2Ev.exit57 ], [ %.sroa.0120.2, %bb.l ] ; 3 uses
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %.pn30, %_ZNSt6vectorIxSaIxEED2Ev.exit57 ], [ %i.bd, %bb.l ]
  %.not.i.i.i60 = icmp eq ptr %.sroa.0120.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIxSaIxEED2Ev.exit61, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit59
  %i.gu = ptrtoint ptr %.sroa.23.0 to i64
  %i.gv = ptrtoint ptr %.sroa.0120.0 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.0, i64 noundef %i.gw) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit61

_ZNSt6vectorIxSaIxEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit59, %bb.af
  resume { ptr, i32 } %.pn30.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal5pmultERKSt6vectorIxSaIxEEbbb(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0175 = alloca ptr, align 8               ; 11 uses
  %6 = alloca %"class.std::vector", align 8       ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %17 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %27 = alloca %"class.std::vector.10", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0175)
  store ptr null, ptr %.sroa.0175, align 8
  br i1 %5, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.d, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc161 unwind label %bb.e

.noexc161:                                        ; preds = %bb.d
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %.noexc162 unwind label %bb.e  ; 9 uses

.noexc162:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.i, align 8, !tbaa !8
  %i.j = add nsw i64 %i.g, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc162
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !8
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %.noexc162, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store ptr %i.i, ptr %.sroa.0175, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %.pre224 = load ptr, ptr %2, align 8, !tbaa !61 ; 7 uses
  %i.n = icmp eq ptr %.pre, %.pre224
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %.pre227.a = ptrtoint ptr %.pre to i64
  %.pre228 = ptrtoint ptr %.pre224 to i64
  %.pre230 = sub i64 %.pre227.a, %.pre228
  %.pre232 = ashr exact i64 %.pre230, 3           ; 3 uses
  %xtraiter = and i64 %.pre232, 3                 ; 3 uses
  %i.o = icmp ult i64 %.pre232, 4
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.pre232, -4
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit158

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.064214 = phi i64 [ 0, %.lr.ph.new ], [ %i.af, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.pre224, i64 %.064214
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.r
  store i64 %.064214, ptr %i.s, align 8, !tbaa !8
  %i.t = or disjoint i64 %.064214, 1              ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre224, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  store i64 %i.t, ptr %i.w, align 8, !tbaa !8
  %i.x = or disjoint i64 %.064214, 2              ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre224, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.z
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !8
  %i.ab = or disjoint i64 %.064214, 3             ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre224, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ad
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !8
  %i.af = add nuw nsw i64 %.064214, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !629

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.064214.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod298 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod298)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.064214.epil = phi i64 [ %.064214.epil.init, %.epil.preheader ], [ %i.aj, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre224, i64 %.064214.epil
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ah
  store i64 %.064214.epil, ptr %i.ai, align 8, !tbaa !8
  %i.aj = add nuw nsw i64 %.064214.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.g, !llvm.loop !630

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.g, %bb.b, %_ZNSt6vectorIxSaIxEE6resizeEm.exit, %bb.a
  %.sroa.16.0 = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt6vectorIxSaIxEE6resizeEm.exit ], [ null, %bb.b ], [ %i.m, %bb.g ], [ %i.m, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %i.ak = phi ptr [ %2, %bb.a ], [ %.sroa.0175, %_ZNSt6vectorIxSaIxEE6resizeEm.exit ], [ %.sroa.0175, %bb.b ], [ %.sroa.0175, %bb.g ], [ %.sroa.0175, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83, !noalias !631 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !8, !noalias !631
end_hunk_3
