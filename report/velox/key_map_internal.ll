Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/key_map_internal?download=true
inline.NumInlined: 327
inline.NumDeleted: 153
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5arrow7compute10SwissTable11grow_doubleEv:bb.a
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8    ; 12 uses
  %i.d = icmp slt i32 %i.c, 6                     ; 3 uses
  %i.e = icmp samesign ult i32 %i.c, 14           ; 3 uses
  %i.f = icmp slt i32 %i.c, 30                    ; 3 uses
  %i.g = select i1 %i.f, i32 32, i32 64
  %i.h = select i1 %i.e, i32 16, i32 %i.g
  %i.i = select i1 %i.d, i32 8, i32 %i.h          ; 2 uses
  %i.j = add nsw i32 %i.c, 1                      ; 3 uses
  %i.k = icmp slt i32 %i.c, 5                     ; 3 uses
  %i.l = icmp slt i32 %i.c, 13                    ; 3 uses
  %i.m = icmp slt i32 %i.c, 29                    ; 3 uses
  %i.n = sub nuw nsw i32 64, %i.i
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 -1, %i.o                        ; 2 uses
  %i.q = add nuw nsw i32 %i.i, 8
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = select i1 %i.m, i64 40, i64 72
  %i.t = select i1 %i.l, i64 24, i64 %i.s
  %i.u = select i1 %i.k, i64 16, i64 %i.t         ; 6 uses
  %i.v = zext nneg i32 %i.j to i64
  %i.w = shl i64 %i.u, %i.v
  %i.x = add i64 %i.w, 64                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !127
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %4, i64 noundef %i.x, ptr noundef %i.z)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !98
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.al unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.ad = add nsw i32 %i.c, 4
  %i.ae = shl i32 4, %i.ad
  %i.af = add nuw nsw i32 %i.ae, 64
  %i.ag = sext i32 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !134, !noalias !135 ; 2 uses
  store i64 %i.ai, ptr %5, align 8, !tbaa !134, !alias.scope !135
  store ptr null, ptr %i.ah, align 8, !tbaa !134, !noalias !135
  %.cast = inttoptr i64 %i.ai to ptr              ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !71, !range !78, !noundef !79
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.an = load i8, ptr %i.am, align 8, !range !78
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = select i1 %i.al, i1 %i.ao, i1 false, !prof !80
  %i.aq = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = select i1 %i.ap, ptr %i.ar, ptr null, !prof !80
  call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 0, i64 %i.x, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !127
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, i64 noundef %i.ag, ptr noundef %i.at)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %6, align 8, !tbaa !98
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.i, label %bb.f, !prof !80

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ah unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !134, !noalias !142 ; 2 uses
  store i64 %i.az, ptr %7, align 8, !tbaa !134, !alias.scope !142
  store ptr null, ptr %i.ay, align 8, !tbaa !134, !noalias !142
  %.cast168 = inttoptr i64 %i.az to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %.cast168, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !8
  %.not188 = icmp eq i32 %i.bc, 31
  br i1 %.not188, label %._crit_edge187, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = sub nsw i32 31, %i.c
  %i.bh = sub i32 24, %i.c
  %i.bi = select i1 %i.f, i32 5, i32 6
  %i.bj = select i1 %i.e, i32 4, i32 %i.bi
  %i.bk = select i1 %i.d, i32 3, i32 %i.bj
  %i.bl = select i1 %i.m, i32 5, i32 6
  %i.bm = select i1 %i.l, i32 4, i32 %i.bl
  %i.bn = select i1 %i.k, i32 3, i32 %i.bm
  br label %bb.k

.preheader:                                       ; preds = %._crit_edge
  %.not190 = icmp eq i32 %i.do, 31
  br i1 %.not190, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = sub nsw i32 31, %i.c
  %i.br = select i1 %i.f, i32 5, i32 6
  %i.bs = select i1 %i.e, i32 4, i32 %i.br
  %i.bt = select i1 %i.d, i32 3, i32 %i.bs
  %i.bu = sub i32 24, %i.c
  %notmask = shl nsw i32 -1, %i.j
  %i.bv = xor i32 %notmask, -1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = select i1 %i.m, i32 5, i32 6
  %i.by = select i1 %i.l, i32 4, i32 %i.bx
  %i.bz = select i1 %i.k, i32 3, i32 %i.by
  br label %bb.u

