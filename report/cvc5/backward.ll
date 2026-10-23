Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/backward?download=true
inline.NumInlined: 309
inline.NumDeleted: 175
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7CaDiCaL10EliminatorD2Ev:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !189 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt5queueIPN7CaDiCaL6ClauseESt5dequeIS2_SaIS2_EEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #12
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.g, %_ZNSt5queueIPN7CaDiCaL6ClauseESt5dequeIS2_SaIS2_EEED2Ev.exit
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !189 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i1.i, label %_ZN7CaDiCaL4heapINS_9elim_moreEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #12
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEED2Ev.exit

_ZN7CaDiCaL4heapINS_9elim_moreEED2Ev.exit:        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.h
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal20elim_backward_clauseERNS_10EliminatorEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16
  %.not211 = icmp eq i32 %i.c, 0
  br i1 %.not211, label %bb.b, label %bb.bn

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !190  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %.not212336 = icmp eq i32 %i.f, 0
  br i1 %.not212336, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.pre394 = load ptr, ptr %i.i, align 8, !tbaa !191
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi ptr [ %.pre394, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  %.0340 = phi i64 [ 4294967295, %.lr.ph ], [ %.2.ph, %bb.f ] ; 3 uses
  %.0160339 = phi i32 [ 0, %.lr.ph ], [ %.1161.ph, %bb.f ] ; 2 uses
  %.0186338 = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %.0197337 = phi i32 [ 0, %.lr.ph ], [ %.2199.ph, %bb.f ] ; 2 uses
  %i.m = load i32, ptr %.0186338, align 4, !tbaa !190 ; 5 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !192   ; 2 uses
  %i.q = icmp sgt i8 %i.p, 0
  br i1 %i.q, label %.thread277, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp slt i8 %i.p, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 2 uses
  %i.t = tail call noundef i32 @llvm.fshl.i32(i32 %i.s, i32 %i.m, i32 1)
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !193
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !174
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !171
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.0340
  %spec.select = select i1 %i.ae, i32 %i.m, i32 %.0197337
  %spec.select327 = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %.0340)
  %i.af = tail call i8 @llvm.scmp.i8.i32(i32 %i.m, i32 0)
  %i.ag = zext nneg i32 %i.s to i64
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !192
  %i.aj = add i32 %.0160339, 1
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !191
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = phi ptr [ %i.l, %bb.d ], [ %.pre, %bb.e ]
  %.2199.ph = phi i32 [ %.0197337, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %.1161.ph = phi i32 [ %.0160339, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %.2.ph = phi i64 [ %.0340, %bb.d ], [ %spec.select327, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0186338, i64 4 ; 2 uses
  %.not212 = icmp eq ptr %i.al, %i.h
  br i1 %.not212, label %._crit_edge, label %bb.c

.thread277:                                       ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal26elim_update_removed_clauseERNS_10EliminatorEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %2, i32 noundef 0)
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull %2)
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.0197.lcssa = phi i32 [ 0, %bb.b ], [ %.2199.ph, %bb.f ] ; 2 uses
  %.0160.lcssa = phi i32 [ 0, %bb.b ], [ %.1161.ph, %bb.f ]
  %.0.lcssa = phi i64 [ 4294967295, %bb.b ], [ %.2.ph, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3428 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !195
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp ugt i64 %.0.lcssa, %i.ao
  br i1 %i.ap, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.ar = tail call noundef i32 @llvm.abs.i32(i32 %.0197.lcssa, i1 true)
  %i.as = tail call noundef i32 @llvm.fshl.i32(i32 %i.ar, i32 %.0197.lcssa, i32 1)
  %i.at = zext i32 %i.as to i64
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !193
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !165 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !165 ; 2 uses
  %.not328381 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not328381, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %.lr.ph386

.lr.ph386:                                        ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4960 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4736 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4952 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph386, %bb.bm
  %.3163384 = phi i32 [ %.0160.lcssa, %.lr.ph386 ], [ %.7.ph, %bb.bm ] ; 10 uses
  %.3190383 = phi i1 [ false, %.lr.ph386 ], [ %.12.ph, %bb.bm ] ; 4 uses
  %.sroa.0265.0382 = phi ptr [ %i.aw, %.lr.ph386 ], [ %i.li, %bb.bm ] ; 11 uses
  %i.bn = load ptr, ptr %.sroa.0265.0382, align 8, !tbaa !10 ; 6 uses
  %i.bo = icmp eq ptr %i.bn, %2
  br i1 %i.bo, label %bb.bm, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = and i32 %i.bq, 16
  %.not213 = icmp eq i32 %i.br, 0
  br i1 %.not213, label %bb.j, label %bb.bm

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !190 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, %.3163384
  br i1 %i.bu, label %bb.bm, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 3 uses
  %i.bw = sext i32 %i.bt to i64
  %.idx387 = shl nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %.idx387 ; 2 uses
  %.not214343 = icmp eq i32 %i.bt, 0              ; 2 uses
  br i1 %.not214343, label %.thread283, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.k
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !191
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph348, %bb.r
  %.0170346 = phi ptr [ %i.bv, %.lr.ph348 ], [ %i.cn, %bb.r ] ; 2 uses
  %.0171345 = phi i32 [ 0, %.lr.ph348 ], [ %.1172, %bb.r ] ; 4 uses
  %.0174344 = phi i32 [ 0, %.lr.ph348 ], [ %.2176, %bb.r ] ; 5 uses
  %i.bz = load i32, ptr %.0170346, align 4, !tbaa !190 ; 4 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !192 ; 2 uses
  %i.cd = icmp sgt i8 %i.cc, 0
  br i1 %i.cd, label %.thread283.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp slt i8 %i.cc, 0
  br i1 %i.ce, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = tail call noundef i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = load ptr, ptr %i.ba, align 8, !tbaa !194
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !192 ; 2 uses
  %3 = icmp slt i32 %i.bz, 0
  %4 = sub i8 0, %i.cj
  %spec.select.i = select i1 %3, i8 %4, i8 %i.cj  ; 2 uses
  %.not215 = icmp eq i8 %spec.select.i, 0
  br i1 %.not215, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp slt i8 %spec.select.i, 0
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not216 = icmp eq i32 %.0174344, 0
  br i1 %.not216, label %bb.q, label %.thread283

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1175 = phi i32 [ %.0174344, %bb.o ], [ %i.bz, %bb.p ] ; 2 uses
  %i.cl = add i32 %.0171345, 1                    ; 2 uses
  %i.cm = icmp eq i32 %i.cl, %.3163384
  br i1 %i.cm, label %.thread283, label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.n, %bb.q
  %.2176 = phi i32 [ %.0174344, %bb.m ], [ %.1175, %bb.q ], [ %.0174344, %bb.n ] ; 2 uses
  %.1172 = phi i32 [ %.0171345, %bb.m ], [ %i.cl, %bb.q ], [ %.0171345, %bb.n ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0170346, i64 4 ; 2 uses
  %.not214 = icmp eq ptr %i.cn, %i.bx
  br i1 %.not214, label %.thread283, label %bb.l

.thread283:                                       ; preds = %bb.r, %bb.p, %bb.q, %bb.k
  %.3177 = phi i32 [ 0, %bb.k ], [ %.0174344, %bb.p ], [ %.1175, %bb.q ], [ %.2176, %bb.r ] ; 6 uses
  %.2173 = phi i32 [ 0, %bb.k ], [ %.0171345, %bb.p ], [ %.3163384, %bb.q ], [ %.1172, %bb.r ] ; 4 uses
  %.6 = phi i32 [ %.3163384, %bb.k ], [ -1, %bb.p ], [ %.3163384, %bb.q ], [ %.3163384, %bb.r ] ; 3 uses
  br i1 %.3190383, label %.thread283.thread, label %bb.s

.thread283.thread:                                ; preds = %bb.l, %.thread283
  %.6326 = phi i32 [ %.6, %.thread283 ], [ %.3163384, %bb.l ]
  tail call void @_ZN7CaDiCaL8Internal26elim_update_removed_clauseERNS_10EliminatorEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.bn, i32 noundef 0)
  %i.co = load ptr, ptr %.sroa.0265.0382, align 8, !tbaa !10
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef %i.co)
  br label %bb.bm

bb.s:                                             ; preds = %.thread283
  %i.cp = icmp eq i32 %.2173, %.6
  br i1 %i.cp, label %bb.t, label %bb.bm

bb.t:                                             ; preds = %bb.s
  %.not217 = icmp eq i32 %.3177, 0
  br i1 %.not217, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.t
  br i1 %.not214343, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph363

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN7CaDiCaL8Internal26elim_update_removed_clauseERNS_10EliminatorEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.bn, i32 noundef 0)
  %i.cq = load ptr, ptr %.sroa.0265.0382, align 8, !tbaa !10
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef %i.cq)
  %i.cr = load i64, ptr %i.bl, align 8, !tbaa !196
  %i.cs = add nsw i64 %i.cr, 1
  store i64 %i.cs, ptr %i.bl, align 8, !tbaa !196
  %i.ct = load i64, ptr %i.bm, align 8, !tbaa !197
  %i.cu = add nsw i64 %i.ct, 1
  store i64 %i.cu, ptr %i.bm, align 8, !tbaa !197
  br label %bb.bm

