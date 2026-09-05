Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/fptostring?download=true
inline.NumInlined: 309
inline.NumDeleted: 181
begin_hunk_0_@_ZN4YAML6detail13fp_formatting10FpToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i:bb.a
  %i.cg = add i8 %i.cf, 1                         ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !10
  %i.ch = icmp eq i8 %i.cg, 58
  br i1 %i.ch, label %.lr.ph, label %.loopexit184, !llvm.loop !37

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.054.4.insert.ext59.lcssa = phi i64 [ %.sroa.054.4.insert.ext59262, %.lr.ph.preheader ], [ %.sroa.054.4.insert.ext59, %.lr.ph ]
  store i8 49, ptr %5, align 1, !tbaa !10
  br label %.loopexit184

.loopexit184:                                     ; preds = %.lr.ph266, %bb.k, %bb.j, %.lr.ph._crit_edge, %.loopexit185
  %.1174 = phi i32 [ 1, %.lr.ph._crit_edge ], [ %.1.lcssa.i, %.loopexit185 ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.cd, %.lr.ph266 ] ; 7 uses
  %.sroa.054.3 = phi i64 [ %.sroa.054.4.insert.ext59.lcssa, %.lr.ph._crit_edge ], [ %.fca.0.extract, %.loopexit185 ], [ %.sroa.054.4.insert.insert, %bb.j ], [ %.sroa.054.4.insert.insert, %bb.k ], [ %.sroa.054.4.insert.ext59265, %.lr.ph266 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ci = trunc i8 %.fca.1.extract to i1
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit184
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 45, ptr %6, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit184
  %.096 = phi ptr [ %i.cj, %bb.l ], [ %6, %.loopexit184 ] ; 9 uses
  %.sroa.054.4.extract.shift64 = lshr i64 %.sroa.054.3, 32
  %.sroa.054.4.extract.trunc65 = trunc nuw i64 %.sroa.054.4.extract.shift64 to i32 ; 3 uses
  %i.ck = add nsw i32 %.1174, %.sroa.054.4.extract.trunc65 ; 9 uses
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, %i.d
  %i.cn = icmp slt i32 %i.ck, -3
  %or.cond = or i1 %i.cm, %i.cn
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = load i8, ptr %5, align 1, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %.096, i64 1 ; 2 uses
  store i8 %i.co, ptr %.096, align 1, !tbaa !10
  %i.cq = icmp sgt i32 %.1174, 1
  br i1 %i.cq, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %i.cr = getelementptr i8, ptr %.096, i64 2
  store i8 46, ptr %i.cp, align 1, !tbaa !10
  %scevgep235 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cs = add nsw i32 %.1174, -1
  %i.ct = zext nneg i32 %i.cs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %scevgep235, i64 %i.ct, i1 false), !tbaa !10
  %narrow252 = add nuw i32 %.1174, 1
  %i.cu = zext i32 %narrow252 to i64
  %scevgep238 = getelementptr i8, ptr %.096, i64 %i.cu
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.298 = phi ptr [ %i.cp, %bb.n ], [ %scevgep238, %.loopexit.loopexit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.298, i64 1
  store i8 101, ptr %.298, align 1, !tbaa !10
  %i.cw = icmp sgt i32 %i.ck, 0
  %i.cx = select i1 %i.cw, i8 43, i8 45
  %i.cy = getelementptr i8, ptr %.298, i64 2
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not33.i132 = icmp eq i32 %i.cl, 0
  br i1 %.not33.i132, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %.loopexit
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.db = zext nneg i32 %i.da to i64
  br label %.lr.ph.i133

.preheader.i139:                                  ; preds = %.lr.ph.i133
  %i.dc = icmp eq i64 %indvars.iv.i134, 0
  br i1 %i.dc, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread: ; preds = %.preheader.i139, %.loopexit
  %.neg = phi i64 [ 1, %.preheader.i139 ], [ 2, %.loopexit ]
  %scevgep.i144 = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i144, i8 48, i64 %.neg, i1 false), !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.de = load i16, ptr %i.dd, align 2
  store i16 %i.de, ptr %7, align 2
  br label %.lr.ph218.preheader

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i136, %.lr.ph.i133 ], [ 0, %.lr.ph.i133.preheader ] ; 4 uses
  %.02634.i135 = phi i64 [ %i.di, %.lr.ph.i133 ], [ %i.db, %.lr.ph.i133.preheader ] ; 3 uses
  %i.df = urem i64 %.02634.i135, 10
  %i.dg = trunc nuw nsw i64 %i.df to i8
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = udiv i64 %.02634.i135, 10
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i134, 1 ; 3 uses
  %i.dj = xor i64 %indvars.iv.i134, -1
  %i.dk = getelementptr inbounds i8, ptr %i.cz, i64 %i.dj
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !10
  %.not.i137 = icmp samesign ult i64 %.02634.i135, 10
  br i1 %.not.i137, label %.preheader.i139, label %.lr.ph.i133, !llvm.loop !0

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149: ; preds = %.preheader.i139
  %i.dl = trunc nuw nsw i64 %indvars.iv.next.i136 to i32
  %i.dm = xor i64 %indvars.iv.i134, -1
  %i.dn = getelementptr inbounds i8, ptr %i.cz, i64 %i.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.dn, i64 %indvars.iv.next.i136, i1 false)
  br label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread
  %.1.lcssa.i142256 = phi i32 [ 2, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread ], [ %i.dl, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149 ] ; 2 uses
  %i.do = zext nneg i32 %.1.lcssa.i142256 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr nonnull align 2 %7, i64 %i.do, i1 false), !tbaa !10
  %narrow253 = add nuw i32 %.1.lcssa.i142256, 2
  %i.dp = zext i32 %narrow253 to i64
  %scevgep242 = getelementptr i8, ptr %.298, i64 %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit182

