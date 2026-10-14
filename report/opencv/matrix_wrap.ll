Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_wrap?download=true
inline.NumInlined: 4846
inline.NumDeleted: 1955
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK2cv11_InputArray6sizendEPii:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv11_InputArray6sizendEPii, ptr noundef nonnull @.str.1, i32 noundef 660) #21
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.n:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !46
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.m
  %.pn130 = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.ar, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.au

bb.o:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 3 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !281 ; 7 uses
  %.not132 = icmp ne ptr %1, null
  %i.bc = icmp sgt i32 %i.bb, 0
  %or.cond168 = select i1 %.not132, i1 %i.bc, i1 false
  br i1 %or.cond168, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 60 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.bb to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.bb, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.be = sub i64 %i.a, %i.az
  %i.bf = add i64 %i.be, -61
  %diff.check = icmp ult i64 %i.bf, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !33
  %wide.load223 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !33
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %wide.load, ptr %i.bi, align 4, !tbaa !33
  store <4 x i32> %wide.load223, ptr %i.bj, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.prol
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !33
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !33
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !398

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !33
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next.1
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !33
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !33
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !399

bb.p:                                             ; preds = %bb.a
  %i.cc = icmp eq i32 %i.b, 327680
  %i.cd = icmp sgt i32 %2, -1                     ; 4 uses
  %or.cond = and i1 %i.cd, %i.cc
  br i1 %or.cond, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !37 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !244
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !245 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 208
  %i.cn = trunc i64 %i.cm to i32
  %i.co = icmp slt i32 %2, %i.cn
  br i1 %i.co, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv11_InputArray6sizendEPii, ptr noundef nonnull @.str.1, i32 noundef 670) #21
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.v:                                             ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.v
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !46
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.u
  %.pn127 = phi { ptr, i32 } [ %i.cp, %bb.u ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %i.cq, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.au

bb.w:                                             ; preds = %bb.q
  %i.cw = zext nneg i32 %2 to i64                 ; 2 uses
  %i.cx = getelementptr inbounds nuw [208 x i8], ptr %i.ci, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !259 ; 7 uses
  %.not129 = icmp ne ptr %1, null
  %i.da = icmp sgt i32 %i.cz, 0
  %or.cond169 = select i1 %.not129, i1 %i.da, i1 false
  br i1 %or.cond169, label %.lr.ph166, label %.loopexit

.lr.ph166:                                        ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 84 ; 6 uses
  %wide.trip.count195 = zext nneg i32 %i.cz to i64 ; 5 uses
  %min.iters.check269 = icmp ult i32 %i.cz, 20
  br i1 %min.iters.check269, label %scalar.ph268.preheader, label %vector.memcheck266

vector.memcheck266:                               ; preds = %.lr.ph166
  %.neg289 = mul nsw i64 %i.cw, -208
  %i.dc = add i64 %i.a, -84
  %i.dd = sub i64 %i.dc, %i.ck
  %i.de = add i64 %.neg289, %i.dd
  %i.df = add i64 %i.de, -1
  %diff.check267 = icmp ult i64 %i.df, 31
  br i1 %diff.check267, label %scalar.ph268.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %vector.memcheck266
  %n.vec271 = and i64 %wide.trip.count195, 2147483640 ; 3 uses
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next276, %vector.body272 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index273 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load274 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !33
  %wide.load275 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !33
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index273 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %wide.load274, ptr %i.di, align 4, !tbaa !33
  store <4 x i32> %wide.load275, ptr %i.dj, align 4, !tbaa !33
  %index.next276 = add nuw i64 %index273, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next276, %n.vec271
  br i1 %i.dk, label %middle.block277, label %vector.body272, !llvm.loop !400

middle.block277:                                  ; preds = %vector.body272
  %cmp.n278 = icmp eq i64 %n.vec271, %wide.trip.count195
  br i1 %cmp.n278, label %.loopexit, label %scalar.ph268.preheader

scalar.ph268.preheader:                           ; preds = %vector.memcheck266, %.lr.ph166, %middle.block277
  %indvars.iv192.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %.lr.ph166 ], [ %n.vec271, %middle.block277 ] ; 3 uses
  %xtraiter295 = and i64 %wide.trip.count195, 3   ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %scalar.ph268.prol.loopexit, label %scalar.ph268.prol