bb.j:                                             ; preds = %bb.z, %._crit_edge187
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %7, align 8, !tbaa !134   ; 3 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !143
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(80) %i.cb) #19, !inline_history !145
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %.lr.ph172, %._crit_edge
  %indvars.iv195 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next196, %._crit_edge ] ; 6 uses
  %i.cf = load ptr, ptr %i.bd, align 8, !tbaa !18 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !71, !range !78, !noundef !79
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ck = load i8, ptr %i.cj, align 8, !range !78
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false, !prof !80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = select i1 %i.cm, ptr %i.co, ptr null, !prof !80
  %i.cq = mul nuw nsw i64 %indvars.iv195, %i.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !134   ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !71, !range !78, !noundef !79
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cx = load i8, ptr %i.cw, align 8, !range !78
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %i.cv, i1 %i.cy, i1 false, !prof !80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = select i1 %i.cz, ptr %i.db, ptr null, !prof !80
  %i.dd = shl nuw nsw i64 %indvars.iv195, 1
  %i.de = mul nuw nsw i64 %i.u, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de ; 3 uses
  %i.dg = load i64, ptr %i.cr, align 8, !tbaa !42
  %i.dh = and i64 %i.dg, -9187201950435737472
  %i.di = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dh, i1 false)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = lshr i32 %i.dj, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.be, align 4, !tbaa !22
  store i32 0, ptr %i.a, align 4, !tbaa !22
  store i64 -9187201950435737472, ptr %i.df, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.u
  store i64 -9187201950435737472, ptr %i.dl, align 1
  %.not189 = icmp eq i32 %i.dk, 0
  br i1 %.not189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %wide.trip.count = zext nneg i32 %i.dk to i64
  %.idx217 = shl nuw nsw i64 %indvars.iv195, 5
  %indvars.iv195.tr = trunc nuw nsw i64 %indvars.iv195 to i32
  %i.dn = shl i32 %indvars.iv195.tr, 4
  br label %bb.l

._crit_edge:                                      ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.do = load i32, ptr %i.b, align 4, !tbaa !8   ; 3 uses
  %i.dp = shl nuw i32 1, %i.do
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next196, %i.dq
  br i1 %i.dr, label %bb.k, label %.preheader, !llvm.loop !146

bb.l:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.ds = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %8 = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx217
  %i.dw = load i32, ptr %8, align 4, !tbaa !22    ; 3 uses
  %i.dx = lshr i32 %i.dw, %i.bg                   ; 2 uses
  %i.dy = lshr i32 %i.dx, 1
  %i.dz = zext nneg i32 %i.dy to i64
  %.not134 = icmp eq i64 %indvars.iv195, %i.dz
  br i1 %.not134, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ea = and i32 %i.dx, 1                        ; 2 uses
  %i.eb = lshr i32 %i.dw, %i.bh
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = and i8 %i.ec, 127
  %i.ee = trunc nuw nsw i64 %indvars.iv to i32
  %i.ef = shl i32 %i.ee, %i.bk
  %i.eg = sext i32 %i.ef to i64
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.eh
  %.0.copyload.i = load i64, ptr %i.ei, align 1
  %i.ej = and i64 %.0.copyload.i, %i.p
  %i.ek = shl nuw nsw i32 %i.ea, 3
  %i.el = or disjoint i32 %i.ek, %i.dn
  %i.em = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !22 ; 4 uses
  %i.ep = add nsw i32 %i.el, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eq
  store i32 %i.dw, ptr %i.er, align 4, !tbaa !22
  %i.es = mul nuw nsw i64 %i.u, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.es ; 2 uses
  %i.eu = sub nsw i32 7, %i.eo
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 %i.ev
  store i8 %i.ed, ptr %i.ew, align 1, !tbaa !21
  %i.ex = shl i32 %i.eo, %i.bn
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ez = ashr i32 %i.ex, 3
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 %i.fa ; 2 uses
  %.0.copyload.i141 = load i64, ptr %i.fb, align 8
  %i.fc = or i64 %.0.copyload.i141, %i.ej
  store i64 %i.fc, ptr %i.fb, align 8
  %i.fd = add nsw i32 %i.eo, 1
  store i32 %i.fd, ptr %i.en, align 4, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !147