bb.o:                                             ; preds = %bb.m
  %i.dq = sext i32 %.1174 to i64                  ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %5, i64 %i.dq ; 2 uses
  %i.ds = icmp sgt i32 %i.ck, 0
  br i1 %i.ds, label %.preheader183, label %bb.p

.preheader183:                                    ; preds = %bb.o
  %i.dt = icmp sgt i32 %.1174, 0
  br i1 %i.dt, label %.lr.ph195.preheader, label %._crit_edge

.lr.ph195.preheader:                              ; preds = %.preheader183
  %i.du = call i32 @llvm.umin.i32(i32 %.1174, i32 %i.ck)
  %i.dv = zext nneg i32 %i.du to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.096, ptr nonnull align 1 %5, i64 %i.dv, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %5, i64 %i.dv
  %scevgep230 = getelementptr i8, ptr %.096, i64 %i.dv
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph195.preheader, %.preheader183
  %.5.lcssa = phi ptr [ %.096, %.preheader183 ], [ %scevgep230, %.lr.ph195.preheader ] ; 4 uses
  %.091.lcssa = phi ptr [ %5, %.preheader183 ], [ %scevgep, %.lr.ph195.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %.5.lcssa to i64
  %i.dz = xor i64 %i.dy, -1
  %i.ea = add i64 %i.dz, %i.dx
  %i.eb = trunc i64 %i.ea to i32                  ; 2 uses
  %i.ec = sub nsw i32 %.sroa.054.4.extract.trunc65, %i.eb
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %i.ed = call i32 @llvm.smin.i32(i32 %.sroa.054.4.extract.trunc65, i32 %i.eb) ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph201.preheader, label %._crit_edge202

.lr.ph201.preheader:                              ; preds = %._crit_edge
  %i.ef = zext nneg i32 %i.ed to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.5.lcssa, i8 48, i64 %i.ef, i1 false), !tbaa !10
  %i.eg = zext nneg i32 %i.ed to i64
  %scevgep231 = getelementptr i8, ptr %.5.lcssa, i64 %i.eg
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.lr.ph201.preheader, %._crit_edge
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge ], [ %scevgep231, %.lr.ph201.preheader ]
  %i.eh = zext nneg i32 %.sroa.speculated to i64
  %.pre = ptrtoaddr ptr %.091.lcssa to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %.096, i64 1
  store i8 48, ptr %.096, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge202
  %.1233.pre-phi = phi i64 [ %i.b, %bb.p ], [ %.pre, %._crit_edge202 ]
  %.7 = phi ptr [ %i.ei, %bb.p ], [ %.6.lcssa, %._crit_edge202 ] ; 4 uses
  %.094 = phi i64 [ 0, %bb.p ], [ %i.eh, %._crit_edge202 ] ; 5 uses
  %.1 = phi ptr [ %5, %bb.p ], [ %.091.lcssa, %._crit_edge202 ] ; 9 uses
  %.1268 = ptrtoaddr ptr %.1 to i64
  %.not = icmp eq ptr %.1, %i.dr
  br i1 %.not, label %.loopexit182, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %.7, align 1, !tbaa !10
  %.8204 = getelementptr i8, ptr %.7, i64 1       ; 2 uses
  %i.ej = icmp slt i32 %i.ck, 0
  br i1 %i.ej, label %.lr.ph208.preheader, label %.preheader

.lr.ph208.preheader:                              ; preds = %bb.r
  %i.ek = sub nsw i32 0, %i.ck
  %i.el = zext nneg i32 %i.ek to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.8204, i8 48, i64 %i.el, i1 false), !tbaa !10
  %narrow = sub nsw i32 1, %i.ck
  %i.em = zext nneg i32 %narrow to i64
  %scevgep232 = getelementptr i8, ptr %.7, i64 %i.em
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph208.preheader, %bb.r
  %.8.lcssa = phi ptr [ %.8204, %bb.r ], [ %scevgep232, %.lr.ph208.preheader ] ; 7 uses
  %i.en = icmp ult ptr %.1, %i.dr
  br i1 %i.en, label %iter.check, label %.loopexit182