.lr.ph363:                                        ; preds = %.preheader, %select.unfold289
  %.0166362 = phi ptr [ %i.eg, %select.unfold289 ], [ %i.bv, %.preheader ] ; 4 uses
  %.0167361 = phi i32 [ %.1168.ph, %select.unfold289 ], [ 0, %.preheader ] ; 6 uses
  %i.cv = load i32, ptr %.0166362, align 4, !tbaa !190 ; 4 uses
  %i.cw = load ptr, ptr %i.az, align 8, !tbaa !191
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !192 ; 2 uses
  %i.da = icmp slt i8 %i.cz, 0
  br i1 %i.da, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %.lr.ph363
  %i.db = load i8, ptr %i.bb, align 8, !tbaa !198, !range !175, !noundef !176
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.w, label %select.unfold289

bb.w:                                             ; preds = %bb.v
  %i.dd = tail call noundef i32 @llvm.abs.i32(i32 %i.cv, i1 true)
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = load ptr, ptr %i.bc, align 8, !tbaa !199
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.de ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 1            ; 2 uses
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %select.unfold289, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = or disjoint i32 %i.dh, 1
  store i32 %i.dj, ptr %i.dg, align 1
  %i.dk = load ptr, ptr %i.be, align 8, !tbaa !200 ; 4 uses
  %i.dl = load ptr, ptr %i.bf, align 8, !tbaa !201
  %.not.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = load i32, ptr %.0166362, align 4, !tbaa !190
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !190
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store ptr %i.dn, ptr %i.be, align 8, !tbaa !200
  br label %select.unfold289