._crit_edge187:                                   ; preds = %._crit_edge184, %bb.i, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %._crit_edge187
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !148 ; 8 uses
  %i.fh = load <2 x ptr>, ptr %i.fe, align 8, !tbaa !53
  %i.fi = load <2 x ptr>, ptr %3, align 16, !tbaa !53
  store <2 x ptr> %i.fi, ptr %i.fe, align 8, !tbaa !53
  store <2 x ptr> %i.fh, ptr %3, align 16, !tbaa !53
  %.not.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.fj, align 8, !tbaa !149
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !151
  %i.fo = load ptr, ptr %i.fg, align 8, !tbaa !143
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19, !inline_history !152
  %i.fr = load ptr, ptr %i.fg, align 8, !tbaa !143
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19, !inline_history !152
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.r ], [ %i.fw, %bb.s ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.t, label %bb.z, !prof !153

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph186, %._crit_edge184
  %i.fy = phi i32 [ %i.do, %.lr.ph186 ], [ %i.gr, %._crit_edge184 ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next204, %._crit_edge184 ] ; 4 uses
  %i.fz = load ptr, ptr %i.bo, align 8, !tbaa !18 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 9
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !71, !range !78, !noundef !79
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ge = load i8, ptr %i.gd, align 8, !range !78
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = select i1 %i.gc, i1 %i.gf, i1 false, !prof !80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = select i1 %i.gg, ptr %i.gi, ptr null, !prof !80
  %i.gk = mul nuw nsw i64 %indvars.iv203, %i.r
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gk ; 2 uses
  %.0.copyload.i142 = load i64, ptr %i.gl, align 1
  %i.gm = and i64 %.0.copyload.i142, -9187201950435737472
  %i.gn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gm, i1 false)
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = lshr i32 %i.go, 3                       ; 2 uses
  %.not191 = icmp eq i32 %i.gp, 0
  br i1 %.not191, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.u
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %wide.trip.count201 = zext nneg i32 %i.gp to i64
  %.idx218 = shl nuw nsw i64 %indvars.iv203, 5
  br label %bb.v

._crit_edge184.loopexit:                          ; preds = %bb.y
  %.pre = load i32, ptr %i.b, align 4, !tbaa !8
  br label %._crit_edge184

._crit_edge184:                                   ; preds = %._crit_edge184.loopexit, %bb.u
  %i.gr = phi i32 [ %.pre, %._crit_edge184.loopexit ], [ %i.fy, %bb.u ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.gs = shl nuw i32 1, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next204, %i.gt
  br i1 %i.gu, label %bb.u, label %._crit_edge187, !llvm.loop !154

bb.v:                                             ; preds = %.lr.ph183, %bb.y
  %indvars.iv198 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next199, %bb.y ] ; 3 uses
  %i.gv = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv198
  %9 = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx218
  %i.gz = load i32, ptr %9, align 4, !tbaa !22    ; 3 uses
  %i.ha = lshr i32 %i.gz, %i.bq
  %i.hb = zext i32 %i.ha to i64                   ; 4 uses
  %i.hc = lshr i64 %i.hb, 1
  %.not = icmp eq i64 %i.hc, %indvars.iv203
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hd = trunc nuw nsw i64 %indvars.iv198 to i32
  %i.he = shl i32 %i.hd, %i.bt
  %i.hf = sext i32 %i.he to i64
  %i.hg = lshr i64 %i.hf, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hg
  %.0.copyload.i143 = load i64, ptr %i.hh, align 1
  %i.hi = and i64 %.0.copyload.i143, %i.p
  %i.hj = lshr i32 %i.gz, %i.bu
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = and i8 %i.hk, 127
  %i.hm = load ptr, ptr %5, align 8, !tbaa !134   ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 9
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !71, !range !78, !noundef !79
  %i.hp = trunc nuw i8 %i.ho to i1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hr = load i8, ptr %i.hq, align 8, !range !78
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = select i1 %i.hp, i1 %i.hs, i1 false, !prof !80
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8            ; 2 uses
  %i.hw = select i1 %i.ht, ptr %i.hv, ptr null, !prof !80 ; 2 uses
  %i.hx = mul nuw nsw i64 %i.u, %i.hb
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hx ; 2 uses
  %.0.copyload.i144 = load i64, ptr %i.hy, align 1
  %i.hz = and i64 %.0.copyload.i144, -9187201950435737472
  %i.ia = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hz, i1 false)
  %.0.in173 = trunc nuw nsw i64 %i.ia to i32
  %.0174 = lshr i32 %.0.in173, 3                  ; 2 uses
  %i.ib = icmp eq i32 %.0174, 8
  br i1 %i.ib, label %.lr.ph177, label %bb.x

