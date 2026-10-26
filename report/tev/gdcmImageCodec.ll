Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmImageCodec?download=true
inline.NumInlined: 433
inline.NumDeleted: 234
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4gdcm10ImageCodec17CleanupUnusedBitsEPcm:bb.a
  %i.aa = zext i16 %i.z to i32
  %i.ab = load i16, ptr %i.i, align 8, !tbaa !50  ; 3 uses
  %i.ac = load i16, ptr %i.d, align 2, !tbaa !39
  %.not.i86 = icmp ugt i16 %i.ab, %i.ac
  br i1 %.not.i86, label %bb.l, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit87

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit87:   ; preds = %bb.k
  %i.af = load i16, ptr %i.y, align 2, !tbaa !51  ; 2 uses
  %i.ag = icmp ult i16 %i.af, %i.ab
  br i1 %i.ag, label %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit87
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 154, ptr noundef nonnull @.str.2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4gdcm11PixelFormat10GetHighBitEv.exit:        ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit87
  %i.aj = zext i16 %i.ab to i32
  %i.ak = zext i16 %i.af to i32
  %i.al = xor i32 %i.ak, -1
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = lshr i32 %i.aa, %i.am                   ; 3 uses
  %i.ao = and i32 %i.x, %i.an
  %.not80 = icmp eq i32 %i.ao, 0
  %i.ap = or i32 %i.an, %i.u
  %i.aq = and i32 %i.an, %i.o
  %.068.in = select i1 %.not80, i32 %i.aq, i32 %i.ap
  %.068 = trunc i32 %.068.in to i16
  store i16 %.068, ptr %.069115, align 2, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.069115, i64 2 ; 2 uses
  %.not79 = icmp eq ptr %i.ar, %i.v
  br i1 %.not79, label %.loopexit, label %bb.k, !llvm.loop !85

bb.r:                                             ; preds = %.lr.ph118, %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit90
  %.067117 = phi ptr [ %1, %.lr.ph118 ], [ %i.bj, %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit90 ] ; 3 uses
  %i.as = load i16, ptr %.067117, align 2, !tbaa !12
  %i.at = zext i16 %i.as to i32
  %i.au = load i16, ptr %i.i, align 8, !tbaa !50  ; 3 uses
  %i.av = load i16, ptr %i.d, align 2, !tbaa !39
  %.not.i88 = icmp ugt i16 %i.au, %i.av
  br i1 %.not.i88, label %bb.s, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit89

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit89:   ; preds = %bb.r
  %i.ay = load i16, ptr %i.s, align 2, !tbaa !51  ; 2 uses
  %i.az = icmp ult i16 %i.ay, %i.au
  br i1 %i.az, label %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit90, label %bb.v

bb.v:                                             ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit89
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 154, ptr noundef nonnull @.str.2)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4gdcm11PixelFormat10GetHighBitEv.exit90:      ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit89
  %i.bc = zext i16 %i.au to i32
  %i.bd = zext i16 %i.ay to i32
  %i.be = xor i32 %i.bd, -1
  %i.bf = add nsw i32 %i.be, %i.bc
  %i.bg = lshr i32 %i.at, %i.bf
  %i.bh = and i32 %i.bg, %i.o
  %i.bi = trunc nuw i32 %i.bh to i16
  store i16 %i.bi, ptr %.067117, align 2, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.067117, i64 2 ; 2 uses
  %.not77 = icmp eq ptr %i.bj, %i.r
  br i1 %.not77, label %.loopexit, label %bb.r, !llvm.loop !86

bb.y:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !50 ; 4 uses
  %.not.i91 = icmp ugt i16 %i.bl, 32
  br i1 %.not.i91, label %bb.z, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit92

bb.z:                                             ; preds = %bb.y
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit92:   ; preds = %bb.y
  %i.bo = zext nneg i16 %i.bl to i32              ; 5 uses
  %i.bp = sub nuw nsw i32 32, %i.bo
  %i.bq = lshr i32 -1, %i.bp                      ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !14
  %.not.i93.not = icmp eq i16 %i.bs, 0
  br i1 %.not.i93.not, label %.preheader107, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit97

.preheader107:                                    ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit92
  %.idx119 = and i64 %2, -4                       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %.idx119
  %.not73112 = icmp samesign eq i64 %.idx119, 0
  br i1 %.not73112, label %.loopexit, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.lr.ph

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.lr.ph: ; preds = %.preheader107
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !51 ; 2 uses
  %i.bw = icmp ult i16 %i.bv, %i.bl
  %i.bx = zext i16 %i.bv to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = add nsw i32 %i.by, %i.bo                ; 2 uses
  br i1 %i.bw, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader, label %bb.af

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader: ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.lr.ph
  %i.ca = add i64 %2, -4                          ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.ca, 28
  br i1 %min.iters.check148, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader165, label %vector.ph149