iter.check:                                       ; preds = %.preheader
  %.8.lcssa267 = ptrtoaddr ptr %.8.lcssa to i64
  %i.eo = add i64 %i.b, %i.dq
  %i.ep = sub i64 %i.eo, %.1233.pre-phi           ; 8 uses
  %scevgep234 = getelementptr i8, ptr %.1, i64 %i.ep
  %min.iters.check = icmp ult i64 %i.ep, 8
  %i.eq = sub i64 %.1268, %.8.lcssa267
  %diff.check = icmp ugt i64 %i.eq, -32
  %or.cond282 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond282, label %.lr.ph212.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check269 = icmp ult i64 %i.ep, 32
  br i1 %min.iters.check269, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.er = and i64 %i.ep, 24
  %n.vec = and i64 %i.ep, -32                     ; 5 uses
  %i.es = getelementptr i8, ptr %.1, i64 %n.vec
  %i.et = getelementptr i8, ptr %.8.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1, i64 %index ; 2 uses
  %next.gep270 = getelementptr i8, ptr %.8.lcssa, i64 %index ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load271 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !10
  %i.ev = getelementptr i8, ptr %next.gep270, i64 16
  store <16 x i8> %wide.load, ptr %next.gep270, align 1, !tbaa !10
  store <16 x i8> %wide.load271, ptr %i.ev, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %.loopexit182, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check, label %.lr.ph212.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec273 = and i64 %i.ep, -8                   ; 4 uses
  %i.ex = getelementptr i8, ptr %.1, i64 %n.vec273
  %i.ey = getelementptr i8, ptr %.8.lcssa, i64 %n.vec273 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index274 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %vec.epilog.vector.body ] ; 3 uses
  %next.gep275 = getelementptr i8, ptr %.1, i64 %index274
  %next.gep276 = getelementptr i8, ptr %.8.lcssa, i64 %index274
  %wide.load277 = load <8 x i8>, ptr %next.gep275, align 1, !tbaa !10
  store <8 x i8> %wide.load277, ptr %next.gep276, align 1, !tbaa !10
  %index.next278 = add nuw i64 %index274, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.ez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n279 = icmp eq i64 %i.ep, %n.vec273
  br i1 %cmp.n279, label %.loopexit182, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2211.ph = phi ptr [ %.1, %iter.check ], [ %i.es, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ]
  %.9210.ph = phi ptr [ %.8.lcssa, %iter.check ], [ %i.et, %vec.epilog.iter.check ], [ %i.ey, %vec.epilog.middle.block ]
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %.lr.ph212
  %.2211 = phi ptr [ %i.fc, %.lr.ph212 ], [ %.2211.ph, %.lr.ph212.preheader ] ; 2 uses
  %.9210 = phi ptr [ %i.fb, %.lr.ph212 ], [ %.9210.ph, %.lr.ph212.preheader ] ; 2 uses
  %i.fa = load i8, ptr %.2211, align 1, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.9210, i64 1 ; 2 uses
  store i8 %i.fa, ptr %.9210, align 1, !tbaa !10
  %i.fc = getelementptr inbounds nuw i8, ptr %.2211, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.fc, %scevgep234
  br i1 %exitcond.not, label %.loopexit182, label %.lr.ph212, !llvm.loop !40

