inline.NumInlined: 3531
inline.NumDeleted: 1487
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7cvflann11KMeansIndexINS_7HammingIhEEE17computeClusteringEPNS3_10KMeansNodeEPiiii:bb.a
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 17 uses
  %9 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %3, ptr %i.f, align 4, !tbaa !413
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %5, ptr %i.g, align 8, !tbaa !414
  %i.h = icmp slt i32 %3, %4
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.i, align 8, !tbaa !415
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiEvT_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %3 to i64                       ; 2 uses
  %.idx149 = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %2, i64 %.idx149 ; 2 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %2, ptr noundef nonnull %i.k, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %2, ptr noundef nonnull %i.k)
  br label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.o, align 8, !tbaa !411
  br label %bb.ai

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.p = sext i32 %4 to i64                       ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !416
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i98 = icmp ugt i32 %4, 264              ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !418
  br i1 %.not.i.i98, label %bb.e, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i32 %4, 0
  %i.t = shl nuw nsw i64 %i.p, 2
  %i.u = select i1 %i.s, i64 -1, i64 %i.t
  %i.v = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #31 ; 2 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !416
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %i.q, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack = load i64, ptr %i.x, align 8, !tbaa !298 ; 3 uses
  %.elt90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack91 = load i64, ptr %.elt90, align 8, !tbaa !298
  %i.y = getelementptr inbounds i8, ptr %0, i64 %.unpack91 ; 2 uses
  %i.z = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.unpack
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load ptr, ptr %i.ac, align 8, !nosanitize !207
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.ae = inttoptr i64 %.unpack to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.ad, %bb.f ], [ %i.ae, %bb.g ]
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i32 noundef %4, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !59
  %i.ah = icmp slt i32 %i.ag, %4
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.ai, align 8, !tbaa !415
  %i.aj = sext i32 %3 to i64                      ; 2 uses
  %.idx = shl nsw i64 %i.aj, 2
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %.idx ; 2 uses
  %.not.i.i99 = icmp eq i32 %3, 0
  br i1 %.not.i.i99, label %_ZSt4sortIPiEvT_S1_.exit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = xor i64 %i.am, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %2, ptr noundef nonnull %i.ak, i64 noundef %i.an)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %2, ptr noundef nonnull %i.ak)
          to label %_ZSt4sortIPiEvT_S1_.exit101 unwind label %bb.l

_ZSt4sortIPiEvT_S1_.exit101:                      ; preds = %bb.j, %.noexc
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.ao, align 8, !tbaa !411
  br label %bb.ag

bb.l:                                             ; preds = %.noexc, %bb.k, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.aq = icmp slt i32 %4, 0
  br i1 %i.aq, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #29
          to label %.noexc102 unwind label %bb.s

.noexc102:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ar, align 8
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread185, label %bb.o

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread185: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !416
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.p, ptr %i.at, align 8, !tbaa !418
  br label %._crit_edge

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.au = shl nuw nsw i64 %i.p, 2                 ; 2 uses
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #31
          to label %.noexc103 unwind label %bb.s  ; 6 uses

.noexc103:                                        ; preds = %bb.o
  store ptr %i.av, ptr %7, align 8, !tbaa !352
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.p
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !354
  store i32 0, ptr %i.av, align 4, !tbaa !59
  %i.ay = getelementptr i8, ptr %i.av, i64 4      ; 3 uses
  %i.az = add nsw i64 %i.p, -1                    ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106, label %bb.p

bb.p:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.az, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !59
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !416
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.p, ptr %i.be, align 8, !tbaa !418
  br i1 %.not.i.i98, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #31
          to label %.noexc105 unwind label %bb.t  ; 2 uses