vector.ph149:                                     ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader
  %n.vec150 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec150, 2
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph149
  %index156 = phi i64 [ 0, %vector.ph149 ], [ %index.next160, %vector.body155 ] ; 2 uses
  %i.cf = shl i64 %index156, 2
  %next.gep157 = getelementptr i8, ptr %1, i64 %i.cf ; 3 uses
  %i.cg = getelementptr i8, ptr %next.gep157, i64 16 ; 2 uses
  %wide.load158 = load <4 x i32>, ptr %next.gep157, align 4, !tbaa !52
  %wide.load159 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !52
  %i.ch = lshr <4 x i32> %wide.load158, %broadcast.splat152
  %i.ci = lshr <4 x i32> %wide.load159, %broadcast.splat152
  %i.cj = and <4 x i32> %i.ch, %broadcast.splat154
  %i.ck = and <4 x i32> %i.ci, %broadcast.splat154
  store <4 x i32> %i.cj, ptr %next.gep157, align 4, !tbaa !52
  store <4 x i32> %i.ck, ptr %i.cg, align 4, !tbaa !52
  %index.next160 = add nuw i64 %index156, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next160, %n.vec150
  br i1 %i.cl, label %middle.block161, label %vector.body155, !llvm.loop !87

middle.block161:                                  ; preds = %vector.body155
  %cmp.n162 = icmp eq i64 %i.cc, %n.vec150
  br i1 %cmp.n162, label %.loopexit, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader165

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader165: ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader, %middle.block161
  %.064113.ph = phi ptr [ %1, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader ], [ %i.ce, %middle.block161 ]
  br label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit97:   ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit92
  %i.cm = add nsw i32 %i.bo, -1
  %i.cn = shl nuw i32 1, %i.cm                    ; 2 uses
  %3 = shl nsw i32 -1, %i.bo                      ; 2 uses
  %.idx = and i64 %2, -4                          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not74110 = icmp samesign eq i64 %.idx, 0
  br i1 %.not74110, label %.loopexit, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.lr.ph

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.lr.ph: ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit97
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !51 ; 2 uses
  %i.cr = icmp ult i16 %i.cq, %i.bl
  %i.cs = zext i16 %i.cq to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = add nsw i32 %i.ct, %i.bo                ; 2 uses
  br i1 %i.cr, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader, label %bb.ac

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader: ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.lr.ph
  %i.cv = add i64 %2, -4                          ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader167, label %vector.ph

vector.ph:                                        ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %1, i64 %i.cy
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert140 = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat141 = shufflevector <4 x i32> %broadcast.splatinsert140, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.da ; 3 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !52
  %wide.load146 = load <4 x i32>, ptr %i.db, align 4, !tbaa !52
  %i.dc = lshr <4 x i32> %wide.load, %broadcast.splat ; 3 uses
  %i.dd = lshr <4 x i32> %wide.load146, %broadcast.splat ; 3 uses
  %i.de = and <4 x i32> %i.dc, %broadcast.splat141
  %i.df = and <4 x i32> %i.dd, %broadcast.splat141
  %i.dg = icmp eq <4 x i32> %i.de, zeroinitializer
  %i.dh = icmp eq <4 x i32> %i.df, zeroinitializer
  %i.di = or <4 x i32> %i.dc, %broadcast.splat143
  %i.dj = or <4 x i32> %i.dd, %broadcast.splat143
  %i.dk = and <4 x i32> %i.dc, %broadcast.splat145
  %i.dl = and <4 x i32> %i.dd, %broadcast.splat145
  %i.dm = select <4 x i1> %i.dg, <4 x i32> %i.dk, <4 x i32> %i.di
  %i.dn = select <4 x i1> %i.dh, <4 x i32> %i.dl, <4 x i32> %i.dj
  store <4 x i32> %i.dm, ptr %next.gep, align 4, !tbaa !52
  store <4 x i32> %i.dn, ptr %i.db, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader167

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader167: ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader, %middle.block
  %.066111.ph = phi ptr [ %1, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader ], [ %i.cz, %middle.block ]
  br label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99:   ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader167, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99
  %.066111 = phi ptr [ %i.du, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99 ], [ %.066111.ph, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.preheader167 ] ; 3 uses
  %i.dp = load i32, ptr %.066111, align 4, !tbaa !52
  %i.dq = lshr i32 %i.dp, %i.cu                   ; 3 uses
  %i.dr = and i32 %i.dq, %i.cn
  %.not75 = icmp eq i32 %i.dr, 0
  %i.ds = or i32 %i.dq, %3
  %i.dt = and i32 %i.dq, %i.bq
  %.065 = select i1 %.not75, i32 %i.dt, i32 %i.ds
  store i32 %.065, ptr %.066111, align 4, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %.066111, i64 4 ; 2 uses
  %.not74 = icmp eq ptr %i.du, %i.co
  br i1 %.not74, label %.loopexit, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99, !llvm.loop !89

