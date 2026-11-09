Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiChatConsole?download=true
inline.NumInlined: 834
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14GUIChatConsole14drawBackgroundEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = load i32, ptr %i.x, align 8, !tbaa !155
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75
  store i32 0, ptr %3, align 4, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !162
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 424
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %.sroa.0.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14GUIChatConsole8drawTextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(434) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.core::rect", align 4        ; 10 uses
  %3 = alloca %"class.core::rect", align 4        ; 9 uses
  %4 = alloca %"class.core::string", align 8      ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = tail call noundef nonnull align 8 dereferenceable(113) ptr @_ZN11ChatBackend16getConsoleBufferEv(ptr noundef nonnull align 8 dereferenceable(360) %i.d) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i8, ptr %i.h, align 8, !tbaa !158, !range !151, !noundef !105
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.l = load i32, ptr %i.k, align 8, !tbaa !155
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n), !inline_history !9 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 0), !inline_history !9
  %i.w = sub i32 %i.l, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.y = load i32, ptr %i.x, align 4, !tbaa !75
  store i32 0, ptr %2, align 4, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.w, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !22
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.y, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !134
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = tail call noundef i32 @_ZNK10ChatBuffer7getRowsEv(ptr noundef nonnull align 8 dereferenceable(113) %i.e)
  %.not47 = icmp eq i32 %i.aa, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @_ZN14GUIChatConsole15updateScrollbarEb(ptr noundef nonnull align 8 dereferenceable(434) %0, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

bb.f:                                             ; preds = %.lr.ph46, %.loopexit
  %.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.dz, %.loopexit ] ; 3 uses
  %i.am = call noundef nonnull align 8 dereferenceable(25) ptr @_ZNK10ChatBuffer16getFormattedLineEj(ptr noundef nonnull align 8 dereferenceable(113) %i.e, i32 noundef %.045) ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !238 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !238 ; 2 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !157 ; 2 uses
  %i.as = mul i32 %i.ar, %.045
  %i.at = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.au = add i32 %i.as, %i.at
  %i.av = uitofp nsz i32 %i.au to float
  %i.aw = load float, ptr %i.ae, align 8, !tbaa !154
  %i.ax = fsub nsz float %i.av, %i.aw
  %i.ay = fptosi float %i.ax to i32               ; 3 uses
  %i.az = add nsw i32 %i.ar, %i.ay
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.r
  %.sroa.033.044 = phi ptr [ %i.dy, %bb.r ], [ %i.an, %bb.g ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !180
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  %i.be = load i32, ptr %i.ab, align 8, !tbaa !156 ; 2 uses
  %i.bf = mul i32 %i.bd, %i.be
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !136
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add i32 %i.bd, %i.bi
  %i.bk = mul i32 %i.bj, %i.be
  %i.bl = load i32, ptr %i.ac, align 4, !tbaa !157
  %i.bm = add i32 %i.bl, %i.ay
  store i32 %i.bf, ptr %3, align 4, !tbaa !161
  store i32 %i.ay, ptr %i.af, align 4, !tbaa !162
  store i32 %i.bk, ptr %i.ag, align 4, !tbaa !161
  store i32 %i.bm, ptr %i.ah, align 4, !tbaa !162
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  %i.bs = icmp eq i32 %i.br, 3
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !89  ; 3 uses
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  call void @_ZN3gui10CGUITTFont4drawERK14EnrichedStringRKN4core4rectIiEEbbPS7_(ptr noundef nonnull align 8 dereferenceable(248) %i.bt, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.033.044, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2)
  br label %bb.r

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.033.044)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !146 ; 10 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  store ptr %i.ai, ptr %4, align 8, !tbaa !135
  store i64 0, ptr %i.aj, align 8, !tbaa !136
  store i32 0, ptr %i.ai, align 8, !tbaa !138
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.ak, ptr %1, align 8, !tbaa !135
  store i64 0, ptr %i.al, align 8, !tbaa !136
  store i32 0, ptr %i.ak, align 8, !tbaa !138
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #25
  %i.bx = load ptr, ptr %1, align 8, !tbaa !146   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.ak
  br i1 %i.by, label %_ZN4core6stringIwE5clearEb.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bz = load i64, ptr %i.ak, align 8, !tbaa !84
  %i.ca = shl i64 %i.bz, 2
  %i.cb = add i64 %i.ca, 4
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #26
  br label %_ZN4core6stringIwE5clearEb.exit.i