scalar.ph268.prol:                                ; preds = %scalar.ph268.preheader, %scalar.ph268.prol
  %indvars.iv192.prol = phi i64 [ %indvars.iv.next193.prol, %scalar.ph268.prol ], [ %indvars.iv192.ph, %scalar.ph268.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %scalar.ph268.prol ], [ 0, %scalar.ph268.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv192.prol
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !33
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv192.prol
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !33
  %indvars.iv.next193.prol = add nuw nsw i64 %indvars.iv192.prol, 1 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %scalar.ph268.prol.loopexit, label %scalar.ph268.prol, !llvm.loop !401

scalar.ph268.prol.loopexit:                       ; preds = %scalar.ph268.prol, %scalar.ph268.preheader
  %indvars.iv192.unr = phi i64 [ %indvars.iv192.ph, %scalar.ph268.preheader ], [ %indvars.iv.next193.prol, %scalar.ph268.prol ]
  %i.do = sub nsw i64 %indvars.iv192.ph, %wide.trip.count195
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %.loopexit, label %scalar.ph268

scalar.ph268:                                     ; preds = %scalar.ph268.prol.loopexit, %scalar.ph268
  %indvars.iv192 = phi i64 [ %indvars.iv.next193.3, %scalar.ph268 ], [ %indvars.iv192.unr, %scalar.ph268.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv192
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv192
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !33
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next193
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next193
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !33
  %indvars.iv.next193.1 = add nuw nsw i64 %indvars.iv192, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next193.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !33
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next193.1
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !33
  %indvars.iv.next193.2 = add nuw nsw i64 %indvars.iv192, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next193.2
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next193.2
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !33
  %indvars.iv.next193.3 = add nuw nsw i64 %indvars.iv192, 4 ; 2 uses
  %exitcond196.not.3 = icmp eq i64 %indvars.iv.next193.3, %wide.trip.count195
  br i1 %exitcond196.not.3, label %.loopexit, label %scalar.ph268, !llvm.loop !402

bb.x:                                             ; preds = %bb.p
  %i.ec = icmp eq i32 %i.b, 983040
  %or.cond3 = and i1 %i.cd, %i.ec
  br i1 %or.cond3, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !246
  %i.ef = icmp slt i32 %2, %i.ee
  br i1 %i.ef, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv11_InputArray6sizendEPii, ptr noundef nonnull @.str.1, i32 noundef 680) #21
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.ad:                                            ; preds = %bb.aa
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.ad
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !46
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.ac
  %.pn124 = phi { ptr, i32 } [ %i.eg, %bb.ac ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.eh, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.au

bb.ae:                                            ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !37 ; 2 uses
  %i.ep = ptrtoaddr ptr %i.eo to i64
  %i.eq = zext nneg i32 %2 to i64                 ; 2 uses
  %i.er = getelementptr inbounds nuw [208 x i8], ptr %i.eo, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !259 ; 7 uses
  %.not126 = icmp ne ptr %1, null
  %i.eu = icmp sgt i32 %i.et, 0
  %or.cond170 = select i1 %.not126, i1 %i.eu, i1 false
  br i1 %or.cond170, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 84 ; 6 uses
  %wide.trip.count190 = zext nneg i32 %i.et to i64 ; 5 uses
  %min.iters.check255 = icmp ult i32 %i.et, 20
  br i1 %min.iters.check255, label %scalar.ph254.preheader, label %vector.memcheck252

vector.memcheck252:                               ; preds = %.lr.ph164
  %.neg288 = mul nsw i64 %i.eq, -208
  %i.ew = add i64 %i.a, -84
  %i.ex = sub i64 %i.ew, %i.ep
  %i.ey = add i64 %.neg288, %i.ex
  %i.ez = add i64 %i.ey, -1
  %diff.check253 = icmp ult i64 %i.ez, 31
  br i1 %diff.check253, label %scalar.ph254.preheader, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck252
  %n.vec257 = and i64 %wide.trip.count190, 2147483640 ; 3 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next262, %vector.body258 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index259 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load260 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !33
  %wide.load261 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !33
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index259 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x i32> %wide.load260, ptr %i.fc, align 4, !tbaa !33
  store <4 x i32> %wide.load261, ptr %i.fd, align 4, !tbaa !33
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.fe, label %middle.block263, label %vector.body258, !llvm.loop !403

middle.block263:                                  ; preds = %vector.body258
  %cmp.n264 = icmp eq i64 %n.vec257, %wide.trip.count190
  br i1 %cmp.n264, label %.loopexit, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %vector.memcheck252, %.lr.ph164, %middle.block263
  %indvars.iv187.ph = phi i64 [ 0, %vector.memcheck252 ], [ 0, %.lr.ph164 ], [ %n.vec257, %middle.block263 ] ; 3 uses
  %xtraiter292 = and i64 %wide.trip.count190, 3   ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %scalar.ph254.prol.loopexit, label %scalar.ph254.prol

scalar.ph254.prol:                                ; preds = %scalar.ph254.preheader, %scalar.ph254.prol
  %indvars.iv187.prol = phi i64 [ %indvars.iv.next188.prol, %scalar.ph254.prol ], [ %indvars.iv187.ph, %scalar.ph254.preheader ] ; 3 uses
  %prol.iter294 = phi i64 [ %prol.iter294.next, %scalar.ph254.prol ], [ 0, %scalar.ph254.preheader ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv187.prol
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !33
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv187.prol
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !33
  %indvars.iv.next188.prol = add nuw nsw i64 %indvars.iv187.prol, 1 ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %scalar.ph254.prol.loopexit, label %scalar.ph254.prol, !llvm.loop !404

scalar.ph254.prol.loopexit:                       ; preds = %scalar.ph254.prol, %scalar.ph254.preheader
  %indvars.iv187.unr = phi i64 [ %indvars.iv187.ph, %scalar.ph254.preheader ], [ %indvars.iv.next188.prol, %scalar.ph254.prol ]
  %i.fi = sub nsw i64 %indvars.iv187.ph, %wide.trip.count190
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %.loopexit, label %scalar.ph254

scalar.ph254:                                     ; preds = %scalar.ph254.prol.loopexit, %scalar.ph254
  %indvars.iv187 = phi i64 [ %indvars.iv.next188.3, %scalar.ph254 ], [ %indvars.iv187.unr, %scalar.ph254.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv187
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !33
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv187
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !33
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next188
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next188
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !33
  %indvars.iv.next188.1 = add nuw nsw i64 %indvars.iv187, 2 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next188.1
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !33
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next188.1
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !33
  %indvars.iv.next188.2 = add nuw nsw i64 %indvars.iv187, 3 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next188.2
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !33
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next188.2
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !33
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %exitcond191.not.3 = icmp eq i64 %indvars.iv.next188.3, %wide.trip.count190
  br i1 %exitcond191.not.3, label %.loopexit, label %scalar.ph254, !llvm.loop !405

bb.af:                                            ; preds = %bb.x
  %i.fw = icmp eq i32 %i.b, 720896
  %or.cond5 = and i1 %i.cd, %i.fw
  br i1 %or.cond5, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !37 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !249
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !250 ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = sdiv exact i64 %i.ge, 184
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = icmp slt i32 %2, %i.gg
  br i1 %i.gh, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv11_InputArray6sizendEPii, ptr noundef nonnull @.str.1, i32 noundef 690) #21
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.al:                                            ; preds = %bb.ai
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.al
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !46
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.ak ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.gj, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.au

bb.am:                                            ; preds = %bb.ag
  %i.gp = zext nneg i32 %2 to i64                 ; 2 uses
  %i.gq = getelementptr inbounds nuw [184 x i8], ptr %i.gb, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !281 ; 7 uses
  %.not123 = icmp ne ptr %1, null
  %i.gt = icmp sgt i32 %i.gs, 0
  %or.cond171 = select i1 %.not123, i1 %i.gt, i1 false
  br i1 %or.cond171, label %.lr.ph162, label %.loopexit

.lr.ph162:                                        ; preds = %bb.am
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 60 ; 6 uses
  %wide.trip.count185 = zext nneg i32 %i.gs to i64 ; 5 uses
  %min.iters.check241 = icmp ult i32 %i.gs, 20
  br i1 %min.iters.check241, label %scalar.ph240.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph162
  %.neg = mul nsw i64 %i.gp, -184
  %i.gv = add i64 %i.a, -60
  %i.gw = sub i64 %i.gv, %i.gd
  %i.gx = add i64 %.neg, %i.gw
  %i.gy = add i64 %i.gx, -1
  %diff.check239 = icmp ult i64 %i.gy, 31
  br i1 %diff.check239, label %scalar.ph240.preheader, label %vector.ph242

vector.ph242:                                     ; preds = %vector.memcheck238
  %n.vec243 = and i64 %wide.trip.count185, 2147483640 ; 3 uses
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next248, %vector.body244 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index245 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load246 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !33
  %wide.load247 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !33
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index245 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <4 x i32> %wide.load246, ptr %i.hb, align 4, !tbaa !33
  store <4 x i32> %wide.load247, ptr %i.hc, align 4, !tbaa !33
  %index.next248 = add nuw i64 %index245, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.hd, label %middle.block249, label %vector.body244, !llvm.loop !406

middle.block249:                                  ; preds = %vector.body244
  %cmp.n250 = icmp eq i64 %n.vec243, %wide.trip.count185
  br i1 %cmp.n250, label %.loopexit, label %scalar.ph240.preheader

scalar.ph240.preheader:                           ; preds = %vector.memcheck238, %.lr.ph162, %middle.block249
  %indvars.iv182.ph = phi i64 [ 0, %vector.memcheck238 ], [ 0, %.lr.ph162 ], [ %n.vec243, %middle.block249 ] ; 3 uses
  %xtraiter289 = and i64 %wide.trip.count185, 3   ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol

scalar.ph240.prol:                                ; preds = %scalar.ph240.preheader, %scalar.ph240.prol
  %indvars.iv182.prol = phi i64 [ %indvars.iv.next183.prol, %scalar.ph240.prol ], [ %indvars.iv182.ph, %scalar.ph240.preheader ] ; 3 uses
  %prol.iter291 = phi i64 [ %prol.iter291.next, %scalar.ph240.prol ], [ 0, %scalar.ph240.preheader ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv182.prol
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !33
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv182.prol
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !33
  %indvars.iv.next183.prol = add nuw nsw i64 %indvars.iv182.prol, 1 ; 2 uses
  %prol.iter291.next = add i64 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i64 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol, !llvm.loop !407

scalar.ph240.prol.loopexit:                       ; preds = %scalar.ph240.prol, %scalar.ph240.preheader
  %indvars.iv182.unr = phi i64 [ %indvars.iv182.ph, %scalar.ph240.preheader ], [ %indvars.iv.next183.prol, %scalar.ph240.prol ]
  %i.hh = sub nsw i64 %indvars.iv182.ph, %wide.trip.count185
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %.loopexit, label %scalar.ph240

scalar.ph240:                                     ; preds = %scalar.ph240.prol.loopexit, %scalar.ph240
  %indvars.iv182 = phi i64 [ %indvars.iv.next183.3, %scalar.ph240 ], [ %indvars.iv182.unr, %scalar.ph240.prol.loopexit ] ; 6 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv182
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !33
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv182
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !33
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next183
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !33
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next183
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !33
  %indvars.iv.next183.1 = add nuw nsw i64 %indvars.iv182, 2 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next183.1
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !33
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next183.1
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !33
  %indvars.iv.next183.2 = add nuw nsw i64 %indvars.iv182, 3 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next183.2
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !33
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next183.2
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !33
  %indvars.iv.next183.3 = add nuw nsw i64 %indvars.iv182, 4 ; 2 uses
  %exitcond186.not.3 = icmp eq i64 %indvars.iv.next183.3, %wide.trip.count185
  br i1 %exitcond186.not.3, label %.loopexit, label %scalar.ph240, !llvm.loop !408

bb.an:                                            ; preds = %bb.af
  %i.hv = icmp eq i32 %i.b, 196608
  %i.hw = icmp eq i32 %i.b, 786432
  %or.cond7 = or i1 %i.hv, %i.hw
  %i.hx = icmp eq i32 %i.b, 262144                ; 2 uses
  %or.cond9 = or i1 %i.hx, %or.cond7
  %i.hy = icmp slt i32 %2, 0
  %or.cond11 = and i1 %i.hy, %or.cond9
  %or.cond13 = and i1 %i.cd, %i.hx
  %or.cond137 = or i1 %or.cond13, %or.cond11
  br i1 %or.cond137, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.hz = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %2)
  %.not121 = icmp eq ptr %1, null
  br i1 %.not121, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ia = trunc i64 %i.hz to i32
  store i32 %i.ia, ptr %1, align 4, !tbaa !33
  br label %.loopexit

bb.aq:                                            ; preds = %bb.an
  %i.ib = tail call noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %2)
  %i.ic = icmp slt i32 %i.ib, 3
  br i1 %i.ic, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.id = tail call noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %2)
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.id, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv11_InputArray6sizendEPiiE15__cv_check__709) #21
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ie = tail call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %2) ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.4.0.extract.shift = lshr i64 %i.ie, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %i.ie to i32
  store i32 %.sroa.4.0.extract.trunc, ptr %1, align 4, !tbaa !33
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.if, align 4, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph226.prol.loopexit, %scalar.ph226, %scalar.ph240.prol.loopexit, %scalar.ph240, %scalar.ph254.prol.loopexit, %scalar.ph254, %scalar.ph268.prol.loopexit, %scalar.ph268, %middle.block, %middle.block235, %middle.block249, %middle.block263, %middle.block277, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.am, %bb.ae, %bb.w, %bb.o, %bb.a, %bb.h
  %.0105 = phi i32 [ %i.b, %bb.a ], [ 1, %bb.ao ], [ %i.o, %bb.h ], [ %i.bb, %bb.o ], [ %i.cz, %bb.w ], [ %i.et, %bb.ae ], [ %i.gs, %bb.am ], [ %i.cz, %middle.block277 ], [ %i.o, %middle.block235 ], [ 2, %bb.as ], [ %i.gs, %middle.block249 ], [ %i.et, %middle.block263 ], [ 1, %bb.ap ], [ 2, %bb.at ], [ %i.bb, %middle.block ], [ %i.o, %scalar.ph226.prol.loopexit ], [ %i.cz, %scalar.ph268.prol.loopexit ], [ %i.et, %scalar.ph254.prol.loopexit ], [ %i.gs, %scalar.ph240.prol.loopexit ], [ %i.cz, %scalar.ph268 ], [ %i.et, %scalar.ph254 ], [ %i.gs, %scalar.ph240 ], [ %i.o, %scalar.ph226 ], [ %i.bb, %scalar.ph ], [ %i.bb, %scalar.ph.prol.loopexit ]
  ret i32 %.0105

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn133.pn = phi { ptr, i32 } [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  resume { ptr, i32 } %.pn133.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.val.i = load i32, ptr %0, align 8, !tbaa !33
  %i.a = lshr i32 %.val.i, 16
  %i.b = and i32 %i.a, 31                         ; 2 uses
  switch i32 %i.b, label %bb.cf [
    i32 1, label %bb.b
    i32 10, label %bb.i
    i32 2, label %bb.p
    i32 12, label %bb.v
    i32 3, label %bb.v
    i32 0, label %bb.ck
    i32 4, label %bb.ab
    i32 5, label %bb.ai
    i32 15, label %bb.aq
    i32 11, label %bb.ay
    i32 7, label %bb.bg
    i32 9, label %bb.bm
    i32 16, label %bb.bs
    i32 8, label %bb.bz
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv11_InputArray4dimsEi, ptr noundef nonnull @.str.1, i32 noundef 841) #21
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
end_hunk_0