.noexc105:                                        ; preds = %bb.q
  store ptr %i.bf, ptr %8, align 8, !tbaa !416
  br label %.lr.ph

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106:          ; preds = %.noexc103
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bh, ptr %8, align 8, !tbaa !416
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.p, ptr %i.bi, align 8, !tbaa !418
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.noexc105, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106
  %i.bj = phi ptr [ %i.bh, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.bd, %.noexc105 ], [ %i.bd, %bb.p ]
  %i.bk = phi ptr [ %i.bh, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.bf, %.noexc105 ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bl = zext nneg i32 %4 to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.av, i8 0, i64 %i.bm, i1 false), !tbaa !59
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bm, i1 false), !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread185, %.lr.ph
  %i.bn = phi ptr [ %i.bj, %.lr.ph ], [ %i.as, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread185 ] ; 2 uses
  %i.bo = phi ptr [ %i.bk, %.lr.ph ], [ %i.as, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread185 ] ; 3 uses
  %i.bp = phi ptr [ %i.av, %.lr.ph ], [ null, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread185 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %10 = zext i32 %3 to i64                        ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bq, ptr %9, align 8, !tbaa !416
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i107 = icmp ugt i32 %3, 264
  store i64 %10, ptr %i.br, align 8, !tbaa !418
  br i1 %.not.i.i107, label %bb.r, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.r:                                             ; preds = %._crit_edge
  %i.bs = shl nuw nsw i64 %10, 2
  %i.bt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #31
          to label %.noexc108 unwind label %bb.u  ; 2 uses

.noexc108:                                        ; preds = %bb.r
  store ptr %i.bt, ptr %9, align 8, !tbaa !416
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

bb.t:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit142

_ZN2cv10AutoBufferIiLm264EEC2Em.exit109:          ; preds = %.noexc108, %._crit_edge
  %i.bw = phi ptr [ %i.bt, %.noexc108 ], [ %i.bq, %._crit_edge ] ; 4 uses
  %i.bx = icmp sgt i32 %3, 0
  br i1 %i.bx, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !187 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !188 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !398 ; 4 uses
  %i.ce = and i64 %i.cd, 7                        ; 5 uses
  %.idx.i = and i64 %i.cd, -8                     ; 4 uses
  %.not24.i = icmp samesign eq i64 %.idx.i, 0     ; 2 uses
  %.not23.i = icmp eq i64 %i.ce, 0                ; 2 uses
  %i.cf = icmp samesign ugt i32 %4, 1
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.cg = add i64 %i.cd, -8                       ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.cg, 24
  %n.vec200 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec200, 3                    ; 2 uses
  %cmp.n214 = icmp eq i64 %i.ci, %n.vec200
  %i.ck = add i64 %i.cd, -8                       ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 24
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.cn = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br label %bb.v

._crit_edge158:                                   ; preds = %bb.ab, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.co = shl nuw nsw i64 %i.p, 3
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #31
          to label %bb.ac unwind label %bb.aj     ; 3 uses

bb.u:                                             ; preds = %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139

bb.v:                                             ; preds = %.lr.ph157, %bb.ab
  %indvars.iv164 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next165, %bb.ab ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv164
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !59
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul i64 %i.cb, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cu ; 9 uses
  %i.cw = load i32, ptr %i.w, align 4, !tbaa !59
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %i.cb, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cy ; 5 uses
  %i.da = getelementptr i8, ptr %i.cv, i64 %.idx.i ; 4 uses
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.v
  br i1 %min.iters.check198, label %.lr.ph.i.preheader219, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i.preheader
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.cj
  %i.dc = getelementptr i8, ptr %i.cv, i64 %i.cj
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next211, %vector.body201 ] ; 2 uses
  %vec.phi203 = phi <2 x i32> [ zeroinitializer, %vector.ph199 ], [ %i.dm, %vector.body201 ]
  %vec.phi204 = phi <2 x i32> [ zeroinitializer, %vector.ph199 ], [ %i.dn, %vector.body201 ]
  %i.dd = shl i64 %index202, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %i.cz, i64 %i.dd ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.cv, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8, !tbaa !341
  %wide.load208 = load <2 x i64>, ptr %i.de, align 8, !tbaa !341
  %i.df = getelementptr i8, ptr %next.gep205, i64 16
  %wide.load209 = load <2 x i64>, ptr %next.gep205, align 8, !tbaa !341
  %wide.load210 = load <2 x i64>, ptr %i.df, align 8, !tbaa !341
  %i.dg = xor <2 x i64> %wide.load209, %wide.load207
  %i.dh = xor <2 x i64> %wide.load210, %wide.load208
  %i.di = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dg)
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dh)
  %i.dk = trunc nuw nsw <2 x i64> %i.di to <2 x i32>
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = add <2 x i32> %vec.phi203, %i.dk        ; 2 uses
  %i.dn = add <2 x i32> %vec.phi204, %i.dl        ; 2 uses
  %index.next211 = add nuw i64 %index202, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next211, %n.vec200
  br i1 %i.do, label %middle.block212, label %vector.body201, !llvm.loop !419

middle.block212:                                  ; preds = %vector.body201
  %bin.rdx213 = add <2 x i32> %i.dn, %i.dm
  %i.dp = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx213) ; 2 uses
  br i1 %cmp.n214, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader219

.lr.ph.i.preheader219:                            ; preds = %.lr.ph.i.preheader, %middle.block212
  %.027.i.ph = phi ptr [ %i.cz, %.lr.ph.i.preheader ], [ %i.db, %middle.block212 ]
  %.02026.i.ph = phi ptr [ %i.cv, %.lr.ph.i.preheader ], [ %i.dc, %middle.block212 ]
  %.02125.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.dp, %middle.block212 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader219, %.lr.ph.i
  %.027.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %.027.i.ph, %.lr.ph.i.preheader219 ] ; 2 uses
  %.02026.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %.02026.i.ph, %.lr.ph.i.preheader219 ] ; 2 uses
  %.02125.i = phi i32 [ %i.dv, %.lr.ph.i ], [ %.02125.i.ph, %.lr.ph.i.preheader219 ]
  %i.dq = load i64, ptr %.02026.i, align 8, !tbaa !341
  %i.dr = load i64, ptr %.027.i, align 8, !tbaa !341
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ds)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = add nuw nsw i32 %.02125.i, %i.du        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02026.i, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %.not.i = icmp eq ptr %i.dw, %i.da
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !420

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block212
  %.lcssa = phi i32 [ %i.dp, %middle.block212 ], [ %i.dv, %.lr.ph.i ]
  %scevgep.i = getelementptr i8, ptr %i.cz, i64 %.idx.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %.021.lcssa.i = phi i32 [ 0, %bb.v ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %.020.lcssa.i = phi ptr [ %i.cv, %bb.v ], [ %i.da, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ %i.cz, %bb.v ], [ %scevgep.i, %._crit_edge.loopexit.i ]
  br i1 %.not23.i, label %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !341
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 8 %.020.lcssa.i, i64 %i.ce, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 8 %.0.lcssa.i, i64 %i.ce, i1 false)
  %.0..0..0..0..0..0.1.i = load i64, ptr %i.c, align 8, !tbaa !341
  %.0..0..0..0..0..0..i = load i64, ptr %i.d, align 8, !tbaa !341
  %i.dy = xor i64 %.0..0..0..0..0..0..i, %.0..0..0..0..0..0.1.i
  %i.dz = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dy)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = add nuw nsw i32 %.021.lcssa.i, %i.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit

_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit:   ; preds = %._crit_edge.i, %bb.w
  %.1.i = phi i32 [ %i.eb, %bb.w ], [ %.021.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv164 ; 3 uses
  store i32 0, ptr %i.ec, align 4, !tbaa !59
  br i1 %i.cf, label %.lr.ph154.preheader, label %._crit_edge155

.lr.ph154.preheader:                              ; preds = %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit
  %i.ed = getelementptr i8, ptr %i.cv, i64 %i.cn
  br label %.lr.ph154

._crit_edge155.loopexit:                          ; preds = %bb.z
  %i.ee = sext i32 %i.fr to i64
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit
  %i.ef = phi i64 [ 0, %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit ], [ %i.ee, %._crit_edge155.loopexit ] ; 2 uses
  %.076.lcssa = phi i32 [ %.1.i, %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit ], [ %.1, %._crit_edge155.loopexit ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !59
  %i.ei = icmp sgt i32 %.076.lcssa, %i.eh
  br i1 %i.ei, label %bb.aa, label %bb.ab

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.z
  %i.ej = phi i32 [ %i.fr, %bb.z ], [ 0, %.lr.ph154.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 1, %.lr.ph154.preheader ] ; 3 uses
  %.076152 = phi i32 [ %.1, %bb.z ], [ %.1.i, %.lr.ph154.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !59
  %i.em = sext i32 %i.el to i64
  %i.en = mul i64 %i.cb, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.en ; 5 uses
  br i1 %.not24.i, label %._crit_edge.i119, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %.lr.ph154
  br i1 %min.iters.check, label %.lr.ph.i112.preheader218, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i112.preheader
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %vec.phi191 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.fa, %vector.body ]
  %i.eq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %i.eq ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.cv, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep192, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep192, align 8, !tbaa !341
  %wide.load193 = load <2 x i64>, ptr %i.er, align 8, !tbaa !341
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  %wide.load194 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !341
  %wide.load195 = load <2 x i64>, ptr %i.es, align 8, !tbaa !341
  %i.et = xor <2 x i64> %wide.load194, %wide.load
  %i.eu = xor <2 x i64> %wide.load195, %wide.load193
  %i.ev = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.et)
  %i.ew = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.eu)
  %i.ex = trunc nuw nsw <2 x i64> %i.ev to <2 x i32>
  %i.ey = trunc nuw nsw <2 x i64> %i.ew to <2 x i32>
  %i.ez = add <2 x i32> %vec.phi, %i.ex           ; 2 uses
  %i.fa = add <2 x i32> %vec.phi191, %i.ey        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.fa, %i.ez
  %i.fc = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit.i117, label %.lr.ph.i112.preheader218

.lr.ph.i112.preheader218:                         ; preds = %.lr.ph.i112.preheader, %middle.block
  %.027.i113.ph = phi ptr [ %i.eo, %.lr.ph.i112.preheader ], [ %i.ep, %middle.block ]
  %.02026.i114.ph = phi ptr [ %i.cv, %.lr.ph.i112.preheader ], [ %i.ed, %middle.block ]
  %.02125.i115.ph = phi i32 [ 0, %.lr.ph.i112.preheader ], [ %i.fc, %middle.block ]
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.preheader218, %.lr.ph.i112
  %.027.i113 = phi ptr [ %i.fk, %.lr.ph.i112 ], [ %.027.i113.ph, %.lr.ph.i112.preheader218 ] ; 2 uses
  %.02026.i114 = phi ptr [ %i.fj, %.lr.ph.i112 ], [ %.02026.i114.ph, %.lr.ph.i112.preheader218 ] ; 2 uses
  %.02125.i115 = phi i32 [ %i.fi, %.lr.ph.i112 ], [ %.02125.i115.ph, %.lr.ph.i112.preheader218 ]
  %i.fd = load i64, ptr %.02026.i114, align 8, !tbaa !341
  %i.fe = load i64, ptr %.027.i113, align 8, !tbaa !341
  %i.ff = xor i64 %i.fe, %i.fd
  %i.fg = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ff)
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = add nuw nsw i32 %.02125.i115, %i.fh     ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.02026.i114, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.027.i113, i64 8
  %.not.i116 = icmp eq ptr %i.fj, %i.da
  br i1 %.not.i116, label %._crit_edge.loopexit.i117, label %.lr.ph.i112, !llvm.loop !422

._crit_edge.loopexit.i117:                        ; preds = %.lr.ph.i112, %middle.block
  %.lcssa189 = phi i32 [ %i.fc, %middle.block ], [ %i.fi, %.lr.ph.i112 ]
  %scevgep.i118 = getelementptr i8, ptr %i.eo, i64 %.idx.i
  br label %._crit_edge.i119