_ZN4core6stringIwE5clearEb.exit.i:                ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN4core6stringIwEC2IwEEPKT_.exit

bb.k:                                             ; preds = %bb.i
  %i.cc = icmp eq ptr %i.bv, %i.ai
  br i1 %i.cc, label %_ZN4core6stringIwEC2IwEEPKT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.bv) #29 ; 3 uses
  %i.ce = and i64 %i.cd, 4294967295               ; 8 uses
  %.not39 = icmp eq i64 %i.ce, 0
  br i1 %.not39, label %_ZN4core6stringIwEC2IwEEPKT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ce, i32 noundef signext 0)
          to label %.lr.ph.i unwind label %bb.o

.lr.ph.i:                                         ; preds = %bb.m
  %i.cf = load ptr, ptr %4, align 8, !tbaa !146   ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.ce, 8
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = sub i64 %i.bw, %i.cg
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.cd, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !138
  %wide.load60 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !138
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load, ptr %i.ck, align 4, !tbaa !138
  store <4 x i32> %wide.load60, ptr %i.cl, align 4, !tbaa !138
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.prol
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !138
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.prol
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !138
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !235

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cq = sub nsw i64 %indvars.iv.i.ph, %i.ce
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load i64, ptr %i.aj, align 8, !tbaa !136
  %i.cs = icmp ugt i64 %.pre, %i.ce
  br i1 %i.cs, label %bb.n, label %_ZN4core6stringIwEC2IwEEPKT_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !138
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !138
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !138
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !138
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.1
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !138
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.1
  store i32 %i.da, ptr %i.db, align 4, !tbaa !138
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.2
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !138
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.2
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !138
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.ce
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !236

bb.n:                                             ; preds = %._crit_edge.i
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ce, i32 noundef signext 0)
          to label %_ZN4core6stringIwEC2IwEEPKT_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.ai
  br i1 %i.dh, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.di = load i64, ptr %i.ai, align 8, !tbaa !84
  %i.dj = shl i64 %i.di, 2
  %i.dk = add i64 %i.dj, 4
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZN4core6stringIwED2Ev.exit30
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %_ZN4core6stringIwED2Ev.exit30 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ %i.df, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZN4core6stringIwEC2IwEEPKT_.exit:                ; preds = %bb.l, %._crit_edge.i, %bb.k, %_ZN4core6stringIwE5clearEb.exit.i, %bb.n
  %i.dl = load ptr, ptr %i.bt, align 8, !tbaa !24
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 -1, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit
  %i.dn = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ai
  br i1 %i.do, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.p
  %i.dp = load i64, ptr %i.ai, align 8, !tbaa !84
  %i.dq = shl i64 %i.dp, 2
  %i.dr = add i64 %i.dq, 4
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #26
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.r

bb.q:                                             ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ai
  br i1 %i.du, label %_ZN4core6stringIwED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.q
  %i.dv = load i64, ptr %i.ai, align 8, !tbaa !84
  %i.dw = shl i64 %i.dv, 2
  %i.dx = add i64 %i.dw, 4
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #26
  br label %_ZN4core6stringIwED2Ev.exit30

_ZN4core6stringIwED2Ev.exit30:                    ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.r:                                             ; preds = %_ZN4core6stringIwED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 120 ; 2 uses
  %.not38 = icmp eq ptr %i.dy, %i.ap
  br i1 %.not38, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.r, %bb.g, %bb.f
  %i.dz = add nuw i32 %.045, 1                    ; 2 uses
  %i.ea = call noundef i32 @_ZNK10ChatBuffer7getRowsEv(ptr noundef nonnull align 8 dereferenceable(113) %i.e)
  %i.eb = icmp ult i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.f, label %._crit_edge, !llvm.loop !237

bb.s:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14GUIChatConsole10drawPromptEv(ptr noundef nonnull align 8 dereferenceable(434) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.core::rect", align 4        ; 8 uses
  %3 = alloca %"class.core::string", align 8      ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.core::rect", align 4        ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89
  %.not74 = icmp eq ptr %i.c, null
  br i1 %.not74, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.f = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11ChatBackend9getPromptEv(ptr noundef nonnull align 8 dereferenceable(360) %i.e) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZNK10ChatPrompt17getVisiblePortionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(120) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = load i32, ptr %i.g, align 8, !tbaa !156  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.j = load i32, ptr %i.i, align 4, !tbaa !157
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !146
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZN14GUIChatConsole7OnEventERK6SEvent:bb.a
  %i.hp = shl i64 %i.ho, 2
  %i.hq = add i64 %i.hp, 4
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hq) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cz

