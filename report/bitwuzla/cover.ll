Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/cover?download=true
inline.NumInlined: 936
inline.NumDeleted: 312
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal23cover_propagate_coveredEiRNS_7CoverorE:bb.a
  br i1 %i.ap, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !171
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !172
  %or.cond254 = icmp sgt i8 %i.at, 0
  br i1 %or.cond254, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.d, %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.087159, i64 4 ; 2 uses
  %.not100 = icmp eq ptr %i.au, %i.an
  br i1 %.not100, label %.critedge.critedge, label %.lr.ph

.critedge.critedge:                               ; preds = %.thread
  %i.av = trunc nuw i8 %.084179 to i1
  br i1 %i.av, label %.lr.ph176, label %.lr.ph164

.critedge.thread:                                 ; preds = %bb.c
  %i.aw = trunc nuw i8 %.084179 to i1
  br i1 %i.aw, label %.loopexit, label %._crit_edge165

.lr.ph176:                                        ; preds = %.critedge.critedge, %bb.l
  %.086174 = phi ptr [ %i.ce, %bb.l ], [ %i.aj, %.critedge.critedge ] ; 4 uses
  %i.ax = load i32, ptr %.086174, align 4, !tbaa !168 ; 3 uses
  %i.ay = icmp eq i32 %i.ax, %i.q
  br i1 %i.ay, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph176
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !171
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !172
  %i.bd = icmp slt i8 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !173 ; 4 uses
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !174
  %.not.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !168
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bg, ptr %i.ad, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !175 ; 4 uses
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 5 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bm = ashr exact i64 %i.bk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 2305843009213693951)
  %i.bq = select i1 %i.bo, i64 2305843009213693951, i64 %i.bp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #14 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  %i.bu = load i32, ptr %.086174, align 4, !tbaa !168
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !168
  %i.bv = icmp sgt i64 %i.bk, 0
  br i1 %i.bv, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bh) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bs, ptr %i.ac, align 8, !tbaa !175
  store ptr %i.bw, ptr %i.ad, align 8, !tbaa !173
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.bx, ptr %i.ae, align 8, !tbaa !174
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.by = load i32, ptr %.086174, align 4, !tbaa !168 ; 2 uses
  %i.bz = tail call i8 @llvm.scmp.i8.i32(i32 %i.by, i32 0)
  %i.ca = tail call noundef i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !241
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 %i.bz, ptr %i.cd, align 1, !tbaa !172
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.e, %.lr.ph176
  %i.ce = getelementptr inbounds nuw i8, ptr %.086174, i64 4 ; 2 uses
  %.not104 = icmp eq ptr %i.ce, %i.an
  br i1 %.not104, label %.loopexit, label %.lr.ph176

._crit_edge165:                                   ; preds = %bb.p, %.critedge.thread
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !188 ; 4 uses
  %i.cg = load ptr, ptr %i.ac, align 8, !tbaa !188 ; 4 uses
  %.not147166 = icmp eq ptr %i.cg, %i.cf
  br i1 %.not147166, label %._crit_edge171, label %.lr.ph170

.lr.ph164:                                        ; preds = %.critedge.critedge, %bb.p
  %.085163 = phi ptr [ %i.cw, %bb.p ], [ %i.aj, %.critedge.critedge ] ; 2 uses
  %i.ch = load i32, ptr %.085163, align 4, !tbaa !168 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, %i.q
  br i1 %i.ci, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph164
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !171
  %i.ck = sext i32 %i.ch to i64
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !172
  %i.cn = icmp slt i8 %i.cm, 0
  br i1 %i.cn, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = tail call noundef i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !241
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !172 ; 2 uses
  %i.ct = icmp slt i32 %i.ch, 0
  %i.cu = sub i8 0, %i.cs
  %spec.select.i = select i1 %i.ct, i8 %i.cu, i8 %i.cs
  %i.cv = icmp sgt i8 %spec.select.i, 0
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.cr, align 1, !tbaa !172
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %.lr.ph164
  %i.cw = getelementptr inbounds nuw i8, ptr %.085163, i64 4 ; 2 uses
  %.not102 = icmp eq ptr %i.cw, %i.an
  br i1 %.not102, label %._crit_edge165, label %.lr.ph164

