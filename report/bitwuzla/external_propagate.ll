Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/external_propagate?download=true
inline.NumInlined: 553
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal18external_propagateEv:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4016 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 994 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4040 ; 4 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not3393 = icmp eq ptr %i.v, null
  br i1 %.not3393, label %.lr.ph94, label %.critedge

.thread68.loopexit:                               ; preds = %bb.an
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not33 = icmp eq ptr %i.w, null
  br i1 %.not33, label %.lr.ph94, label %.critedge, !llvm.loop !206

.lr.ph94:                                         ; preds = %bb.a, %.thread68.loopexit
  %i.x = load i8, ptr %i.e, align 2, !tbaa !170, !range !171, !noundef !166
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph94
  %i.z = load i8, ptr %i.f, align 8, !tbaa !207, !range !171, !noundef !166
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.g, align 2, !tbaa !208, !range !171, !noundef !166
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !195
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(10) %i.af)
  %i.ak = load <2 x i64>, ptr %i.i, align 8, !tbaa !209
  %i.al = add nsw <2 x i64> %i.ak, splat (i64 1)
  store <2 x i64> %i.al, ptr %i.i, align 8, !tbaa !209
  br label %bb.e

bb.e:                                             ; preds = %bb.ac, %bb.d
  %.027 = phi i32 [ %i.aj, %bb.d ], [ %.128, %bb.ac ] ; 6 uses
  %.not34 = icmp eq i32 %.027, 0
  br i1 %.not34, label %.thread64, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = tail call i32 @llvm.abs.i32(i32 %.027, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !173
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13 ; 2 uses
  %i.at = icmp slt i32 %.027, 0
  %i.au = sub nsw i32 0, %i.as
  %spec.select = select i1 %i.at, i32 %i.au, i32 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.aw = sext i32 %spec.select to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !159 ; 2 uses
  %.not35 = icmp eq i8 %i.ay, 0
  br i1 %.not35, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.a, align 4, !tbaa !160
  %.not36 = icmp eq i32 %i.az, 0
  br i1 %.not36, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.h, %bb.q
  %.lcssa.sink = phi ptr [ %i.bv, %bb.q ], [ %i.bc, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.ba, %bb.h ]
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa.sink) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.br, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.bb = load <2 x ptr>, ptr %i.l, align 8, !tbaa !210
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !173 ; 2 uses
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.be = load i64, ptr %i.n, align 8, !tbaa !211
  %i.bf = add nsw i64 %i.be, 1
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !211
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.027, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !173 ; 2 uses
  store <2 x ptr> %i.bb, ptr %i.l, align 8, !tbaa !210
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !201
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.bg) #20
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

bb.l:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal22search_assign_externalEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %spec.select)
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit: ; preds = %bb.k, %bb.j, %bb.l
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !212
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.s, align 8, !tbaa !212
  %i.bj = load i8, ptr %i.r, align 4, !tbaa !213, !range !171, !noundef !166
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread64, label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not37 = icmp eq ptr %i.bl, null
  br i1 %.not37, label %bb.n, label %.thread64

bb.n:                                             ; preds = %bb.m
  %i.bm = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.bn = load i8, ptr %i.r, align 4, !tbaa !213, !range !171, !noundef !166
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.thread64, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not38 = icmp eq ptr %i.bp, null
  br i1 %.not38, label %.sink.split, label %.thread64

bb.p:                                             ; preds = %bb.f
  %i.bq = icmp slt i8 %i.ay, 0
  br i1 %i.bq, label %bb.r, label %bb.ab

bb.q:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i53, label %common.resume, label %common.resume.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !160
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !204
  %i.bu = load <2 x ptr>, ptr %i.l, align 8, !tbaa !210
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !173 ; 2 uses
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.bx = load <2 x i64>, ptr %i.k, align 8, !tbaa !209
  %i.by = add nsw <2 x i64> %i.bx, splat (i64 1)
  store <2 x i64> %i.by, ptr %i.k, align 8, !tbaa !209
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.027, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !173 ; 2 uses
  store <2 x ptr> %i.bu, ptr %i.l, align 8, !tbaa !210
  store ptr %i.bw, ptr %i.m, align 8, !tbaa !201
  %.not.i.i.i.i.i.i55 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i55, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdlPv(ptr noundef nonnull %i.bz) #20
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57: ; preds = %bb.s, %bb.t
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !204
  %.not39 = icmp eq i64 %i.ca, %i.bt
  br i1 %.not39, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !160
  %.not40 = icmp eq i32 %i.cb, %i.bs
  br i1 %.not40, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = load i64, ptr %i.o, align 8, !tbaa !214
  %i.cd = load ptr, ptr %i.q, align 8, !tbaa !172
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !173
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = icmp uge i64 %i.cc, %i.ci
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57
  %.not49 = phi i1 [ false, %bb.u ], [ false, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57 ], [ %i.cj, %bb.v ]
  %i.ck = load i8, ptr %i.r, align 4, !tbaa !213, !range !171, !noundef !166
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.thread64, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !205 ; 2 uses
  %.not41 = icmp ne ptr %i.cm, null               ; 2 uses
  %brmerge = select i1 %.not41, i1 true, i1 %.not49
  br i1 %brmerge, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.co = load i8, ptr %i.r, align 4, !tbaa !213, !range !171, !noundef !166
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.thread64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not42 = icmp eq ptr %i.cq, null
  br i1 %.not42, label %.sink.split, label %.thread64