bb.bv:                                            ; preds = %bb.p
  %i.hr = load i8, ptr %i.f, align 4
  %i.hs = and i8 %i.hr, 4
  %.not150 = icmp eq i8 %i.hs, 0
  br i1 %.not150, label %.thread255, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN10ChatPrompt15cursorOperationENS_8CursorOpENS_11CursorOpDirENS_13CursorOpScopeE(ptr noundef nonnull align 8 dereferenceable(120) %i.d, i32 noundef 2, i32 noundef 0, i32 noundef 2)
  br label %.critedge173

bb.bx:                                            ; preds = %bb.p
  %i.ht = load i8, ptr %i.f, align 4
  %i.hu = and i8 %i.ht, 4
  %.not151 = icmp eq i8 %i.hu, 0
  br i1 %.not151, label %.thread255, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZN10ChatPrompt15cursorOperationENS_8CursorOpENS_11CursorOpDirENS_13CursorOpScopeE(ptr noundef nonnull align 8 dereferenceable(120) %i.d, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  br label %.critedge173

bb.bz:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !67
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 488
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %i.hx)
  %i.hy = load i8, ptr %i.f, align 4
  %i.hz = and i8 %i.hy, 2
  %i.ia = icmp ne i8 %i.hz, 0
  invoke void @_ZN10ChatPrompt14nickCompletionERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EEb(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %13, i1 noundef zeroext %i.ia)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.critedge173

bb.cb:                                            ; preds = %bb.bz
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.cz

.thread255:                                       ; preds = %bb.p, %bb.bf, %bb.ax, %bb.av, %bb.bm, %bb.bv, %bb.bx
  br i1 %i.aw, label %.critedge, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

.critedge:                                        ; preds = %bb.r, %bb.aj, %bb.ao, %bb.at, %bb.aq, %bb.al, %bb.ah, %bb.t, %.thread255
  %i.ic = load i32, ptr %i.l, align 8, !tbaa !84
  call void @_ZN10ChatPrompt5inputEw(ptr noundef nonnull align 8 dereferenceable(120) %i.d, i32 noundef signext %i.ic)
  br label %.critedge173

bb.cc:                                            ; preds = %bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !84 ; 2 uses
  switch i32 %i.if, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit [
    i32 9, label %bb.cd
    i32 2, label %bb.cf
    i32 0, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ih = load float, ptr %i.ig, align 8, !tbaa !84
  %i.ii = fmul nsz float %i.ih, -3.000000e+00     ; 2 uses
  %i.ij = fcmp nsz olt float %i.ii, 0.000000e+00
  %.v.i = select i1 %i.ij, float -5.000000e-01, float 5.000000e-01
  %i.ik = fadd nsz float %i.ii, %.v.i
  %i.il = fptosi float %i.ik to i32
  %i.im = load ptr, ptr %i.b, align 8, !tbaa !66
  tail call void @_ZN11ChatBackend6scrollEi(ptr noundef nonnull align 8 dereferenceable(360) %i.im, i32 noundef %i.il)
  br label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

bb.ce:                                            ; preds = %bb.cc
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 433
  %i.io = load i8, ptr %i.in, align 1, !tbaa !128, !range !151, !noundef !105
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.cf, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

bb.cf:                                            ; preds = %bb.cc, %bb.ce
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !84
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !157 ; 2 uses
  %i.iv = udiv i32 %i.ir, %i.iu                   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !75
  %i.iy = udiv i32 %i.ix, %i.iu
  %i.iz = add i32 %i.iy, -1
  %i.ja = icmp ult i32 %i.iv, %i.iz
  br i1 %i.ja, label %bb.cg, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

bb.cg:                                            ; preds = %bb.cf
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !129, !range !151, !noundef !105
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.ch, label %.critedge175

bb.ch:                                            ; preds = %bb.cg
  %i.je = load i32, ptr %i.id, align 8, !tbaa !84
  %i.jf = load i32, ptr %i.is, align 8, !tbaa !156
  %i.jg = udiv i32 %i.je, %i.jf
  %i.jh = tail call noundef zeroext i1 @_ZN14GUIChatConsole12weblinkClickEii(ptr noundef nonnull align 8 dereferenceable(434) %0, i32 noundef %i.jg, i32 noundef %i.iv)
  br i1 %i.jh, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit, label %..critedge175_crit_edge

..critedge175_crit_edge:                          ; preds = %bb.ch
  %.pre = load i32, ptr %i.ie, align 4, !tbaa !84
  br label %.critedge175

.critedge175:                                     ; preds = %..critedge175_crit_edge, %bb.cg
  %i.ji = phi i32 [ %.pre, %..critedge175_crit_edge ], [ %i.if, %bb.cg ]
  %i.jj = icmp eq i32 %i.ji, 2
  br i1 %i.jj, label %bb.ci, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

bb.ci:                                            ; preds = %.critedge175
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !140 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = tail call noundef ptr %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jl) ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = tail call noundef ptr %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jp) ; 3 uses
  %.not = icmp eq ptr %i.jt, null
  br i1 %.not, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ju = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jt) #25
  call void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ju, ptr nonnull %i.jt)
  invoke void @_ZN10ChatPrompt5inputERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jv = load ptr, ptr %14, align 8, !tbaa !146  ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i227: ; preds = %bb.ck
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !84
  %i.jz = shl i64 %i.jy, 2
  %i.ka = add i64 %i.jz, 4
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.ka) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit229: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