._crit_edge171.loopexit:                          ; preds = %bb.t
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !188
  %.pre197 = load ptr, ptr %i.ad, align 8, !tbaa !173
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %._crit_edge165
  %i.cx = phi ptr [ %i.cf, %._crit_edge165 ], [ %.pre197, %._crit_edge171.loopexit ] ; 3 uses
  %i.cy = phi ptr [ %i.cg, %._crit_edge165 ], [ %.pre, %._crit_edge171.loopexit ] ; 4 uses
  %.sroa.0124.0.lcssa = phi ptr [ %i.cf, %._crit_edge165 ], [ %.sroa.0124.1, %._crit_edge171.loopexit ] ; 2 uses
  %i.cz = ptrtoint ptr %.sroa.0124.0.lcssa to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 3 uses
  %i.dd = ptrtoint ptr %i.cx to i64
  %i.de = sub i64 %i.dd, %i.da
  %i.df = ashr exact i64 %i.de, 2                 ; 3 uses
  %i.dg = icmp ugt i64 %i.dc, %i.df
  br i1 %i.dg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge171
  %i.dh = sub nuw nsw i64 %i.dc, %i.df
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.dh)
  %.pre198 = load ptr, ptr %i.ac, align 8, !tbaa !188
  %.pre199 = load ptr, ptr %i.ad, align 8, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.r:                                             ; preds = %._crit_edge171
  %i.di = icmp uge i64 %i.dc, %i.df
  %.not.i.i = icmp eq ptr %i.cx, %.sroa.0124.0.lcssa
  %or.cond = or i1 %i.di, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db ; 2 uses
  store ptr %i.dj, ptr %i.ad, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.q, %bb.r, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.dk = phi ptr [ %.pre199, %bb.q ], [ %i.cx, %bb.r ], [ %i.dj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.dl = phi ptr [ %.pre198, %bb.q ], [ %i.cy, %bb.r ], [ %i.cy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.dm = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dm, label %bb.u, label %.loopexit

.lr.ph170:                                        ; preds = %._crit_edge165, %bb.t
  %.sroa.0121.0168 = phi ptr [ %i.dv, %bb.t ], [ %i.cg, %._crit_edge165 ] ; 2 uses
  %.sroa.0124.0167 = phi ptr [ %.sroa.0124.1, %bb.t ], [ %i.cg, %._crit_edge165 ] ; 3 uses
  %i.dn = load i32, ptr %.sroa.0121.0168, align 4, !tbaa !168 ; 3 uses
  store i32 %i.dn, ptr %.sroa.0124.0167, align 4, !tbaa !168
  %i.do = tail call noundef i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !241
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !172
  %.not103 = icmp eq i8 %i.ds, 0
  br i1 %.not103, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph170
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0124.0167, i64 4
  %i.du = tail call i8 @llvm.scmp.i8.i32(i32 %i.dn, i32 0)
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph170, %bb.s
  %storemerge = phi i8 [ %i.du, %bb.s ], [ 0, %.lr.ph170 ]
  %.sroa.0124.1 = phi ptr [ %i.dt, %bb.s ], [ %.sroa.0124.0167, %.lr.ph170 ] ; 2 uses
  store i8 %storemerge, ptr %i.dr, align 1, !tbaa !172
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0121.0168, i64 4 ; 2 uses
  %.not147 = icmp eq ptr %i.dv, %i.cf
  br i1 %.not147, label %._crit_edge171.loopexit, label %.lr.ph170, !llvm.loop !239

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.dw = load ptr, ptr %i.v, align 8, !tbaa !187 ; 3 uses
  %.not148182 = icmp eq ptr %.sroa.0128.0178, %i.dw
  br i1 %.not148182, label %.loopexit150.thread243, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %bb.u
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %i.dy = add i64 %i.z, -8
  %i.dz = shl i64 %indvar, 3                      ; 2 uses
  %i.ea = add i64 %i.dz, %i.dy
  %i.eb = sub i64 %i.ea, %i.dx                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = mul i64 %i.ec, -8                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0128.0178, i64 %i.ed
  %i.ee = getelementptr i8, ptr %i.y, i64 %i.dz
  %scevgep195 = getelementptr i8, ptr %i.ee, i64 -8
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.ed
  %i.ef = and i64 %i.eb, -8
  %i.eg = add i64 %i.ef, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep196, i64 %i.eg, i1 false), !tbaa !167
  br label %.loopexit150.thread243

.loopexit150.thread243:                           ; preds = %bb.u, %.lr.ph185.preheader
  store ptr %i.af, ptr %i.dw, align 8, !tbaa !167
  br label %bb.v

.loopexit:                                        ; preds = %bb.d, %bb.l, %.critedge.thread, %bb.b, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.2.ph = phi i8 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ 0, %bb.l ], [ %.084179, %bb.b ], [ 0, %.critedge.thread ], [ %.084179, %bb.d ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0128.0178, i64 8 ; 2 uses
  %.not146 = icmp eq ptr %i.eh, %i.x
  %indvar.next = add i64 %indvar, 1
  br i1 %.not146, label %.loopexit150, label %bb.b, !llvm.loop !240

.loopexit150:                                     ; preds = %.loopexit
  %i.ei = trunc nuw i8 %.2.ph to i1
  br i1 %i.ei, label %.loopexit150.thread, label %bb.v

.loopexit150.thread:                              ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, %.loopexit150
  tail call void @_ZN7CaDiCaL8Internal20cover_push_extensionEiRNS_7CoverorE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre202 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !188
  %.phi.trans.insert203 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre204 = load ptr, ptr %.phi.trans.insert203, align 8, !tbaa !188
  br label %bb.y

bb.v:                                             ; preds = %.loopexit150.thread243, %.loopexit150
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !188
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !188
  %i.en = icmp eq ptr %i.ek, %i.em
  br i1 %i.en, label %_ZNSt6vectorIiSaIiEE5clearEv.exit116, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN7CaDiCaL8Internal24covered_literal_additionEiRNS_7CoverorE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !188 ; 4 uses
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !188 ; 2 uses
  %.not8.i = icmp eq ptr %i.eo, %i.ep
  br i1 %.not8.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %i.ew, %bb.x ] ; 2 uses
  %i.er = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !168
  %i.es = tail call noundef i32 @llvm.abs.i32(i32 %i.er, i1 true)
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !241
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !172
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i106 = icmp eq ptr %i.ew, %i.ep
  br i1 %.not.i106, label %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit, label %bb.x