._crit_edge.i119:                                 ; preds = %._crit_edge.loopexit.i117, %.lr.ph154
  %.021.lcssa.i120 = phi i32 [ 0, %.lr.ph154 ], [ %.lcssa189, %._crit_edge.loopexit.i117 ] ; 2 uses
  %.020.lcssa.i121 = phi ptr [ %i.cv, %.lr.ph154 ], [ %i.da, %._crit_edge.loopexit.i117 ]
  %.0.lcssa.i122 = phi ptr [ %i.eo, %.lr.ph154 ], [ %scevgep.i118, %._crit_edge.loopexit.i117 ]
  br i1 %.not23.i, label %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit127, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !341
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 8 %.020.lcssa.i121, i64 %i.ce, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 8 %.0.lcssa.i122, i64 %i.ce, i1 false)
  %.0..0..0..0..0..0.1.i124 = load i64, ptr %i.a, align 8, !tbaa !341
  %.0..0..0..0..0..0..i125 = load i64, ptr %i.b, align 8, !tbaa !341
  %i.fl = xor i64 %.0..0..0..0..0..0..i125, %.0..0..0..0..0..0.1.i124
  %i.fm = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fl)
  %i.fn = trunc nuw nsw i64 %i.fm to i32
  %i.fo = add nuw nsw i32 %.021.lcssa.i120, %i.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit127

_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit127: ; preds = %._crit_edge.i119, %bb.x
  %.1.i126 = phi i32 [ %i.fo, %bb.x ], [ %.021.lcssa.i120, %._crit_edge.i119 ] ; 2 uses
  %i.fp = icmp sgt i32 %.076152, %.1.i126
  br i1 %i.fp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit127
  %i.fq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.fq, ptr %i.ec, align 4, !tbaa !59
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit127
  %i.fr = phi i32 [ %i.fq, %bb.y ], [ %i.ej, %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit127 ] ; 2 uses
  %.1 = phi i32 [ %.1.i126, %bb.y ], [ %.076152, %_ZNK7cvflann7HammingIhEclIPhS3_EEiT_T0_mi.exit127 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge155.loopexit, label %.lr.ph154, !llvm.loop !423

bb.aa:                                            ; preds = %._crit_edge155
  store i32 %.076.lcssa, ptr %i.eg, align 4, !tbaa !59
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !59
  %.pre170 = sext i32 %.pre to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge155
  %.pre-phi = phi i64 [ %.pre170, %bb.aa ], [ %i.ef, %._crit_edge155 ]
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %.pre-phi ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !59
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !59
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %10
  br i1 %exitcond168.not, label %._crit_edge158, label %bb.v, !llvm.loop !424

bb.ac:                                            ; preds = %._crit_edge158
  invoke void @_ZN7cvflann11KMeansIndexINS_7HammingIhEEE24refineBitfieldClusteringEPiiiPPhRSt6vectorIiSaIiEES4_S4_(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bo)
          to label %.noexc128 unwind label %bb.ak, !inline_history !425

.noexc128:                                        ; preds = %bb.ac
  invoke void @_ZN7cvflann11KMeansIndexINS_7HammingIhEEE31computeAnyBitfieldSubClusteringEPNS3_10KMeansNodeEPiiiiPPhRSt6vectorIiSaIiEES6_S6_(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bo)
          to label %_ZN7cvflann11KMeansIndexINS_7HammingIhEEE24refineAndSplitClusteringEPNS3_10KMeansNodeEPiiiiPPhRSt6vectorIiSaIiEES6_S6_PKS2_.exit unwind label %bb.ak, !inline_history !425

_ZN7cvflann11KMeansIndexINS_7HammingIhEEE24refineAndSplitClusteringEPNS3_10KMeansNodeEPiiiiPPhRSt6vectorIiSaIiEES6_S6_PKS2_.exit: ; preds = %.noexc128
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #30
  %i.fv = load ptr, ptr %9, align 8, !tbaa !416   ; 3 uses
  %.not.i.i130 = icmp eq ptr %i.fv, %i.bq
  %i.fw = icmp eq ptr %i.fv, null
  %or.cond.i = or i1 %.not.i.i130, %i.fw
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN7cvflann11KMeansIndexINS_7HammingIhEEE24refineAndSplitClusteringEPNS3_10KMeansNodeEPiiiiPPhRSt6vectorIiSaIiEES6_S6_PKS2_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.fv) #30
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %_ZN7cvflann11KMeansIndexINS_7HammingIhEEE24refineAndSplitClusteringEPNS3_10KMeansNodeEPiiiiPPhRSt6vectorIiSaIiEES6_S6_PKS2_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.fx = load ptr, ptr %8, align 8, !tbaa !416   ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.fx, %i.bn
  %i.fy = icmp eq ptr %i.fx, null
  %or.cond.i132 = or i1 %.not.i.i131, %i.fy
  br i1 %or.cond.i132, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit133, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.fx) #30
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit133

_ZN2cv10AutoBufferIiLm264EED2Ev.exit133:          ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.fz = load ptr, ptr %7, align 8, !tbaa !352   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit133
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !354
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit133, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt4sortIPiEvT_S1_.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.gf = load ptr, ptr %6, align 8, !tbaa !416   ; 3 uses
  %.not.i.i134 = icmp eq ptr %i.gf, %i.q
  %i.gg = icmp eq ptr %i.gf, null
  %or.cond.i135 = or i1 %.not.i.i134, %i.gg
  br i1 %or.cond.i135, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.gf) #30
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136

_ZN2cv10AutoBufferIiLm264EED2Ev.exit136:          ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136, %_ZSt4sortIPiEvT_S1_.exit
  ret void

bb.aj:                                            ; preds = %._crit_edge158
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %.noexc128, %bb.ac
  %i.gi = landingpad { ptr, i32 }
          cleanup
  %.pre169 = load ptr, ptr %9, align 8, !tbaa !416
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gj = phi ptr [ %.pre169, %bb.ak ], [ %i.bw, %bb.aj ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.ak ], [ %i.gh, %bb.aj ] ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.gj, %i.bq
  %i.gk = icmp eq ptr %i.gj, null
  %or.cond.i138 = or i1 %.not.i.i137, %i.gk
  br i1 %or.cond.i138, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.gj) #30
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139