bb.cl:                                            ; preds = %bb.cj
  %i.kb = landingpad { ptr, i32 }
          cleanup
  %i.kc = load ptr, ptr %14, align 8, !tbaa !146  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i230: ; preds = %bb.cl
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !84
  %i.kg = shl i64 %i.kf, 2
  %i.kh = add i64 %i.kg, 4
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kh) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit232: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.cz

bb.cm:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !84
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !146 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.kl, ptr %15, align 8, !tbaa !135
  %i.km = icmp eq ptr %i.kk, null
  br i1 %i.km, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc235 unwind label %bb.ct

.noexc235:                                        ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.kn = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.kk) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.kn, ptr %i.a, align 8, !tbaa !86
  %i.ko = icmp ugt i64 %i.kn, 3
  br i1 %i.ko, label %.noexc.i234, label %._crit_edge.i.i233

.noexc.i234:                                      ; preds = %bb.co
  %i.kp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc236 unwind label %bb.ct ; 2 uses

.noexc236:                                        ; preds = %.noexc.i234
  store ptr %i.kp, ptr %15, align 8, !tbaa !146
  %i.kq = load i64, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  store i64 %i.kq, ptr %i.kl, align 8, !tbaa !84
  br label %._crit_edge.i.i233

._crit_edge.i.i233:                               ; preds = %.noexc236, %bb.co
  %i.kr = phi i64 [ %i.kq, %.noexc236 ], [ %i.kn, %bb.co ] ; 2 uses
  %i.ks = phi ptr [ %i.kp, %.noexc236 ], [ %i.kl, %bb.co ] ; 4 uses
  switch i64 %i.kn, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i233
  %i.kt = load i32, ptr %i.kk, align 4, !tbaa !138
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !138
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i233
  %i.ku = call ptr @wmemcpy(ptr noundef %i.ks, ptr noundef nonnull %i.kk, i64 noundef %i.kn) #25 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !86
  %.pre7.i.i = load ptr, ptr %15, align 8, !tbaa !146
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i233
  %i.kv = phi ptr [ %i.ks, %._crit_edge.i.i233 ], [ %i.ks, %bb.cp ], [ %.pre7.i.i, %bb.cq ]
  %i.kw = phi i64 [ %i.kr, %._crit_edge.i.i233 ], [ %i.kr, %bb.cp ], [ %.pre6.i.i, %bb.cq ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !136
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.kw
  store i32 0, ptr %i.ky, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10ChatPrompt5inputERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.kz = load ptr, ptr %15, align 8, !tbaa !146  ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.kl
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i237: ; preds = %bb.cs
  %i.lb = load i64, ptr %i.kl, align 8, !tbaa !84
  %i.lc = shl i64 %i.lb, 2
  %i.ld = add i64 %i.lc, 4
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit239: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.critedge173

bb.ct:                                            ; preds = %.noexc.i234, %bb.cn
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit242

bb.cu:                                            ; preds = %bb.cr
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lg = load ptr, ptr %15, align 8, !tbaa !146  ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.kl
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i240: ; preds = %bb.cu
  %i.li = load i64, ptr %i.kl, align 8, !tbaa !84
  %i.lj = shl i64 %i.li, 2
  %i.lk = add i64 %i.lj, 4
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit242: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i240, %bb.ct
  %.pn = phi { ptr, i32 } [ %i.le, %bb.ct ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i240 ], [ %i.lf, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.cz

bb.cv:                                            ; preds = %bb.a
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !84
  %i.ln = icmp eq i32 %i.lm, 6
  br i1 %i.ln, label %bb.cw, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

bb.cw:                                            ; preds = %bb.cv
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !84
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !130
  %i.ls = icmp eq ptr %i.lp, %i.lr
  br i1 %i.ls, label %bb.cx, label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

bb.cx:                                            ; preds = %bb.cw
  %i.lt = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.lu = tail call noundef nonnull align 8 dereferenceable(113) ptr @_ZN11ChatBackend16getConsoleBufferEv(ptr noundef nonnull align 8 dereferenceable(360) %i.lt)
  %i.lv = load ptr, ptr %i.lq, align 8, !tbaa !130
  %i.lw = tail call noundef i32 @_ZNK3gui13CGUIScrollBar6getPosEv(ptr noundef nonnull align 8 dereferenceable(420) %i.lv)
  tail call void @_ZN10ChatBuffer14scrollAbsoluteEi(ptr noundef nonnull align 8 dereferenceable(113) %i.lu, i32 noundef %i.lw)
  br label %_Z12isInCtrlKeysRK9EKEY_CODE.exit

_Z12isInCtrlKeysRK9EKEY_CODE.exit:                ; preds = %bb.a, %bb.c, %bb.ch, %.critedge175, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit229, %bb.ci, %bb.cc, %.thread255, %bb.cx, %bb.cw, %bb.cv, %bb.cd, %bb.cf, %bb.ce, %bb.d
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !142 ; 3 uses
  %.not170 = icmp eq ptr %i.ly, null
  br i1 %.not170, label %.critedge173, label %bb.cy

bb.cy:                                            ; preds = %_Z12isInCtrlKeysRK9EKEY_CODE.exit
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !24
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = call noundef zeroext i1 %i.mb(ptr noundef nonnull align 8 dereferenceable(308) %i.ly, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %.critedge173

.critedge173:                                     ; preds = %bb.q, %.critedge, %bb.bn, %bb.s, %bb.u, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit194, %bb.ai, %bb.ak, %bb.ca, %bb.ap, %bb.ar, %bb.as, %bb.au, %bb.aw, %bb.am, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit200, %bb.ay, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit220, %bb.bw, %bb.by, %bb.an, %bb.bi, %bb.cy, %_Z12isInCtrlKeysRK9EKEY_CODE.exit, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit239, %bb.i
  %.2 = phi i1 [ true, %bb.i ], [ true, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit239 ], [ false, %_Z12isInCtrlKeysRK9EKEY_CODE.exit ], [ %i.mc, %bb.cy ], [ true, %bb.bi ], [ true, %bb.an ], [ true, %bb.by ], [ true, %bb.bw ], [ true, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit220 ], [ true, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209 ], [ true, %bb.ay ], [ true, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit200 ], [ true, %bb.am ], [ true, %bb.aw ], [ true, %bb.au ], [ true, %bb.as ], [ true, %bb.ar ], [ true, %bb.ap ], [ true, %bb.ca ], [ true, %bb.ak ], [ true, %bb.ai ], [ true, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit194 ], [ true, %bb.u ], [ true, %bb.s ], [ true, %bb.bn ], [ true, %.critedge ], [ true, %bb.q ]
  ret i1 %.2

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit185, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit191, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit226, %bb.cb, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %.pn166.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit242 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit232 ], [ %.pn166, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit191 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit185 ], [ %.pn155, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit206 ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit212 ], [ %.pn152, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit226 ], [ %i.ib, %bb.cb ]
  resume { ptr, i32 } %.pn166.pn.pn
}

declare noundef zeroext i1 @_Z18keySettingHasMatchRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE8KeyPress(ptr noundef nonnull align 8 dereferenceable(32), i64) local_unnamed_addr #3

declare void @_ZN8KeyPressC1ERKN6SEvent9SKeyInputE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare i32 @iswcntrl(i32 noundef) local_unnamed_addr #10

declare void @_ZN11ChatBackend12scrollPageUpEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

declare void @_ZN11ChatBackend14scrollPageDownEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !135
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !86
  %i.e = icmp ugt i64 %i.d, 3
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !146
  %i.g = load i64, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !84
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi i64 [ %i.g, %.noexc ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 4 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.j = load i32, ptr %1, align 4, !tbaa !138
  store i32 %i.j, ptr %i.i, align 4, !tbaa !138
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.k = call ptr @wmemcpy(ptr noundef %i.i, ptr noundef nonnull %1, i64 noundef %i.d) #25 ; 0 uses
  %.pre6.i = load i64, ptr %i.a, align 8, !tbaa !86
  %.pre7.i = load ptr, ptr %0, align 8, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.l = phi ptr [ %i.i, %._crit_edge.i ], [ %i.i, %bb.d ], [ %.pre7.i, %bb.e ]
  %i.m = phi i64 [ %i.h, %._crit_edge.i ], [ %i.h, %bb.d ], [ %.pre6.i, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 0, ptr %i.o, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare void @_ZN6Client15typeChatMessageERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(1674), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN10ChatPrompt11historyPrevEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

declare void @_ZN10ChatPrompt11historyNextEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

declare void @_ZN10ChatPrompt15cursorOperationENS_8CursorOpENS_11CursorOpDirENS_13CursorOpScopeE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14GUIChatConsole22updatePrimarySelectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(434) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11ChatBackend9getPromptEv(ptr noundef nonnull align 8 dereferenceable(360) %i.b)
  call void @_ZNK10ChatPrompt12getSelectionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(120) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = load ptr, ptr %1, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !136
  invoke void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %2, i64 %i.f, ptr %i.d)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.m)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %2, align 8, !tbaa !85     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !84
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.v = load ptr, ptr %1, align 8, !tbaa !146    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !84
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 4
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !84
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ai = load ptr, ptr %1, align 8, !tbaa !146   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !84
  %i.am = shl i64 %i.al, 2
  %i.an = add i64 %i.am, 4
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10ChatPrompt12getSelectionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ChatPrompt10getLineRefB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(120) %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !262
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !190
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !136, !noalias !263 ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.e
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_checkEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.e, i64 noundef %i.i) #27, !noalias !263
  unreachable

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !135, !alias.scope !263
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !146, !noalias !263
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %i.o = sub nuw i64 %i.i, %i.e
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.o) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !263
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !86, !noalias !263
  %i.p = icmp ugt i64 %spec.select.i.i.i, 3
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_checkEmPKc.exit.i.i
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !146, !alias.scope !263
  %i.r = load i64, ptr %i.a, align 8, !tbaa !86, !noalias !263 ; 2 uses
  store i64 %i.r, ptr %i.l, align 8, !tbaa !84, !alias.scope !263
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_checkEmPKc.exit.i.i
  %i.s = phi i64 [ %i.r, %.noexc10.i.i ], [ %spec.select.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.q, %.noexc10.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_checkEmPKc.exit.i.i ] ; 4 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6substrEmm.exit
  ]
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp43, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #27
          to label %bb.m unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.e
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !200 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !300