.loopexit182:                                     ; preds = %.lr.ph212, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.q, %.lr.ph218.preheader
  %.11 = phi ptr [ %scevgep242, %.lr.ph218.preheader ], [ %.7, %bb.q ], [ %.8.lcssa, %.preheader ], [ %i.ey, %vec.epilog.middle.block ], [ %i.et, %middle.block ], [ %i.fb, %.lr.ph212 ] ; 2 uses
  %.195 = phi i64 [ 0, %.lr.ph218.preheader ], [ %.094, %bb.q ], [ %.094, %.preheader ], [ %.094, %vec.epilog.middle.block ], [ %.094, %middle.block ], [ %.094, %.lr.ph212 ]
  store i8 0, ptr %.11, align 1, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fd, ptr %0, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ff = ptrtoint ptr %.11 to i64
  %i.fg = ptrtoint ptr %6 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 4 uses
  store i64 %i.fh, ptr %i.a, align 8, !tbaa !32
  %i.fi = icmp ugt i64 %i.fh, 15
  br i1 %i.fi, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit182
  %i.fj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fj, ptr %0, align 8, !tbaa !26
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.fk, ptr %i.fd, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.loopexit182
  %i.fl = phi ptr [ %i.fj, %.noexc ], [ %i.fd, %.loopexit182 ] ; 2 uses
  switch i64 %i.fh, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fm = load i8, ptr %6, align 1, !tbaa !10
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !10
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr nonnull align 1 %6, i64 %i.fh, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i64 %i.fn, ptr %i.fe, align 8, !tbaa !20
  %i.fo = load ptr, ptr %0, align 8, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fq = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fr = add i64 %i.fq, %.195
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fr, i8 noundef signext 48)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %.noexc.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.w:                                             ; preds = %bb.u
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fd
  br i1 %i.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.fu) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.w, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.v ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ft, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.body
  %.pn116 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  resume { ptr, i32 } %.pn116
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML10FpToStringB5cxx11Edm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  tail call void @_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %4 = alloca %"class.std::locale", align 8       ; 2 uses
  %5 = alloca %"struct.std::array", align 1       ; 19 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %6 = alloca %"struct.std::array.0", align 1     ; 10 uses
  %7 = alloca %"struct.std::array", align 2       ; 9 uses
  %i.c = icmp eq i32 %2, 0
  %i.d = select i1 %i.c, i32 6, i32 %2            ; 9 uses
  %or.cond175 = tail call i1 @llvm.is.fpclass.f64(double %1, /* (nan inf zero) */ i32 615)
  br i1 %or.cond175, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.e = load ptr, ptr %3, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.g
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.h ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17, !alias.scope !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !20, !alias.scope !54
  store i8 0, ptr %i.l, align 8, !tbaa !10, !alias.scope !54
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24, !noalias !54 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !noalias !54 ; 2 uses
  %i.r = icmp ugt ptr %i.o, %i.q
  %.08.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.q ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEd.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25, !noalias !54 ; 2 uses
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !54 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #12
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEd.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i:bb.a
  %i.ci = add i8 %i.ch, 1                         ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !10
  %i.cj = icmp eq i8 %i.ci, 58
  br i1 %i.cj, label %.lr.ph, label %.loopexit179, !llvm.loop !48

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.5.8.insert.insert59.lcssa = phi i64 [ %.sroa.5.8.insert.insert59259, %.lr.ph.preheader ], [ %.sroa.5.8.insert.insert59, %.lr.ph ]
  store i8 49, ptr %5, align 1, !tbaa !10
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph263, %bb.k, %bb.j, %.lr.ph._crit_edge, %.loopexit180
  %.1169 = phi i32 [ 1, %.lr.ph._crit_edge ], [ %.1.lcssa.i, %.loopexit180 ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.cf, %.lr.ph263 ] ; 7 uses
  %.sroa.5.3 = phi i64 [ %.sroa.5.8.insert.insert59.lcssa, %.lr.ph._crit_edge ], [ %i.bd, %.loopexit180 ], [ %.sroa.5.8.insert.insert, %bb.j ], [ %.sroa.5.8.insert.insert, %bb.k ], [ %.sroa.5.8.insert.insert59262, %.lr.ph263 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ck = and i64 %.sroa.5.3, 4294967296
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit179
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 45, ptr %6, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit179
  %.090 = phi ptr [ %i.cl, %bb.l ], [ %6, %.loopexit179 ] ; 9 uses
  %.sroa.5.8.extract.trunc61 = trunc i64 %.sroa.5.3 to i32 ; 3 uses
  %i.cm = add nsw i32 %.1169, %.sroa.5.8.extract.trunc61 ; 9 uses
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  %i.co = icmp sgt i32 %i.cm, %i.d
  %i.cp = icmp slt i32 %i.cm, -3
  %or.cond = or i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = load i8, ptr %5, align 1, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  store i8 %i.cq, ptr %.090, align 1, !tbaa !10
  %i.cs = icmp sgt i32 %.1169, 1
  br i1 %i.cs, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %i.ct = getelementptr i8, ptr %.090, i64 2
  store i8 46, ptr %i.cr, align 1, !tbaa !10
  %scevgep230 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cu = add nsw i32 %.1169, -1
  %i.cv = zext nneg i32 %i.cu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %scevgep230, i64 %i.cv, i1 false), !tbaa !10
  %narrow247 = add nuw i32 %.1169, 1
  %i.cw = zext i32 %narrow247 to i64
  %scevgep233 = getelementptr i8, ptr %.090, i64 %i.cw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.292 = phi ptr [ %i.cr, %bb.n ], [ %scevgep233, %.loopexit.loopexit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.292, i64 1
  store i8 101, ptr %.292, align 1, !tbaa !10
  %i.cy = icmp sgt i32 %i.cm, 0
  %i.cz = select i1 %i.cy, i8 43, i8 45
  %i.da = getelementptr i8, ptr %.292, i64 2
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not33.i127 = icmp eq i32 %i.cn, 0
  br i1 %.not33.i127, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %.loopexit
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.dd = zext nneg i32 %i.dc to i64
  br label %.lr.ph.i128

.preheader.i134:                                  ; preds = %.lr.ph.i128
  %i.de = icmp eq i64 %indvars.iv.i129, 0
  br i1 %i.de, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread: ; preds = %.preheader.i134, %.loopexit
  %.neg = phi i64 [ 1, %.preheader.i134 ], [ 2, %.loopexit ]
  %scevgep.i139 = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i139, i8 48, i64 %.neg, i1 false), !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.dg = load i16, ptr %i.df, align 2
  store i16 %i.dg, ptr %7, align 2
  br label %.lr.ph213.preheader

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i131, %.lr.ph.i128 ], [ 0, %.lr.ph.i128.preheader ] ; 4 uses
  %.02634.i130 = phi i64 [ %i.dk, %.lr.ph.i128 ], [ %i.dd, %.lr.ph.i128.preheader ] ; 3 uses
  %i.dh = urem i64 %.02634.i130, 10
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = udiv i64 %.02634.i130, 10
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i129, 1 ; 3 uses
  %i.dl = xor i64 %indvars.iv.i129, -1
  %i.dm = getelementptr inbounds i8, ptr %i.db, i64 %i.dl
  store i8 %i.dj, ptr %i.dm, align 1, !tbaa !10
  %.not.i132 = icmp samesign ult i64 %.02634.i130, 10
  br i1 %.not.i132, label %.preheader.i134, label %.lr.ph.i128, !llvm.loop !0

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144: ; preds = %.preheader.i134
  %i.dn = trunc nuw nsw i64 %indvars.iv.next.i131 to i32
  %i.do = xor i64 %indvars.iv.i129, -1
  %i.dp = getelementptr inbounds i8, ptr %i.db, i64 %i.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.dp, i64 %indvars.iv.next.i131, i1 false)
  br label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread
  %.1.lcssa.i137251 = phi i32 [ 2, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread ], [ %i.dn, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144 ] ; 2 uses
  %i.dq = zext nneg i32 %.1.lcssa.i137251 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr nonnull align 2 %7, i64 %i.dq, i1 false), !tbaa !10
  %narrow248 = add nuw i32 %.1.lcssa.i137251, 2
  %i.dr = zext i32 %narrow248 to i64
  %scevgep237 = getelementptr i8, ptr %.292, i64 %i.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit177