bb.z:                                             ; preds = %bb.x
  %i.do = load ptr, ptr %i.bd, align 8, !tbaa !170 ; 4 uses
  %i.dp = ptrtoint ptr %i.dk to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 5 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %bb.aa, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.dt = ashr exact i64 %i.dr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 2305843009213693951)
  %i.dx = select i1 %i.dv, i64 2305843009213693951, i64 %i.dw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #14 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dr ; 2 uses
  %i.eb = load i32, ptr %.0166362, align 4, !tbaa !190
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !190
  %i.ec = icmp sgt i64 %i.dr, 0
  br i1 %i.ec, label %bb.ab, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr align 4 %i.do, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.not.i17.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.do) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dz, ptr %i.bd, align 8, !tbaa !170
  store ptr %i.ed, ptr %i.be, align 8, !tbaa !200
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.ee, ptr %i.bf, align 8, !tbaa !201
  br label %select.unfold289

bb.ad:                                            ; preds = %.lr.ph363
  %.not219 = icmp eq i8 %i.cz, 0
  br i1 %.not219, label %bb.ae, label %_ZNSt6vectorImSaImEE9push_backERKm.exit245.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ef = icmp eq i32 %i.cv, %.3177
  br i1 %i.ef, label %select.unfold289, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not220 = icmp eq i32 %.0167361, 0
  br i1 %.not220, label %select.unfold289, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

select.unfold289:                                 ; preds = %bb.af, %bb.v, %bb.ae, %bb.w, %bb.y, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.1168.ph = phi i32 [ %.0167361, %bb.v ], [ %.0167361, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.0167361, %bb.y ], [ %.0167361, %bb.w ], [ %.0167361, %bb.ae ], [ %i.cv, %bb.af ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0166362, i64 4 ; 2 uses
  %.not218 = icmp eq ptr %i.eg, %i.bx
  br i1 %.not218, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph363

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %select.unfold289, %bb.af, %.preheader
  %.2169 = phi i32 [ 0, %.preheader ], [ -2147483648, %bb.af ], [ %.1168.ph, %select.unfold289 ] ; 5 uses
  %i.eh = load i8, ptr %i.bb, align 8, !tbaa !198, !range !175, !noundef !176
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.ag, label %_ZNSt6vectorImSaImEE9push_backERKm.exit245

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ej = load i32, ptr %i.e, align 8, !tbaa !190 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %.idx388 = shl nsw i64 %i.ek, 2
  %i.el = getelementptr inbounds i8, ptr %i.d, i64 %.idx388
  %.not221367 = icmp eq i32 %i.ej, 0
  br i1 %.not221367, label %._crit_edge371, label %.lr.ph370

.lr.ph370:                                        ; preds = %bb.ag
  %i.em = icmp eq i32 %.2169, -2147483648
  br label %bb.ah

._crit_edge371:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit233, %bb.ag
  %i.en = icmp eq i32 %.2169, -2147483648
  br i1 %i.en, label %bb.ar, label %.loopexit

bb.ah:                                            ; preds = %.lr.ph370, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit233
  %.0165368 = phi ptr [ %i.d, %.lr.ph370 ], [ %i.fx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit233 ] ; 4 uses
  %i.eo = load i32, ptr %.0165368, align 4, !tbaa !190 ; 2 uses
  %i.ep = load ptr, ptr %i.az, align 8, !tbaa !191
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !192
  %i.et = icmp sgt i8 %i.es, -1
  br i1 %i.et, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit233, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = tail call noundef i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.bc, align 8, !tbaa !199
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev ; 3 uses
end_hunk_0