bb.j:                                             ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.i, %bb.d
  ret ptr %i.c

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #30
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !84
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !305

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !82
  %i.d = load ptr, ptr %2, align 8, !tbaa !85     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !86
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !85
  %i.i = load i64, ptr %i.a, align 8, !tbaa !86
  store i64 %i.i, ptr %i.c, align 8, !tbaa !84
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !84
  store i8 %i.k, ptr %i.j, align 1, !tbaa !84
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !83
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #30
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !135
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !136
  store i32 0, ptr %i.b, align 8, !tbaa !138
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  %i.d = load ptr, ptr %2, align 8, !tbaa !146    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN4core6stringIwE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !84
  %i.g = shl i64 %i.f, 2
  %i.h = add i64 %i.g, 4
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN4core6stringIwE5clearEb.exit

_ZN4core6stringIwE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !146
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #29 ; 5 uses
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !136
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %i.k, 4294967295                 ; 2 uses
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !146    ; 7 uses
  %wide.trip.count = and i64 %i.k, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.a, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !138
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !138
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !138
  store <4 x i32> %wide.load24, ptr %i.w, align 4, !tbaa !138
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !138
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !138
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !307

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !136
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !138
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !138
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !138
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !138
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !138
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !138
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !138
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !308

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !83
  store i8 0, ptr %i.a, align 8, !tbaa !84
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  %i.c = load ptr, ptr %2, align 8, !tbaa !85     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !84
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #26
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !85
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 5 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !83
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = and i64 %i.i, 4294967295
  %.not18 = icmp eq i64 %i.n, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.o = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.r = load i8, ptr %i.q, align 1, !tbaa !84
  %i.s = load ptr, ptr %0, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil
  store i8 %i.r, ptr %i.t, align 1, !tbaa !84
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_2