_ZN2cv10AutoBufferIiLm264EED2Ev.exit139:          ; preds = %bb.am, %bb.al, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %.pn, %bb.al ], [ %.pn, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.gl = load ptr, ptr %8, align 8, !tbaa !416   ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.gl, %i.bn
  %i.gm = icmp eq ptr %i.gl, null
  %or.cond.i141 = or i1 %.not.i.i140, %i.gm
  br i1 %or.cond.i141, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit142, label %bb.an

bb.an:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139
  call void @_ZdaPv(ptr noundef nonnull %i.gl) #30
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit142

_ZN2cv10AutoBufferIiLm264EED2Ev.exit142:          ; preds = %bb.an, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %.pn.pn, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139 ], [ %.pn.pn, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.gn = load ptr, ptr %7, align 8, !tbaa !352   ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit144, label %bb.ao

bb.ao:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit142
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !354
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

_ZNSt6vectorIiSaIiEED2Ev.exit144:                 ; preds = %bb.ao, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit142, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.s ], [ %.pn.pn.pn, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit142 ], [ %.pn.pn.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit144, %bb.l
  %.pn96 = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.gt = load ptr, ptr %6, align 8, !tbaa !416   ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.gt, %i.q
  %i.gu = icmp eq ptr %i.gt, null
  %or.cond.i146 = or i1 %.not.i.i145, %i.gu
  br i1 %or.cond.i146, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit147, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.gt) #30
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit147

_ZN2cv10AutoBufferIiLm264EED2Ev.exit147:          ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn96
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_7HammingIhEEE29computeBitfieldNodeStatisticsEPNS3_10KMeansNodeEPij(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !398  ; 10 uses
  %i.g = shl i64 %i.f, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #31 ; 12 uses
  %i.i = trunc i64 %i.f to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !286
  %i.l = add nsw i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 8, !tbaa !286
  %i.m = and i64 %i.g, 4294967288                 ; 5 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #31 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.n, i1 false)
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !188
  %i.t = and i64 %i.f, 7                          ; 2 uses
  %.idx.i = and i64 %i.f, -8                      ; 2 uses
  %.not17.i = icmp samesign eq i64 %.idx.i, 0
  %.not16.i = icmp eq i64 %i.t, 0
  %.not147 = icmp eq i64 %i.m, 0
  %i.u = add nsw i64 %i.m, -8
  %i.v = lshr exact i64 %i.u, 3
  %wide.trip.count = zext i32 %3 to i64
  %i.w = add i64 %i.f, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 24
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

._crit_edge136.loopexit:                          ; preds = %._crit_edge
  %i.aa = uitofp i64 %i.hc to double
  br label %._crit_edge136

._crit_edge136:                                   ; preds = %._crit_edge136.loopexit, %bb.a
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7cvflann3lsh8LshTableIhEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_:bb.a
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  store ptr %i.s, ptr %i.e, align 8, !tbaa !751, !alias.scope !779, !noalias !782
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !786, !alias.scope !782, !noalias !779
  store ptr %i.v, ptr %i.s, align 8, !tbaa !786, !alias.scope !779, !noalias !782
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.w = phi ptr [ %i.s, %bb.b ], [ %i.g, %.lr.ph.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN7cvflann3lsh8LshTableIhEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59, !noalias !782
  %i.z = zext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.j
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aa
  store ptr %i.k, ptr %i.ab, align 8, !tbaa !527, !noalias !782
  br label %_ZSt19__relocate_object_aIN7cvflann3lsh8LshTableIhEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN7cvflann3lsh8LshTableIhEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64
  store i64 0, ptr %i.ac, align 8, !tbaa !571, !alias.scope !782, !noalias !779
  store i64 1, ptr %i.i, align 8, !tbaa !752, !alias.scope !782, !noalias !779
  store ptr null, ptr %i.t, align 8, !tbaa !786, !alias.scope !782, !noalias !779
  store ptr %i.t, ptr %i.f, align 8, !tbaa !751, !alias.scope !782, !noalias !779
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !782, !noalias !779
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !770, !alias.scope !782, !noalias !779
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !770, !alias.scope !779, !noalias !782
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !776, !alias.scope !782, !noalias !779
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !776, !alias.scope !779, !noalias !782
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !748, !alias.scope !782, !noalias !779
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !748, !alias.scope !779, !noalias !782
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 24, i1 false), !alias.scope !782, !noalias !779
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !782, !noalias !779
  store <2 x i64> %i.ao, ptr %i.am, align 8, !alias.scope !779, !noalias !782
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !776, !alias.scope !782, !noalias !779
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !776, !alias.scope !779, !noalias !782
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 144
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !748, !alias.scope !782, !noalias !779
  store ptr %i.au, ptr %i.as, align 8, !tbaa !748, !alias.scope !779, !noalias !782
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !782, !noalias !779
  tail call void @_ZN7cvflann3lsh8LshTableIhED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.0911.i.i) #28
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN7cvflann3lsh8LshTableIhEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !787