bb.o:                                             ; preds = %bb.m
  %i.ds = sext i32 %.1169 to i64                  ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %5, i64 %i.ds ; 2 uses
  %i.du = icmp sgt i32 %i.cm, 0
  br i1 %i.du, label %.preheader178, label %bb.p

.preheader178:                                    ; preds = %bb.o
  %i.dv = icmp sgt i32 %.1169, 0
  br i1 %i.dv, label %.lr.ph190.preheader, label %._crit_edge

.lr.ph190.preheader:                              ; preds = %.preheader178
  %i.dw = call i32 @llvm.umin.i32(i32 %.1169, i32 %i.cm)
  %i.dx = zext nneg i32 %i.dw to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.090, ptr nonnull align 1 %5, i64 %i.dx, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %5, i64 %i.dx
  %scevgep225 = getelementptr i8, ptr %.090, i64 %i.dx
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph190.preheader, %.preheader178
  %.5.lcssa = phi ptr [ %.090, %.preheader178 ], [ %scevgep225, %.lr.ph190.preheader ] ; 4 uses
  %.085.lcssa = phi ptr [ %5, %.preheader178 ], [ %scevgep, %.lr.ph190.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.5.lcssa to i64
  %i.eb = xor i64 %i.ea, -1
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = sub nsw i32 %.sroa.5.8.extract.trunc61, %i.ed
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.ef = call i32 @llvm.smin.i32(i32 %.sroa.5.8.extract.trunc61, i32 %i.ed) ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph196.preheader, label %._crit_edge197

.lr.ph196.preheader:                              ; preds = %._crit_edge
  %i.eh = zext nneg i32 %i.ef to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.5.lcssa, i8 48, i64 %i.eh, i1 false), !tbaa !10
  %i.ei = zext nneg i32 %i.ef to i64
  %scevgep226 = getelementptr i8, ptr %.5.lcssa, i64 %i.ei
  br label %._crit_edge197

._crit_edge197:                                   ; preds = %.lr.ph196.preheader, %._crit_edge
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge ], [ %scevgep226, %.lr.ph196.preheader ]
  %i.ej = zext nneg i32 %.sroa.speculated to i64
  %.pre = ptrtoaddr ptr %.085.lcssa to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %.090, i64 1
  store i8 48, ptr %.090, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge197
  %.1228.pre-phi = phi i64 [ %i.b, %bb.p ], [ %.pre, %._crit_edge197 ]
  %.7 = phi ptr [ %i.ek, %bb.p ], [ %.6.lcssa, %._crit_edge197 ] ; 4 uses
  %.088 = phi i64 [ 0, %bb.p ], [ %i.ej, %._crit_edge197 ] ; 5 uses
  %.1 = phi ptr [ %5, %bb.p ], [ %.085.lcssa, %._crit_edge197 ] ; 9 uses
  %.1265 = ptrtoaddr ptr %.1 to i64
  %.not106 = icmp eq ptr %.1, %i.dt
  br i1 %.not106, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %.7, align 1, !tbaa !10
  %.8199 = getelementptr i8, ptr %.7, i64 1       ; 2 uses
  %i.el = icmp slt i32 %i.cm, 0
  br i1 %i.el, label %.lr.ph203.preheader, label %.preheader

.lr.ph203.preheader:                              ; preds = %bb.r
  %i.em = sub nsw i32 0, %i.cm
  %i.en = zext nneg i32 %i.em to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.8199, i8 48, i64 %i.en, i1 false), !tbaa !10
  %narrow = sub nsw i32 1, %i.cm
  %i.eo = zext nneg i32 %narrow to i64
  %scevgep227 = getelementptr i8, ptr %.7, i64 %i.eo
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph203.preheader, %bb.r
  %.8.lcssa = phi ptr [ %.8199, %bb.r ], [ %scevgep227, %.lr.ph203.preheader ] ; 7 uses
  %i.ep = icmp ult ptr %.1, %i.dt
  br i1 %i.ep, label %iter.check, label %.loopexit177