.lr.ph177:                                        ; preds = %bb.w, %.lr.ph177
  %.0122175 = phi i64 [ %i.id, %.lr.ph177 ], [ %i.hb, %bb.w ]
  %i.ic = add nuw nsw i64 %.0122175, 1
  %i.id = and i64 %i.ic, %i.bw                    ; 3 uses
  %i.ie = mul nuw nsw i64 %i.id, %i.u             ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ie
  %.0.copyload.i145 = load i64, ptr %i.if, align 1
  %i.ig = and i64 %.0.copyload.i145, -9187201950435737472
  %i.ih = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ig, i1 false)
  %.0.in = trunc nuw nsw i64 %i.ih to i32
  %.0 = lshr i32 %.0.in, 3                        ; 2 uses
  %i.ii = icmp eq i32 %.0, 8
  br i1 %i.ii, label %.lr.ph177, label %._crit_edge178, !llvm.loop !155

._crit_edge178:                                   ; preds = %.lr.ph177
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ie
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge178, %bb.w
  %.0122.lcssa = phi i64 [ %i.id, %._crit_edge178 ], [ %i.hb, %bb.w ]
  %.0121.lcssa = phi ptr [ %i.ij, %._crit_edge178 ], [ %i.hy, %bb.w ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0, %._crit_edge178 ], [ %.0174, %bb.w ] ; 3 uses
  %i.ik = zext nneg i32 %.0.lcssa to i64
  %.idx = shl nuw nsw i64 %.0122.lcssa, 5
  %i.il = getelementptr i8, ptr %i.bb, i64 %.idx
  %i.im = getelementptr [4 x i8], ptr %i.il, i64 %i.ik
  store i32 %i.gz, ptr %i.im, align 4, !tbaa !22
  %i.in = sub nuw nsw i32 7, %.0.lcssa
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.0121.lcssa, i64 %i.io
  store i8 %i.hl, ptr %i.ip, align 1, !tbaa !21
  %i.iq = shl nuw nsw i32 %.0.lcssa, %i.bz
  %i.ir = getelementptr inbounds nuw i8, ptr %.0121.lcssa, i64 8
  %i.is = lshr i32 %i.iq, 3
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.it ; 2 uses
  %.0.copyload.i146 = load i64, ptr %i.iu, align 8
  %i.iv = or i64 %.0.copyload.i146, %i.hi
  store i64 %i.iv, ptr %i.iu, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge184.loopexit, label %bb.v, !llvm.loop !156

bb.z:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc151 unwind label %bb.j

.noexc151:                                        ; preds = %bb.z
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !148 ; 8 uses
  %i.iz = load <2 x ptr>, ptr %i.iw, align 8, !tbaa !53
  %i.ja = load <2 x ptr>, ptr %2, align 16, !tbaa !53
  store <2 x ptr> %i.ja, ptr %i.iw, align 8, !tbaa !53
  store <2 x ptr> %i.iz, ptr %2, align 16, !tbaa !53
  %.not.i.i.i.i147 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i147, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %.noexc151
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.jb, align 8, !tbaa !149
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !151
  %i.jg = load ptr, ptr %i.iy, align 8, !tbaa !143
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #19, !inline_history !152
  %i.jj = load ptr, ptr %i.iy, align 8, !tbaa !143
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #19, !inline_history !152
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i148 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i.i.i148, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149

bb.ae:                                            ; preds = %bb.ac
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i150 = phi i32 [ %i.je, %bb.ad ], [ %i.jo, %bb.ae ]
  %i.jp = icmp eq i32 %.0.i.i.i.i.i.i150, 1
  br i1 %i.jp, label %bb.af, label %bb.ag, !prof !153

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149, %bb.ab, %.noexc151
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  store i32 %i.j, ptr %i.b, align 4, !tbaa !8
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !157
  %i.jq = load ptr, ptr %7, align 8, !tbaa !134   ; 3 uses
  %.not.i153 = icmp eq ptr %i.jq, null
  br i1 %.not.i153, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit155, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i154

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i154: ; preds = %bb.ag
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !143
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(80) %i.jq) #19, !inline_history !145
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit155

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit155: ; preds = %bb.ag, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ah

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.aj

bb.ah:                                            ; preds = %bb.f, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit155
  %i.ju = load ptr, ptr %6, align 8, !tbaa !98
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.ai, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !80

bb.ai:                                            ; preds = %bb.ah
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !134 ; 3 uses
  %.not.i.i.i.i156 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i156, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.ai
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !143
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(80) %i.jx) #19, !inline_history !160
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !98
  %i.kb = icmp eq ptr %.pr.pre.i, null
  br i1 %i.kb, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !161

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.ai, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.kc = load ptr, ptr %5, align 8, !tbaa !134   ; 3 uses
  %.not.i157 = icmp eq ptr %i.kc, null
  br i1 %.not.i157, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit159, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i158

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i158: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !143
end_hunk_0