bb.ac:                                            ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99.lr.ph
  %i.dv = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 154, ptr noundef nonnull @.str.2)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102:  ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader165, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102
  %.064113 = phi ptr [ %i.ea, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102 ], [ %.064113.ph, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.preheader165 ] ; 3 uses
  %i.dx = load i32, ptr %.064113, align 4, !tbaa !52
  %i.dy = lshr i32 %i.dx, %i.bz
  %i.dz = and i32 %i.dy, %i.bq
  store i32 %i.dz, ptr %.064113, align 4, !tbaa !52
  %i.ea = getelementptr inbounds nuw i8, ptr %.064113, i64 4 ; 2 uses
  %.not73 = icmp eq ptr %i.ea, %i.bt
  br i1 %.not73, label %.loopexit, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102, !llvm.loop !90

bb.af:                                            ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102.lr.ph
  %i.eb = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.eb, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 154, ptr noundef nonnull @.str.2)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ai:                                            ; preds = %bb.f
  %i.ed = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 523, ptr noundef nonnull @.str.2)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.ed, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.loopexit:                                        ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit99, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit102, %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit, %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit90, %middle.block, %middle.block161, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit97, %.preheader107, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit85, %.preheader, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm10ImageCodec16DoOverlayCleanupERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !39   ; 2 uses
  %i.e = icmp ugt i16 %i.d, 8
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 532, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #30
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  switch i16 %i.d, label %bb.ap [
    i16 16, label %bb.f
    i16 32, label %bb.x
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp ugt i16 %i.i, 16
  br i1 %.not.i, label %bb.g, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

common.resume:                                    ; preds = %bb.d, %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit64, %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit92, %bb.ar, %bb.ah, %bb.ae, %bb.aa, %bb.p, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.ai, %bb.m ], [ %i.am, %bb.p ], [ %i.ep, %bb.ah ], [ %i.dn, %bb.aa ], [ %i.el, %bb.ae ], [ %.pn41.pn, %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit64 ], [ %.pn.pn, %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit92 ], [ %i.ho, %bb.ar ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #30
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit:     ; preds = %bb.f
  %i.l = zext nneg i16 %i.i to i32                ; 3 uses
  %i.m = sub nuw nsw i32 16, %i.l
  %i.n = lshr i32 65535, %i.m                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i16, ptr %i.o, align 4, !tbaa !14
  %.not.i48.not = icmp eq i16 %i.p, 0
  br i1 %.not.i48.not, label %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit52

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit52:   ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit
  %i.q = sub nsw i32 15, %i.l
  %i.r = ashr i32 -32768, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 2) ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49
  %i.z = and i32 %i.y, 5
  %.not.i53138 = icmp eq i32 %i.z, 0
  br i1 %.not.i53138, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit52
  %i.aa = add nsw i32 %i.l, -1
  %i.ab = shl nuw nsw i32 1, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph139, %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit
  %i.ad = load i16, ptr %i.a, align 2, !tbaa !12
  %i.ae = zext i16 %i.ad to i32
  %i.af = load i16, ptr %i.h, align 8, !tbaa !50  ; 3 uses
  %i.ag = load i16, ptr %i.c, align 2, !tbaa !39
  %.not.i54 = icmp ugt i16 %i.af, %i.ag
  br i1 %.not.i54, label %bb.k, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit55

bb.k:                                             ; preds = %bb.j
  %i.ah = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ah) #30
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit55:   ; preds = %bb.j
  %i.aj = load i16, ptr %i.ac, align 2, !tbaa !51 ; 2 uses
  %i.ak = icmp ult i16 %i.aj, %i.af
  br i1 %i.ak, label %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit55
  %i.al = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 154, ptr noundef nonnull @.str.2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #31
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.al) #30
  br label %common.resume

_ZNK4gdcm11PixelFormat10GetHighBitEv.exit:        ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit55
  %i.an = zext i16 %i.af to i32
  %i.ao = zext i16 %i.aj to i32
  %i.ap = xor i32 %i.ao, -1
  %i.aq = add nsw i32 %i.ap, %i.an
  %i.ar = lshr i32 %i.ae, %i.aq                   ; 3 uses
  %i.as = and i32 %i.ab, %i.ar
  %.not46 = icmp eq i32 %i.as, 0
end_hunk_0