iter.check:                                       ; preds = %.preheader
  %.8.lcssa264 = ptrtoaddr ptr %.8.lcssa to i64
  %i.eq = add i64 %i.b, %i.ds
  %i.er = sub i64 %i.eq, %.1228.pre-phi           ; 8 uses
  %scevgep229 = getelementptr i8, ptr %.1, i64 %i.er
  %min.iters.check = icmp ult i64 %i.er, 8
  %i.es = sub i64 %.1265, %.8.lcssa264
  %diff.check = icmp ugt i64 %i.es, -32
  %or.cond279 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond279, label %.lr.ph207.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check266 = icmp ult i64 %i.er, 32
  br i1 %min.iters.check266, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.et = and i64 %i.er, 24
  %n.vec = and i64 %i.er, -32                     ; 5 uses
  %i.eu = getelementptr i8, ptr %.1, i64 %n.vec
  %i.ev = getelementptr i8, ptr %.8.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1, i64 %index ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.8.lcssa, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load268 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !10
  %i.ex = getelementptr i8, ptr %next.gep267, i64 16
  store <16 x i8> %wide.load, ptr %next.gep267, align 1, !tbaa !10
  store <16 x i8> %wide.load268, ptr %i.ex, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %.loopexit177, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check, label %.lr.ph207.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec270 = and i64 %i.er, -8                   ; 4 uses
  %i.ez = getelementptr i8, ptr %.1, i64 %n.vec270
  %i.fa = getelementptr i8, ptr %.8.lcssa, i64 %n.vec270 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index271 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next275, %vec.epilog.vector.body ] ; 3 uses
  %next.gep272 = getelementptr i8, ptr %.1, i64 %index271
  %next.gep273 = getelementptr i8, ptr %.8.lcssa, i64 %index271
  %wide.load274 = load <8 x i8>, ptr %next.gep272, align 1, !tbaa !10
  store <8 x i8> %wide.load274, ptr %next.gep273, align 1, !tbaa !10
  %index.next275 = add nuw i64 %index271, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next275, %n.vec270
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n276 = icmp eq i64 %i.er, %n.vec270
  br i1 %cmp.n276, label %.loopexit177, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2206.ph = phi ptr [ %.1, %iter.check ], [ %i.eu, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ]
  %.9205.ph = phi ptr [ %.8.lcssa, %iter.check ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %.lr.ph207
  %.2206 = phi ptr [ %i.fe, %.lr.ph207 ], [ %.2206.ph, %.lr.ph207.preheader ] ; 2 uses
  %.9205 = phi ptr [ %i.fd, %.lr.ph207 ], [ %.9205.ph, %.lr.ph207.preheader ] ; 2 uses
  %i.fc = load i8, ptr %.2206, align 1, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %.9205, i64 1 ; 2 uses
  store i8 %i.fc, ptr %.9205, align 1, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %.2206, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.fe, %scevgep229
  br i1 %exitcond.not, label %.loopexit177, label %.lr.ph207, !llvm.loop !51

.loopexit177:                                     ; preds = %.lr.ph207, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.q, %.lr.ph213.preheader
  %.11 = phi ptr [ %scevgep237, %.lr.ph213.preheader ], [ %.7, %bb.q ], [ %.8.lcssa, %.preheader ], [ %i.fa, %vec.epilog.middle.block ], [ %i.ev, %middle.block ], [ %i.fd, %.lr.ph207 ] ; 2 uses
  %.189 = phi i64 [ 0, %.lr.ph213.preheader ], [ %.088, %bb.q ], [ %.088, %.preheader ], [ %.088, %vec.epilog.middle.block ], [ %.088, %middle.block ], [ %.088, %.lr.ph207 ]
  store i8 0, ptr %.11, align 1, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ff, ptr %0, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.fg, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.fh = ptrtoint ptr %.11 to i64
  %i.fi = ptrtoint ptr %6 to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 4 uses
  store i64 %i.fj, ptr %i.a, align 8, !tbaa !32
  %i.fk = icmp ugt i64 %i.fj, 15
  br i1 %i.fk, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit177
  %i.fl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fl, ptr %0, align 8, !tbaa !26
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.fm, ptr %i.ff, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.loopexit177
  %i.fn = phi ptr [ %i.fl, %.noexc ], [ %i.ff, %.loopexit177 ] ; 2 uses
  switch i64 %i.fj, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fo = load i8, ptr %6, align 1, !tbaa !10
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !10
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr nonnull align 1 %6, i64 %i.fj, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i64 %i.fp, ptr %i.fg, align 8, !tbaa !20
  %i.fq = load ptr, ptr %0, align 8, !tbaa !26
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fp
  store i8 0, ptr %i.fr, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fs = load i64, ptr %i.fg, align 8, !tbaa !20
  %i.ft = add i64 %i.fs, %.189
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ft, i8 noundef signext 48)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %.noexc.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.w:                                             ; preds = %bb.u
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ff
  br i1 %i.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.fw) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.w, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.v ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fv, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.body
  %.pn111 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  resume { ptr, i32 } %.pn111
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML10FpToStringB5cxx11Eem(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, x86_fp80 noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %4 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  %i.f = icmp eq i64 %2, 0
  %spec.store.select = select i1 %i.f, i64 21, i64 %2
  %i.g = load ptr, ptr %3, align 8, !tbaa !13
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.store.select, ptr %i.k, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, x86_fp80 noundef %1)
          to label %_ZNSolsEe.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %eh.lpad-body