bb.aa:                                            ; preds = %bb.x
  %.mux50 = select i1 %.not41, i32 5, i32 0
  %not..not41 = icmp eq ptr %i.cm, null
  br i1 %not..not41, label %bb.ab, label %bb.ac

.sink.split:                                      ; preds = %bb.z, %bb.o
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.p, %bb.aa
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 384
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !176 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !195
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(10) %i.ct)
  %i.cy = load <2 x i64>, ptr %i.i, align 8, !tbaa !209
  %i.cz = add nsw <2 x i64> %i.cy, splat (i64 1)
  store <2 x i64> %i.cz, ptr %i.i, align 8, !tbaa !209
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.128 = phi i32 [ %i.cx, %bb.ab ], [ %.027, %bb.aa ]
  %.125 = phi i32 [ 0, %bb.ab ], [ %.mux50, %bb.aa ]
  %1 = icmp eq i32 %.125, 0
  br i1 %1, label %bb.e, label %.thread64

.thread64:                                        ; preds = %bb.z, %bb.w, %bb.y, %bb.n, %bb.o, %bb.m, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, %bb.ac, %bb.e
  %i.da = load i8, ptr %i.r, align 4, !tbaa !213, !range !171, !noundef !166
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %.thread64
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not43 = icmp eq ptr %i.dc, null
  br i1 %.not43, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.t, align 2, !tbaa !215
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 384
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !176 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !195
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(10) %i.df, ptr noundef nonnull align 1 dereferenceable(1) %i.t), !inline_history !216
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !217
  %i.dl = add nsw i64 %i.dk, 1
  store i64 %i.dl, ptr %i.i, align 8, !tbaa !217
  %storemerge.in73 = load i64, ptr %i.u, align 8, !tbaa !218
  %storemerge74 = add nsw i64 %storemerge.in73, 1
  store i64 %storemerge74, ptr %i.u, align 8, !tbaa !218
  br i1 %i.dj, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ae, %bb.an
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !160
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !204
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0, i1 noundef zeroext false)
  %i.do = load i64, ptr %i.b, align 8, !tbaa !204
  %.not44 = icmp eq i64 %i.do, %i.dn
  br i1 %.not44, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !160
  %.not45 = icmp eq i32 %i.dp, %i.dm
  br i1 %.not45, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dq = load i64, ptr %i.o, align 8, !tbaa !214
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !172
  %i.ds = load ptr, ptr %i.p, align 8, !tbaa !173
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph
  %i.dy = phi i1 [ true, %bb.af ], [ true, %.lr.ph ], [ %i.dx, %bb.ag ]
  %i.dz = load i8, ptr %i.r, align 4, !tbaa !213, !range !171, !noundef !166
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not46 = icmp eq ptr %i.eb, null
  br i1 %.not46, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dy, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ec = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.ed = load i8, ptr %i.r, align 4, !tbaa !213, !range !171, !noundef !166
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not47 = icmp eq ptr %i.ef, null
  br i1 %.not47, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am
  store i8 0, ptr %i.t, align 2, !tbaa !215
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 384
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !176 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !195
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 72
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(10) %i.ei, ptr noundef nonnull align 1 dereferenceable(1) %i.t), !inline_history !216
  %i.en = load i64, ptr %i.i, align 8, !tbaa !217
  %i.eo = add nsw i64 %i.en, 1
  store i64 %i.eo, ptr %i.i, align 8, !tbaa !217
  %storemerge.in = load i64, ptr %i.u, align 8, !tbaa !218
  %storemerge = add nsw i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.u, align 8, !tbaa !218
  br i1 %i.em, label %.lr.ph, label %.thread68.loopexit, !llvm.loop !206

.critedge:                                        ; preds = %bb.c, %.thread68.loopexit, %.lr.ph94, %bb.b, %bb.ae, %bb.ad, %.thread64, %bb.al, %bb.ai, %bb.ah, %bb.ak, %bb.a
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !204
  %i.eq = icmp ult i64 %i.c, %i.ep
  br i1 %i.eq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 1, ptr %i.er, align 1, !tbaa !219
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !205
  %.not48 = icmp eq ptr %i.es, null
  ret i1 %.not48
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !170, !range !171, !noundef !166
  %i.c = trunc nuw i8 %i.b to i1
  %.not12 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !171
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not12, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !171
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond17, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !174  ; 2 uses
  %.not = icmp ult i64 %i.s, %i.q
  br i1 %.not, label %.lr.ph, label %bb.o

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.aa = phi i64 [ %i.s, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ab = add nuw i64 %i.aa, 1                    ; 3 uses
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !174
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13 ; 2 uses
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %.not23 = icmp eq i32 %i.aj, 0
  br i1 %.not23, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.d, !llvm.loop !220

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.an = icmp slt i32 %i.ae, 0
  %i.ao = sub nsw i32 0, %i.am
  %spec.select.i = select i1 %i.an, i32 %i.ao, i32 %i.am ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %spec.select.i, ptr %i.z, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.ap, ptr %i.v, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = ptrtoint ptr %i.y to i64
  %i.ar = ptrtoint ptr %i.x to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc unwind label %.loopexit.split-lp
end_hunk_0