_ZSt12__relocate_aIPN7cvflann3lsh8LshTableIhEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN7cvflann3lsh8LshTableIhEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.aw, %_ZSt19__relocate_object_aIN7cvflann3lsh8LshTableIhEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE14_M_move_assignEOSI_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.h, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !749  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE19_M_deallocate_nodesEPS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !525 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !334  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !335
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i: ; preds = %bb.c, %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 40) #30
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE19_M_deallocate_nodesEPS8_.exit, label %.lr.ph.i, !llvm.loop !750

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE19_M_deallocate_nodesEPS8_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !751    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE19_M_deallocate_nodesEPS8_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !752
  %i.q = shl i64 %i.p, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.q) #30
  br label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIjSaIjEEELb0EEEEE19_M_deallocate_nodesEPS8_.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !784
  %i.t = load ptr, ptr %1, align 8, !tbaa !751    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !786
  store ptr %i.w, ptr %i.m, align 8, !tbaa !786
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.e
  %i.x = phi ptr [ %i.m, %bb.e ], [ %i.t, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !751
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !752
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !749 ; 3 uses
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !749
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !738
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !738
  %.not.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i12, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = zext i32 %i.ah to i64
  %i.aj = urem i64 %i.ai, %i.z
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aj
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !527
  br label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !571
  store i64 1, ptr %i.y, align 8, !tbaa !752
  store ptr null, ptr %i.u, align 8, !tbaa !786
  store ptr %i.u, ptr %1, align 8, !tbaa !751
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann3lsh8LshTableIhE3addEjPKh(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<unsigned int, std::pair<const unsigned int, std::vector<unsigned int>>, std::allocator<std::pair<const unsigned int, std::vector<unsigned int>>>, std::__detail::_Select1st, std::equal_to<unsigned int>, std::hash<unsigned int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Hashtable<unsigned int, std::pair<const unsigned int, std::vector<unsigned int>>, std::allocator<std::pair<const unsigned int, std::vector<unsigned int>>>, std::__detail::_Select1st, std::equal_to<unsigned int>, std::hash<unsigned int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.c = load i32, ptr %i.b, align 4, !tbaa !759  ; 4 uses
  %.not43.i = icmp eq i32 %i.c, 0
  br i1 %.not43.i, label %_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.a
  %i.d = zext i32 %i.c to i64
  %i.e = add nsw i64 %i.d, -8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !746
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph40.i
  %.038.i = phi ptr [ %2, %.lr.ph40.i ], [ %i.u, %._crit_edge.i ] ; 3 uses
  %.02337.i = phi i32 [ 0, %.lr.ph40.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %.02436.i = phi i64 [ 1, %.lr.ph40.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.02535.i = phi i64 [ 0, %.lr.ph40.i ], [ %.126.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.h = zext i32 %.02337.i to i64                ; 2 uses
  %.not.i = icmp ult i64 %i.e, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.038.i, align 8, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.j = sub nuw i32 %i.c, %.02337.i
  %i.k = zext i32 %i.j to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 8 %.038.i, i64 %i.k, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.022.i = phi i64 [ %i.i, %bb.c ], [ %.0..0..0..0..0..0..i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %.not2830.i = icmp eq i64 %i.m, 0
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.02133.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.m, %bb.e ] ; 4 uses
  %.132.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.02436.i, %bb.e ] ; 2 uses
  %.12631.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.02535.i, %bb.e ]
  %i.n = sub i64 0, %.02133.i
  %i.o = and i64 %.02133.i, %i.n                  ; 3 uses
  %i.p = and i64 %i.o, %.022.i
  %.not29.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not29.i, i64 0, i64 %.132.i
  %i.r = add i64 %i.q, %.12631.i                  ; 2 uses
  %i.s = xor i64 %i.o, %.02133.i
  %i.t = shl i64 %.132.i, 1                       ; 2 uses
  %.not28.i = icmp eq i64 %i.o, %.02133.i
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !788

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.126.lcssa.i = phi i64 [ %.02535.i, %bb.e ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.02436.i, %bb.e ], [ %i.t, %.lr.ph.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.038.i, i64 8
  %i.v = add i32 %.02337.i, 8                     ; 2 uses
  %i.w = icmp ult i32 %i.v, %i.c
  br i1 %i.w, label %bb.b, label %_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit, !llvm.loop !789

_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit:     ; preds = %._crit_edge.i, %bb.a
  %.025.lcssa.i = phi i64 [ 0, %bb.a ], [ %.126.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.x = trunc i64 %.025.lcssa.i to i32           ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load i32, ptr %i.y, align 8, !tbaa !770
  switch i32 %i.z, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit [
    i32 0, label %bb.f
    i32 1, label %bb.l
    i32 2, label %bb.v
  ]

bb.f:                                             ; preds = %_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit
  %i.aa = and i64 %.025.lcssa.i, 4294967295
  %i.ab = load ptr, ptr %0, align 8, !tbaa !753
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !731 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !335
  %.not.i2 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %i.ae, align 4, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !731
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !334 ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 6 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #31 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store i32 %1, ptr %i.au, align 4, !tbaa !59
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !334
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !731
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !335
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.l:                                             ; preds = %_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = and i64 %.025.lcssa.i, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = lshr i64 %.025.lcssa.i, 6
  %i.bc = and i64 %i.bb, 67108863
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !746
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !14
  %i.bg = or i64 %i.bf, %i.ba
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bi = and i64 %.025.lcssa.i, 4294967295       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !752 ; 2 uses
  %i.bl = urem i64 %i.bi, %i.bk                   ; 3 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !751
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !525 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !59
  %i.bs = icmp eq i32 %i.br, %i.x
  br i1 %i.bs, label %_ZNSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.bt = icmp eq i32 %i.bw, %i.x
  br i1 %i.bt, label %_ZNSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !790

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.020.i.i.i.i = phi ptr [ %i.bu, %bb.n ], [ %i.bp, %bb.m ]
  %i.bu = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !525 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !59 ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = urem i64 %i.bx, %i.bk
  %.not19.i.i.i.i = icmp eq i64 %i.by, %i.bl
  br i1 %.not19.i.i.i.i, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !790

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.o
  br label %.loopexit.i.i, !llvm.loop !790

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.bh, ptr %4, align 8, !tbaa !791
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 5 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !525
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.x, ptr %i.cb, align 8, !tbaa !795
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !797
  %i.cd = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 noundef %i.bl, i64 noundef %i.bi, ptr noundef nonnull %i.ca, i64 noundef 1)
          to label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.p

_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit

common.resume:                                    ; preds = %bb.z, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.p ], [ %i.dx, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %.loopexit.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

_ZNSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit: ; preds = %bb.n, %bb.m, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i
  %.pn.i.i = phi ptr [ %i.cd, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bp, %bb.m ], [ %i.bu, %bb.n ] ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !731 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !335
  %.not.i3 = icmp eq ptr %i.cg, %i.ci
  br i1 %.not.i3, label %bb.r, label %bb.q
end_hunk_1
begin_hunk_2_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !14
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !746
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !772
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !748
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann10load_valueIhEEvP8_IO_FILERNS_6MatrixIT_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = tail call i64 @fread(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 1, ptr noundef %0)
  %.not = icmp eq i64 %i.a, 1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -212, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN7cvflann10load_valueIiEEvP8_IO_FILERT_m, ptr noundef nonnull @.str.54, i32 noundef 162) #29
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !186
  %i.l = mul i64 %i.k, %i.i                       ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #31 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !187
  %i.o = tail call i64 @fread(ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef %i.l, ptr noundef %0)
  %i.p = load i64, ptr %1, align 8, !tbaa !184
  %i.q = load i64, ptr %i.j, align 8, !tbaa !186
  %i.r = mul i64 %i.q, %i.p
  %.not17 = icmp eq i64 %i.o, %i.r
  br i1 %.not17, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -212, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN7cvflann10load_valueIiEEvP8_IO_FILERT_m, ptr noundef nonnull @.str.54, i32 noundef 167) #29
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.l
  %i.x = load i64, ptr %i.v, align 8, !tbaa !18
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.t, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann8LshIndexINS_7HammingIhEEE12getNeighborsEPKhRNS_9ResultSetIiEE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !807  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !807  ; 2 uses
  %.not53 = icmp eq ptr %i.e, %i.g
  br i1 %.not53, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph56, %._crit_edge
  %.sroa.028.054 = phi ptr [ %i.e, %.lr.ph56 ], [ %i.et, %._crit_edge ] ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !759  ; 4 uses
  %.not43.i = icmp eq i32 %i.n, 0
  br i1 %.not43.i, label %_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.b
  %i.o = zext i32 %i.n to i64
  %i.p = add nsw i64 %i.o, -8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !746
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph40.i
  %.038.i = phi ptr [ %1, %.lr.ph40.i ], [ %i.af, %._crit_edge.i ] ; 3 uses
  %.02337.i = phi i32 [ 0, %.lr.ph40.i ], [ %i.ag, %._crit_edge.i ] ; 3 uses
  %.02436.i = phi i32 [ 1, %.lr.ph40.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.02535.i = phi i32 [ 0, %.lr.ph40.i ], [ %.126.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.s = zext i32 %.02337.i to i64                ; 2 uses
  %.not.i = icmp ult i64 %i.p, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %.038.i, align 8, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.u = sub nuw i32 %i.n, %.02337.i
  %i.v = zext i32 %i.u to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 8 %.038.i, i64 %i.v, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.022.i = phi i64 [ %i.t, %bb.d ], [ %.0..0..0..0..0..0..i, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %.not2830.i = icmp eq i64 %i.x, 0
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.02133.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.x, %bb.f ] ; 4 uses
  %.132.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %.02436.i, %bb.f ] ; 2 uses
  %.12631.i = phi i32 [ %i.ac, %.lr.ph.i ], [ %.02535.i, %bb.f ]
  %i.y = sub i64 0, %.02133.i
  %i.z = and i64 %.02133.i, %i.y                  ; 3 uses
  %i.aa = and i64 %i.z, %.022.i
  %.not29.i = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not29.i, i32 0, i32 %.132.i
  %i.ac = add i32 %i.ab, %.12631.i                ; 2 uses
  %i.ad = xor i64 %i.z, %.02133.i
  %i.ae = shl i32 %.132.i, 1                      ; 2 uses
  %.not28.i = icmp eq i64 %i.z, %.02133.i
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !788

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.126.lcssa.i = phi i32 [ %.02535.i, %bb.f ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.02436.i, %bb.f ], [ %i.ae, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.038.i, i64 8
  %i.ag = add i32 %.02337.i, 8                    ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %i.n
  br i1 %i.ah, label %bb.c, label %_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit, !llvm.loop !789

_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit:     ; preds = %._crit_edge.i, %bb.b
  %.025.lcssa.i = phi i32 [ 0, %bb.b ], [ %.126.lcssa.i, %._crit_edge.i ]
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !304 ; 2 uses
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !304 ; 2 uses
  %.not3750 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not3750, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %_ZNK7cvflann3lsh8LshTableIhE6getKeyEPKh.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.028.054, i64 88
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph52, %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread
  %.sroa.022.051 = phi ptr [ %i.ai, %.lr.ph52 ], [ %i.es, %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.022.051, align 4, !tbaa !59
  %i.ar = xor i32 %i.aq, %.025.lcssa.i            ; 9 uses
  %i.as = load i32, ptr %i.ak, align 8, !tbaa !770
  switch i32 %i.as, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread [
    i32 0, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit
    i32 1, label %bb.h
    i32 2, label %bb.o
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = zext i32 %i.ar to i64                   ; 3 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !746
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = and i64 %i.at, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not.i9 = icmp eq i64 %i.ba, 0
  br i1 %.not.i9, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !738
  %.not.not.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.i, %bb.j
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.j ], [ %i.ao, %bb.i ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !525 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !59
  %i.be = icmp eq i32 %i.ar, %i.bd
  br i1 %i.be, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %.preheader, !llvm.loop !808

bb.k:                                             ; preds = %bb.i
  %i.bf = load i64, ptr %i.an, align 8, !tbaa !752 ; 2 uses
  %i.bg = urem i64 %i.at, %i.bf                   ; 2 uses
  %i.bh = load ptr, ptr %i.am, align 8, !tbaa !751
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !525 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !59
  %i.bn = icmp eq i32 %i.ar, %i.bm
  br i1 %i.bn, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.bo = icmp eq i32 %i.ar, %i.br
  br i1 %i.bo, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !790

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %bb.m
  %.020.i.i.i.i.i = phi ptr [ %i.bp, %bb.m ], [ %i.bk, %bb.l ]
  %i.bp = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !525 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not18.i.i.i.i.i, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !59 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = urem i64 %i.bs, %i.bf
  %.not19.i.i.i.i.i = icmp eq i64 %i.bt, %i.bg
  br i1 %.not19.i.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !790

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.n
  br label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, !llvm.loop !790

_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.m, %bb.j, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i, %bb.l, %bb.k
  %.sroa.06.1.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i ], [ null, %.preheader ], [ %i.bk, %bb.l ], [ null, %bb.k ], [ %.sroa.06.0.i.i.i, %bb.j ], [ null, %.lr.ph.i.i.i.i.i ], [ %i.bp, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  br label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread34

bb.o:                                             ; preds = %bb.g
  %i.bv = load i64, ptr %i.al, align 8, !tbaa !738
  %.not.not.i.i2.i = icmp eq i64 %i.bv, 0
  br i1 %.not.not.i.i2.i, label %.preheader60, label %bb.q

.preheader60:                                     ; preds = %bb.o, %bb.p
  %.sroa.06.0.in.i.i10.i = phi ptr [ %.sroa.06.0.i.i11.i, %bb.p ], [ %i.ao, %bb.o ]
  %.sroa.06.0.i.i11.i = load ptr, ptr %.sroa.06.0.in.i.i10.i, align 8, !tbaa !525 ; 4 uses
  %.not.i.i12.i = icmp eq ptr %.sroa.06.0.i.i11.i, null
  br i1 %.not.i.i12.i, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread, label %bb.p

bb.p:                                             ; preds = %.preheader60
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i11.i, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp eq i32 %i.ar, %i.bx
  br i1 %i.by, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit13.i, label %.preheader60, !llvm.loop !808

bb.q:                                             ; preds = %bb.o
  %i.bz = zext i32 %i.ar to i64
  %i.ca = load i64, ptr %i.an, align 8, !tbaa !752 ; 2 uses
  %i.cb = urem i64 %i.bz, %i.ca                   ; 2 uses
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !751
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i3.i, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !525 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !59
  %i.ci = icmp eq i32 %i.ar, %i.ch
  br i1 %i.ci, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit13.i, label %.lr.ph.i.i.i.i4.i

bb.s:                                             ; preds = %bb.t
  %i.cj = icmp eq i32 %i.ar, %i.cm
  br i1 %i.cj, label %_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit13.i, label %.lr.ph.i.i.i.i4.i, !llvm.loop !790

.lr.ph.i.i.i.i4.i:                                ; preds = %bb.r, %bb.s
  %.020.i.i.i.i5.i = phi ptr [ %i.ck, %bb.s ], [ %i.cf, %bb.r ]
  %i.ck = load ptr, ptr %.020.i.i.i.i5.i, align 8, !tbaa !525 ; 4 uses
  %.not18.i.i.i.i6.i = icmp eq ptr %i.ck, null
  br i1 %.not18.i.i.i.i6.i, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i4.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !59 ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = urem i64 %i.cn, %i.ca
  %.not19.i.i.i.i7.i = icmp eq i64 %i.co, %i.cb
  br i1 %.not19.i.i.i.i7.i, label %bb.s, label %..loopexit_crit_edge21.i.i.i.i8.i, !llvm.loop !790

..loopexit_crit_edge21.i.i.i.i8.i:                ; preds = %bb.t
  br label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread, !llvm.loop !790

_ZNKSt13unordered_mapIjSt6vectorIjSaIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit13.i: ; preds = %bb.s, %bb.p, %bb.r
  %.sroa.06.1.i.i9.i = phi ptr [ %.sroa.06.0.i.i11.i, %bb.p ], [ %i.cf, %bb.r ], [ %i.ck, %bb.s ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i9.i, i64 16
  br label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread34

_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit: ; preds = %bb.g
  %i.cq = zext i32 %i.ar to i64
  %i.cr = load ptr, ptr %.sroa.028.054, align 8, !tbaa !753 ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = icmp eq ptr %i.cr, null
  br i1 %i.ct, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread, label %_ZNK7cvflann3lsh8LshTableIhE16getBucketFromKeyEj.exit.thread34
end_hunk_2