_ZNSolsEe.exit:                                   ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !17, !alias.scope !68
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !20, !alias.scope !68
  store i8 0, ptr %i.o, align 8, !tbaa !10, !alias.scope !68
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24, !noalias !68 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !noalias !68 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  %.08.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.t ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEe.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25, !noalias !68 ; 2 uses
  %i.x = ptrtoint ptr %.08.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !68 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ac) #12
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEe.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary64EmiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpImNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi:bb.a
  br i1 %i.dh, label %bb.h, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108

bb.h:                                             ; preds = %bb.g
  %i.di = add nsw i64 %i.cx, -1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.dj = icmp ugt i64 %i.cy, %i.cd
  br i1 %i.dj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = add i64 %.0, -1                         ; 2 uses
  %i.dl = mul i64 %.sroa.0.0.copyload.i.i118, %i.dk
  %i.dm = zext i64 %i.dk to i128
  %i.dn = mul nuw i128 %i.cn, %i.dm               ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = trunc nuw i128 %i.do to i64
  %i.dq = trunc i128 %i.dn to i64
  %i.dr = add i64 %i.dl, %i.dp                    ; 2 uses
  %i.ds = sub nsw i32 64, %i.ca
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dr, %i.dt
  %i.dv = trunc i64 %i.du to i32
  %.sroa.04.0.insert.ext.i = and i32 %i.dv, 1
  %i.dw = shl i64 %i.dr, %i.cf
  %i.dx = lshr i64 %i.dq, %i.dt
  %i.dy = or i64 %i.dx, %i.dw
  %i.dz = icmp eq i64 %i.dy, 0
  %.not185.not = icmp eq i8 %i.bp, 0
  %narrow = select i1 %.not185.not, i1 %i.dz, i1 false
  %i.ea = zext i1 %narrow to i32
  %i.eb = or i32 %.sroa.04.0.insert.ext.i, %i.ea
  %.not95 = icmp eq i32 %i.eb, 0
  br i1 %.not95, label %bb.k, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108: ; preds = %bb.j, %bb.g
  %i.ec = mul i64 %i.cx, 28999941890838049        ; 2 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 56) ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 184467440738        ; 2 uses
  %spec.select182 = select i1 %i.ee, i64 2, i64 0
  %spec.select183 = select i1 %i.ee, i64 %i.ed, i64 %i.cx ; 2 uses
  %i.ef = mul i64 %spec.select183, 182622766329724561 ; 2 uses
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 60) ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 1844674407370956    ; 2 uses
  %i.ei = select i1 %i.eh, i64 %i.eg, i64 %spec.select183 ; 2 uses
  %i.ej = mul i64 %i.ei, -8116567392432202711     ; 2 uses
  %i.ek = tail call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 62) ; 2 uses
  %i.el = icmp ult i64 %i.ek, 184467440737095517  ; 2 uses
  %i.em = select i1 %i.el, i64 2, i64 0
  %i.en = select i1 %i.el, i64 %i.ek, i64 %i.ei   ; 2 uses
  %i.eo = mul i64 %i.en, -3689348814741910323     ; 2 uses
  %i.ep = tail call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 63) ; 2 uses
  %i.eq = icmp ult i64 %i.ep, 1844674407370955162 ; 2 uses
  %i.er = select i1 %i.eq, i64 %i.ep, i64 %i.en
  %i.es = zext i1 %i.eh to i64
  %i.et = or disjoint i64 %spec.select182, %i.es
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = zext i1 %i.eq to i64
  %i.ew = add nuw nsw i64 %i.bs, 1
  %i.ex = add nuw nsw i64 %i.ew, %i.eu
  %i.ey = add nuw nsw i64 %i.ex, %i.em
  %i.ez = add nuw nsw i64 %i.ey, %i.ev
  %i.fa = lshr i64 %0, 31
  %.sroa.4.8.insert.shift.i.i129 = and i64 %i.fa, 4294967296
  br label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.084 = phi i64 [ %i.di, %bb.h ], [ %i.cx, %bb.i ], [ %i.cx, %bb.j ]
  %.083 = phi i64 [ 1000, %bb.h ], [ %i.cy, %bb.i ], [ %i.cy, %bb.j ]
  %i.fb = mul nsw i64 %.084, 10
  %i.fc = lshr i64 %i.cd, 1
  %i.fd = sub i64 %.083, %i.fc                    ; 2 uses
  %i.fe = mul i64 %i.fd, 656
  %i.ff = add i64 %i.fe, 32800                    ; 2 uses
  %i.fg = and i64 %i.ff, 65520
  %i.fh = icmp samesign ult i64 %i.fg, 656
  %i.fi = lshr i64 %i.ff, 16                      ; 2 uses
  %i.fj = add nsw i64 %i.fi, %i.fb                ; 3 uses
  br i1 %i.fh, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.fk = mul i64 %.sroa.0.0.copyload.i.i118, %.0
  %i.fl = zext i64 %.0 to i128
  %i.fm = mul nuw i128 %i.cn, %i.fl               ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = trunc nuw i128 %i.fn to i64
  %i.fp = add i64 %i.fk, %i.fo                    ; 2 uses
  %i.fq = sub nsw i32 64, %i.ca
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = lshr i64 %i.fp, %i.fr
  %i.ft = xor i64 %i.fd, %i.fs
  %i.fu = and i64 %i.ft, 1
  %.not96 = icmp eq i64 %i.fu, 0
  br i1 %.not96, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fv = add nsw i64 %i.fj, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.fw = shl i64 %i.fp, %i.cf
  %i.fx = trunc i128 %i.fm to i64
  %i.fy = lshr i64 %i.fx, %i.fr
  %i.fz = or i64 %i.fy, %i.fw
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = trunc i64 %i.fi to i1
  %.not97.not = and i1 %i.ga, %i.gb
  %i.gc = sext i1 %.not97.not to i64
  %spec.select105 = add nsw i64 %i.fj, %i.gc
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.2 = phi i64 [ %i.fj, %bb.k ], [ %i.fv, %bb.m ], [ %spec.select105, %bb.n ]
  %i.gd = lshr i64 %0, 31
  %.sroa.4.8.insert.shift.i.i142 = and i64 %i.gd, 4294967296
  br label %bb.p