_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit: ; preds = %bb.x
  %.pre200 = load ptr, ptr %i.ej, align 8, !tbaa !175 ; 5 uses
  %.pre201 = load ptr, ptr %i.el, align 8, !tbaa !173 ; 2 uses
  %.not.i.i107 = icmp eq ptr %.pre201, %.pre200
  br i1 %.not.i.i107, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i108

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i108:     ; preds = %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit
  store ptr %.pre200, ptr %i.el, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.w, %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i108
  %i.ex = phi ptr [ %.pre200, %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit ], [ %.pre200, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i108 ], [ %i.eo, %bb.w ]
  %i.ey = phi ptr [ %.pre201, %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit ], [ %.pre200, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i108 ], [ %i.eo, %bb.w ]
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 0, ptr %i.ez, align 8, !tbaa !179
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %.loopexit150.thread
  %.084153241 = phi i1 [ false, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ true, %.loopexit150.thread ] ; 3 uses
  %i.fa = phi ptr [ %i.ey, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.pre204, %.loopexit150.thread ] ; 2 uses
  %i.fb = phi ptr [ %i.ex, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.pre202, %.loopexit150.thread ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %.not8.i109 = icmp eq ptr %i.fb, %i.fa
  br i1 %.not8.i109, label %_ZNSt6vectorIiSaIiEE5clearEv.exit116, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i110
  %.sroa.05.09.i111 = phi ptr [ %i.fb, %.lr.ph.i110 ], [ %i.fk, %bb.z ] ; 2 uses
  %i.ff = load i32, ptr %.sroa.05.09.i111, align 4, !tbaa !168
  %i.fg = tail call noundef i32 @llvm.abs.i32(i32 %i.ff, i1 true)
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !241
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 0, ptr %i.fj, align 1, !tbaa !172
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i111, i64 4 ; 2 uses
  %.not.i112 = icmp eq ptr %i.fk, %i.fa
  br i1 %.not.i112, label %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit113, label %bb.z

_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit113: ; preds = %bb.z
  %.pre205 = load ptr, ptr %i.fc, align 8, !tbaa !175 ; 2 uses
  %.pre206 = load ptr, ptr %i.fd, align 8, !tbaa !173
  %i.fl = icmp eq ptr %.pre206, %.pre205
  br i1 %i.fl, label %_ZNSt6vectorIiSaIiEE5clearEv.exit116, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i115

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i115:     ; preds = %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit113
  store ptr %.pre205, ptr %i.fd, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit116

_ZNSt6vectorIiSaIiEE5clearEv.exit116:             ; preds = %bb.v, %bb.y, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i115, %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit113, %_ZN7CaDiCaL8Internal6frozenEi.exit
  %.083 = phi i1 [ false, %_ZN7CaDiCaL8Internal6frozenEi.exit ], [ %.084153241, %_ZN7CaDiCaL8Internal6unmarkERSt6vectorIiSaIiEE.exit113 ], [ %.084153241, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i115 ], [ %.084153241, %bb.y ], [ false, %bb.v ]
  ret i1 %.083
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal20cover_push_extensionEiRNS_7CoverorE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !174  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #14 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !168
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.g, null
end_hunk_0