bb.p:                                             ; preds = %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108, %bb.o, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit, %bb.d
  %.sink = phi i64 [ %i.ez, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %i.bs, %bb.o ], [ %i.bb, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %i.g, %bb.d ]
  %.sroa.4.8.insert.shift.i.i129.sink = phi i64 [ %.sroa.4.8.insert.shift.i.i129, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %.sroa.4.8.insert.shift.i.i142, %bb.o ], [ %i.bc, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %i.bm, %bb.d ]
  %.086.pn = phi i64 [ %i.er, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %.2, %bb.o ], [ %i.at, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %.086, %bb.d ]
  %.sroa.22.8.insert.ext.i.i130 = and i64 %.sink, 4294967295
  %.sroa.22.8.insert.insert.i.i131 = or disjoint i64 %.sroa.22.8.insert.ext.i.i130, %.sroa.4.8.insert.shift.i.i129.sink
  %.fca.0.insert.i.i113.pn = insertvalue { i64, i64 } poison, i64 %.086.pn, 0
  %.pn101.pn = insertvalue { i64, i64 } %.fca.0.insert.i.i113.pn, i64 %.sroa.22.8.insert.insert.i.i131, 1
  ret { i64, i64 } %.pn101.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), x86_fp80 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = !{i32 1, !"long-double-type", !"x86_fp80"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"vtable pointer", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !6, i64 16}
!20 = !{!19, !18, i64 8}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!22 = !{!"_ZTSSt6locale", !21, i64 0}
!23 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !22, i64 56}
!24 = !{!23, !15, i64 40}
!25 = !{!23, !15, i64 32}
!26 = !{!19, !15, i64 0}
!27 = !{!"_ZTSSi", !18, i64 8}
!28 = !{!27, !18, i64 8}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = !{!18, !18, i64 0}
!33 = distinct !{!33, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!34 = distinct !{!34, !33, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!35 = distinct !{!35, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!36 = distinct !{!36, !35, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11, !29, !30}
!39 = distinct !{!39, !11, !29, !30}
!40 = distinct !{!40, !11, !29}
!41 = !{!34}
!42 = !{!36}
!43 = !{!36, !34}
!44 = distinct !{!44, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!45 = distinct !{!45, !44, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!46 = distinct !{!46, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!47 = distinct !{!47, !46, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11, !29, !30}
!50 = distinct !{!50, !11, !29, !30}
!51 = distinct !{!51, !11, !29}
!52 = !{!45}
!53 = !{!47}
!54 = !{!47, !45}
!55 = distinct !{!55, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!56 = distinct !{!56, !55, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!58 = distinct !{!58, !57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!59 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!60 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!61 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !18, i64 8}
!63 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!64 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !59, i64 24, !60, i64 28, !60, i64 32, !61, i64 40, !62, i64 48, !6, i64 64, !7, i64 192, !63, i64 200, !22, i64 208}
!65 = !{!64, !18, i64 8}
!66 = !{!56}
!67 = !{!58}
!68 = !{!58, !56}
end_hunk_2
