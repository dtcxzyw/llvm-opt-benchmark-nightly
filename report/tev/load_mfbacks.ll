Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/load_mfbacks?download=true
inline.NumInlined: 187
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6LibRaw20phase_one_load_raw_cEv:bb.a
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %i.qd
  %i.qf = shl nuw nsw i32 %.lcssa176, 1
  %i.qg = zext nneg i32 %i.qf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.qe, ptr nonnull align 2 %i.q, i64 %i.qg, i1 false)
  br label %.loopexit90

bb.bh:                                            ; preds = %.lr.ph111, %bb.bh
  %indvars.iv137 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next138, %bb.bh ] ; 3 uses
  %.in = phi i16 [ %i.pu, %.lr.ph111 ], [ %i.qo, %bb.bh ]
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv137
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !74
  %i.qj = shl i16 %i.qi, 2
  %i.qk = zext i16 %.in to i64
  %i.ql = mul nuw nsw i64 %indvars.iv140, %i.qk
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.qa, i64 %i.ql
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %indvars.iv137
  store i16 %i.qj, ptr %i.qn, align 2, !tbaa !74
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.qo = load i16, ptr %i.i, align 2, !tbaa !72  ; 2 uses
  %i.qp = zext i16 %i.qo to i64
  %i.qq = icmp samesign ult i64 %indvars.iv.next138, %i.qp
  br i1 %i.qq, label %bb.bh, label %.loopexit90, !llvm.loop !176

.loopexit90:                                      ; preds = %bb.bh, %._crit_edge108.thread, %.preheader89, %bb.bg
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.qr = load i16, ptr %i.h, align 8, !tbaa !71
  %i.qs = zext i16 %i.qr to i64
  %i.qt = icmp samesign ult i64 %indvars.iv.next141, %i.qs
  br i1 %i.qt, label %bb.j, label %._crit_edge114, !llvm.loop !177

bb.bi:                                            ; preds = %bb.n, %.loopexit.split-lp
  %i.qu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.qu

._crit_edge114:                                   ; preds = %.loopexit90, %.preheader93
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.q)
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 153488
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !179
  %i.qx = sub nsw i32 65532, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.qx, ptr %i.qy, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.bk:                                            ; preds = %bb.bi
  %i.qz = landingpad { ptr, i32 }
          catch ptr null
  %i.ra = extractvalue { ptr, i32 } %i.qz, 0
  tail call void @__clang_call_terminate(ptr %i.ra) #25
  unreachable

bb.bl:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19hasselblad_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.jhead, align 8              ; 8 uses
  %i.a = alloca [12 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.c, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 12 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !72
  %i.l = zext i16 %i.k to i64
  %i.m = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.l, i64 noundef 12)
          to label %bb.c unwind label %.loopexit.split-lp.thread ; 7 uses

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %i.j, align 2, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 381832 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !105  ; 2 uses
  %i.q = icmp ugt i32 %i.p, 1
  %i.r = zext i1 %i.q to i32                      ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136696 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = lshr i32 %i.t, %i.r
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = load i16, ptr %i.i, align 8, !tbaa !71
  %.not147 = icmp eq i16 %i.v, 0
  br i1 %.not147, label %._crit_edge146, label %.lr.ph145

.loopexit:                                        ; preds = %bb.n, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %bb.g
  %lpad.loopexit120 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.e
  %lpad.loopexit128 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.thread:                        ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #21 ; 0 uses
  br label %bb.as

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit120, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit128, %.loopexit.split-lp.loopexit.split-lp.loopexit ]
  %i.y = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #21 ; 0 uses
  %.not104 = icmp eq ptr %i.m, null
  br i1 %.not104, label %bb.as, label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.m)
          to label %bb.as unwind label %bb.ar

.lr.ph145:                                        ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !106
  %. = call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.p) ; 2 uses
  %i.ac = call i32 @llvm.usub.sat.i32(i32 %., i32 1) ; 4 uses
  %i.ad = zext i16 %i.n to i64                    ; 2 uses
  %.idx = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.ao = zext i32 %i.ac to i64                   ; 4 uses
  %i.ap = icmp ult i32 %., 2
  %i.aq = icmp eq i32 %i.ac, 1
  %i.ar = icmp eq i32 %i.ac, 2
  %i.as = icmp eq i32 %i.ac, 3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph145, %._crit_edge142
  %.sroa.0210.0 = phi ptr [ %i.m, %.lr.ph145 ], [ %.sroa.8.0, %._crit_edge142 ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %i.af, %.lr.ph145 ], [ %.sroa.11.0, %._crit_edge142 ] ; 3 uses
  %.sroa.11.0 = phi ptr [ %i.ae, %.lr.ph145 ], [ %.sroa.0210.0, %._crit_edge142 ]
  %.087143 = phi i32 [ 0, %.lr.ph145 ], [ %i.oz, %._crit_edge142 ] ; 16 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader127.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader127.preheader:                          ; preds = %bb.e
  %i.at = load i16, ptr %i.j, align 2, !tbaa !72
  %.not148 = icmp eq i16 %i.at, 0
  br i1 %.not148, label %._crit_edge142, label %.preheader125.lr.ph

.preheader125.lr.ph:                              ; preds = %.preheader127.preheader
  %i.au = trunc i32 %.087143 to i1
  %i.av = select i1 %i.au, i64 3, i64 0
  %i.aw = icmp samesign ugt i32 %.087143, 1
  br label %.preheader125

.loopexit124:                                     ; preds = %._crit_edge
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 2 ; 2 uses
  %indvars208 = trunc i64 %indvars.iv.next197 to i32
  %i.ax = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp samesign ult i32 %indvars208, %i.ay
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 2
  br i1 %i.az, label %.preheader125, label %._crit_edge142, !llvm.loop !180

.preheader125:                                    ; preds = %.preheader125.lr.ph, %.loopexit124
  %indvars.iv205 = phi i64 [ 2, %.preheader125.lr.ph ], [ %indvars.iv.next206, %.loopexit124 ] ; 2 uses
  %indvars.iv196 = phi i64 [ 0, %.preheader125.lr.ph ], [ %indvars.iv.next197, %.loopexit124 ] ; 3 uses
  %indvars209 = trunc i64 %indvars.iv196 to i32   ; 6 uses
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !105
  %.mask = and i32 %i.ba, 2147483647
  %.not149 = icmp eq i32 %.mask, 0
  br i1 %.not149, label %.preheader123, label %.preheader119

.preheader123:                                    ; preds = %bb.o, %.preheader125
  %.not118 = icmp eq i32 %indvars209, 0
  br label %bb.p

.preheader119:                                    ; preds = %.preheader125, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader125 ] ; 5 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !188 ; 3 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !74 ; 2 uses
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %.thread238, label %bb.f

.preheader:                                       ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit, %._crit_edge.i.1
  %.0.i.1 = phi i32 [ %i.dv, %._crit_edge.i.1 ], [ 0, %_ZN6LibRaw11ph1_bithuffEiPt.exit ] ; 2 uses
  %cond255 = icmp eq i16 %i.cm, 0
  br i1 %cond255, label %.thread238, label %bb.j

bb.f:                                             ; preds = %.preheader119
  %i.be = zext i16 %i.bc to i32                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !102 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !103 ; 2 uses
  br i1 %i.bj, label %bb.g, label %_ZN6LibRaw11ph1_bithuffEiPt.exit

bb.g:                                             ; preds = %bb.f
  %i.bm = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.g
  %i.bn = shl i64 %i.bl, 32
  %i.bo = zext i32 %i.bm to i64
  %i.bp = or disjoint i64 %i.bn, %i.bo            ; 2 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !102
  %i.bu = add nsw i32 %i.bt, 32                   ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !102
  %.pre.pre = load ptr, ptr %i.ag, align 8, !tbaa !188 ; 2 uses
  %.pre217.pre = load i16, ptr %.pre.pre, align 2, !tbaa !74 ; 2 uses
  %.pre222 = zext i16 %.pre217.pre to i32
  %i.bv = icmp eq i16 %.pre217.pre, 0
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit

_ZN6LibRaw11ph1_bithuffEiPt.exit:                 ; preds = %bb.f, %.noexc
  %.pre221.pre-phi = phi i32 [ %.pre222, %.noexc ], [ %i.be, %bb.f ] ; 2 uses
  %.pre217 = phi i1 [ %i.bv, %.noexc ], [ false, %bb.f ]
  %.pre = phi ptr [ %.pre.pre, %.noexc ], [ %i.bb, %bb.f ]
  %i.bw = phi i32 [ %i.bu, %.noexc ], [ %i.bi, %bb.f ] ; 2 uses
  %i.bx = phi i64 [ %i.bp, %.noexc ], [ %i.bl, %bb.f ]
  %i.by = phi ptr [ %i.bq, %.noexc ], [ %i.bg, %bb.f ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = sub nsw i32 64, %i.bw
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.bx, %i.cb
  %i.cd = sub nsw i32 64, %i.be
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !74 ; 2 uses
  %i.cj = lshr i16 %i.ci, 8
  %i.ck = zext nneg i16 %i.cj to i32
  %i.cl = sub nsw i32 %i.bw, %i.ck
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !102
  %i.cm = and i16 %i.ci, 255                      ; 2 uses
  %i.cn = zext nneg i16 %i.cm to i32              ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  br i1 %.pre217, label %.preheader, label %bb.h

bb.h:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !102 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %.pre221.pre-phi
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !103 ; 2 uses
  br i1 %i.cs, label %bb.i, label %._crit_edge.i.1

bb.i:                                             ; preds = %bb.h
  %i.cv = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit

.noexc.1:                                         ; preds = %bb.i
  %i.cw = shl i64 %i.cu, 32
  %i.cx = zext i32 %i.cv to i64
  %i.cy = or disjoint i64 %i.cw, %i.cx            ; 2 uses
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !103
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !102
  %i.dd = add nsw i32 %i.dc, 32                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !102
  br label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %.noexc.1, %bb.h
  %i.de = phi i32 [ %i.dd, %.noexc.1 ], [ %i.cr, %bb.h ] ; 2 uses
  %i.df = phi i64 [ %i.cy, %.noexc.1 ], [ %i.cu, %bb.h ]
  %i.dg = phi ptr [ %i.cz, %.noexc.1 ], [ %i.cp, %bb.h ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = sub nsw i32 64, %i.de
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.df, %i.dj
  %i.dl = sub nsw i32 64, %.pre221.pre-phi
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = lshr i64 %i.dk, %i.dm
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !74 ; 2 uses
  %i.dr = lshr i16 %i.dq, 8
  %i.ds = zext nneg i16 %i.dr to i32
  %i.dt = sub nsw i32 %i.de, %i.ds
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !102
  %i.du = and i16 %i.dq, 255
  %i.dv = zext nneg i16 %i.du to i32
  br label %.preheader

bb.j:                                             ; preds = %.preheader
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !102 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.cn
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !103 ; 2 uses
  br i1 %i.dz, label %bb.k, label %_ZN6LibRaw11ph1_bithuffEiPt.exit111

bb.k:                                             ; preds = %bb.j
  %i.ec = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc110 unwind label %.loopexit

.noexc110:                                        ; preds = %bb.k
  %i.ed = shl i64 %i.eb, 32
  %i.ee = zext i32 %i.ec to i64
  %i.ef = or disjoint i64 %i.ed, %i.ee            ; 2 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %i.ef, ptr %i.eh, align 8, !tbaa !103
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !102
  %i.ek = add nsw i32 %i.ej, 32                   ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !102
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111

.thread238:                                       ; preds = %.preheader, %.preheader119
  %.sroa.6.0237 = phi i32 [ %.0.i.1, %.preheader ], [ 0, %.preheader119 ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.el, align 8, !tbaa !8
  br label %bb.l

_ZN6LibRaw11ph1_bithuffEiPt.exit111:              ; preds = %bb.j, %.noexc110
  %i.em = phi i32 [ %i.ek, %.noexc110 ], [ %i.dy, %bb.j ] ; 2 uses
  %i.en = phi i64 [ %i.ef, %.noexc110 ], [ %i.eb, %bb.j ]
  %i.eo = phi ptr [ %i.eg, %.noexc110 ], [ %i.dw, %bb.j ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = sub nsw i32 64, %i.em
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl i64 %i.en, %i.er                    ; 2 uses
  %i.et = sub nsw i32 64, %i.cn
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = lshr i64 %i.es, %i.eu
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = sub nsw i32 %i.em, %i.cn
  store i32 %i.ex, ptr %i.ep, align 8, !tbaa !102
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %notmask = shl nsw i32 -1, %i.cn
  %.neg103 = add nuw nsw i32 %notmask, 1
  %i.ez = icmp slt i64 %i.es, 0
  %i.fa = select i1 %i.ez, i32 0, i32 %.neg103
  %storemerge = add i32 %i.fa, %i.ew
  %storemerge.fr = freeze i32 %storemerge         ; 3 uses
  store i32 %storemerge.fr, ptr %i.ey, align 8, !tbaa !8
  %i.fb = icmp eq i32 %storemerge.fr, 65535
  %spec.select = select i1 %i.fb, i32 -32768, i32 %storemerge.fr
  br label %bb.l

bb.l:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111, %.thread238
  %i.fc = phi ptr [ %i.el, %.thread238 ], [ %i.ey, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  %.sroa.6.0236241 = phi i32 [ %.sroa.6.0237, %.thread238 ], [ %.0.i.1, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ] ; 5 uses
  %i.fd = phi i32 [ 0, %.thread238 ], [ %spec.select, %_ZN6LibRaw11ph1_bithuffEiPt.exit111 ]
  store i32 %i.fd, ptr %i.fc, align 4
  %cond256 = icmp eq i32 %.sroa.6.0236241, 0
  br i1 %cond256, label %.thread243, label %bb.m

.thread243:                                       ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !8
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !102 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %.sroa.6.0236241
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !103 ; 2 uses
  br i1 %i.fj, label %bb.n, label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

bb.n:                                             ; preds = %bb.m
  %i.fm = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc110.1 unwind label %.loopexit

.noexc110.1:                                      ; preds = %bb.n
  %i.fn = shl i64 %i.fl, 32
  %i.fo = zext i32 %i.fm to i64
  %i.fp = or disjoint i64 %i.fn, %i.fo            ; 2 uses
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !103
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !102
  %i.fu = add nsw i32 %i.ft, 32                   ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !102
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1

_ZN6LibRaw11ph1_bithuffEiPt.exit111.1:            ; preds = %.noexc110.1, %bb.m
  %i.fv = phi i32 [ %i.fu, %.noexc110.1 ], [ %i.fi, %bb.m ] ; 2 uses
  %i.fw = phi i64 [ %i.fp, %.noexc110.1 ], [ %i.fl, %bb.m ]
  %i.fx = phi ptr [ %i.fq, %.noexc110.1 ], [ %i.fg, %bb.m ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = sub nsw i32 64, %i.fv
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl i64 %i.fw, %i.ga                    ; 2 uses
  %i.gc = sub nsw i32 64, %.sroa.6.0236241
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 %i.gb, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = sub nsw i32 %i.fv, %.sroa.6.0236241
  store i32 %i.gg, ptr %i.fy, align 8, !tbaa !102
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %notmask.1 = shl nsw i32 -1, %.sroa.6.0236241
  %.neg103.1 = add nuw nsw i32 %notmask.1, 1
  %i.gj = icmp slt i64 %i.gb, 0
  %i.gk = select i1 %i.gj, i32 0, i32 %.neg103.1
  %storemerge258 = add i32 %i.gk, %i.gf
  %storemerge258.fr = freeze i32 %storemerge258   ; 3 uses
  store i32 %storemerge258.fr, ptr %i.gi, align 4, !tbaa !8
  %i.gl = icmp eq i32 %storemerge258.fr, 65535
  %spec.select257 = select i1 %i.gl, i32 -32768, i32 %storemerge258.fr
  br label %bb.o

bb.o:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1, %.thread243
  %i.gm = phi ptr [ %i.ff, %.thread243 ], [ %i.gi, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  %i.gn = phi i32 [ 0, %.thread243 ], [ %spec.select257, %_ZN6LibRaw11ph1_bithuffEiPt.exit111.1 ]
  store i32 %i.gn, ptr %i.gm, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.go = load i32, ptr %i.o, align 8, !tbaa !105
  %i.gp = shl i32 %i.go, 1
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %.preheader119, label %.preheader123, !llvm.loop !181

bb.p:                                             ; preds = %.preheader123, %._crit_edge
  %indvars.iv198 = phi i64 [ %indvars.iv196, %.preheader123 ], [ %indvars.iv.next199, %._crit_edge ] ; 7 uses
  br i1 %.not118, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.gs = load i32, ptr %i.ai, align 4, !tbaa !189
  %i.gt = add i32 %i.gs, 32768
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gu = add nuw i64 %indvars.iv198, 4294967294
  %i.gv = and i64 %i.gu, 4294967295               ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0210.0, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !8  ; 2 uses
  %i.gy = load i32, ptr %i.ah, align 8
  %cond = icmp eq i32 %i.gy, 11
  %or.cond3 = select i1 %i.aw, i1 %cond, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %indvars.iv198
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !8
  %i.hb = sdiv i32 %i.ha, 2
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %i.gv
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !8
  %.neg = sdiv i32 %i.hd, -2
  %i.he = add i32 %i.hb, %i.gx
  %i.hf = add i32 %i.he, %.neg
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %bb.q
  %.184 = phi i32 [ %i.hf, %bb.r ], [ %i.gx, %bb.q ], [ %i.gt, %.thread ] ; 6 uses
  %i.hg = load i32, ptr %i.o, align 8, !tbaa !105 ; 10 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.hi = and i64 %indvars.iv198, 1
  %i.hj = xor i64 %i.hi, %i.av
  %i.hk = trunc nuw nsw i64 %indvars.iv198 to i32 ; 8 uses
  %i.hl = trunc i64 %indvars.iv198 to i1
  %i.hm = load ptr, ptr %i.aj, align 8, !tbaa !73
  %.fr = freeze ptr %i.hm                         ; 9 uses
  %.not101 = icmp ne ptr %.fr, null               ; 6 uses
  %i.hn = load ptr, ptr %i.h, align 8, !tbaa !107 ; 2 uses
  %.not102 = icmp eq ptr %i.hn, null
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hj ; 5 uses
  %i.ho = zext nneg i32 %i.hg to i64
  %i.hp = select i1 %i.hl, i64 %i.ho, i64 0       ; 5 uses
  %wide.trip.count194 = zext nneg i32 %i.hg to i64 ; 6 uses
  %invariant.gep253 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp ; 6 uses
  br i1 %.not102, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.hq = load i32, ptr %invariant.gep253, align 4, !tbaa !8
  %i.hr = add nsw i32 %i.hq, %.184                ; 3 uses
  %i.hs = ashr i32 %i.hr, %i.r                    ; 2 uses
  %or.cond106.peel = select i1 %.not101, i1 %i.ap, i1 false
  br i1 %or.cond106.peel, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.preheader
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = load i16, ptr %i.j, align 2, !tbaa !72
  %i.hv = zext i16 %i.hu to i32
  %i.hw = mul nuw nsw i32 %.087143, %i.hv
  %i.hx = add i32 %i.hw, %i.hk
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.hy
  store i16 %i.ht, ptr %i.hz, align 2, !tbaa !74
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.preheader
  %i.ia = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.ib = zext i16 %i.ia to i32
  %i.ic = sub nsw i32 %.087143, %i.ib             ; 2 uses
  %i.id = load i16, ptr %i.al, align 2, !tbaa !81
  %i.ie = zext i16 %i.id to i32
  %i.if = sub nsw i32 %indvars209, %i.ie          ; 2 uses
  %i.ig = load i16, ptr %i.am, align 2, !tbaa !108
  %i.ih = zext i16 %i.ig to i32                   ; 2 uses
  %i.ii = load i16, ptr %i.an, align 4, !tbaa !109
  %i.ij = zext i16 %i.ii to i32
  %i.ik = icmp ult i32 %i.ic, %i.ij
  %i.il = icmp ult i32 %i.if, %i.ih
  %or.cond107.peel = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond107.peel, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.im = mul i32 %i.ic, %i.ih
  %i.in = add i32 %i.im, %i.if
  %i.io = zext i32 %i.in to i64
  %gep.peel = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.io
  %i.ip = trunc i32 %i.hs to i16
  store i16 %i.ip, ptr %gep.peel, align 2, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %exitcond.peel.not = icmp eq i32 %i.hg, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.peel.next

.lr.ph.split.peel.next:                           ; preds = %bb.w
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !8
  %i.it = add nsw i32 %i.is, %i.hr                ; 3 uses
  %i.iu = ashr i32 %i.it, %i.r                    ; 2 uses
  %or.cond106.peel166 = select i1 %.not101, i1 %i.aq, i1 false
  br i1 %or.cond106.peel166, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.peel.next
  %i.iv = trunc i32 %i.iu to i16
  %i.iw = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ix = zext i16 %i.iw to i32
  %i.iy = mul nuw nsw i32 %.087143, %i.ix
  %i.iz = add i32 %i.iy, %i.hk
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ja
  store i16 %i.iv, ptr %i.jb, align 2, !tbaa !74
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.split.peel.next
  %i.jc = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.jd = zext i16 %i.jc to i32
  %i.je = sub nsw i32 %.087143, %i.jd
  %i.jf = add nsw i32 %i.je, 1                    ; 2 uses
  %i.jg = load i16, ptr %i.al, align 2, !tbaa !81
  %i.jh = zext i16 %i.jg to i32
  %i.ji = sub nsw i32 %indvars209, %i.jh          ; 2 uses
  %i.jj = load i16, ptr %i.am, align 2, !tbaa !108
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = load i16, ptr %i.an, align 4, !tbaa !109
  %i.jm = zext i16 %i.jl to i32
  %i.jn = icmp ult i32 %i.jf, %i.jm
  %i.jo = icmp ult i32 %i.ji, %i.jk
  %or.cond107.peel168 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond107.peel168, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jp = mul i32 %i.jf, %i.jk
  %i.jq = add i32 %i.jp, %i.ji
  %i.jr = zext i32 %i.jq to i64
  %gep.peel167 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.jr
  %i.js = trunc i32 %i.iu to i16
  store i16 %i.js, ptr %gep.peel167, align 2, !tbaa !74
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %exitcond.peel170.not = icmp eq i32 %i.hg, 2
  br i1 %exitcond.peel170.not, label %._crit_edge, label %.lr.ph.split.peel.next164

.lr.ph.split.peel.next164:                        ; preds = %bb.aa
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !8
  %i.jw = add nsw i32 %i.jv, %i.it                ; 3 uses
  %i.jx = ashr i32 %i.jw, %i.r                    ; 2 uses
  %or.cond106.peel173 = select i1 %.not101, i1 %i.ar, i1 false
  br i1 %or.cond106.peel173, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.peel.next164
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ka = zext i16 %i.jz to i32
  %i.kb = mul nuw nsw i32 %.087143, %i.ka
  %i.kc = add i32 %i.kb, %i.hk
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.kd
  store i16 %i.jy, ptr %i.ke, align 2, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.peel.next164
  %i.kf = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.kg = zext i16 %i.kf to i32
  %i.kh = sub nsw i32 %.087143, %i.kg             ; 2 uses
  %i.ki = load i16, ptr %i.al, align 2, !tbaa !81
  %i.kj = zext i16 %i.ki to i32
  %2 = xor i32 %i.kj, -1
  %3 = add i32 %2, %indvars209                    ; 2 uses
  %i.kk = load i16, ptr %i.am, align 2, !tbaa !108
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = load i16, ptr %i.an, align 4, !tbaa !109
  %i.kn = zext i16 %i.km to i32
  %i.ko = icmp ult i32 %i.kh, %i.kn
  %i.kp = icmp ult i32 %3, %i.kl
  %or.cond107.peel175 = select i1 %i.ko, i1 %i.kp, i1 false
  br i1 %or.cond107.peel175, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kq = mul i32 %i.kh, %i.kl
  %i.kr = add i32 %i.kq, %3
  %i.ks = zext i32 %i.kr to i64
  %gep.peel174 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ks
  %i.kt = trunc i32 %i.jx to i16
  store i16 %i.kt, ptr %gep.peel174, align 2, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %exitcond.peel177.not = icmp eq i32 %i.hg, 3
  br i1 %exitcond.peel177.not, label %._crit_edge, label %.lr.ph.split.peel.next171

.lr.ph.split.peel.next171:                        ; preds = %bb.ae
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = add nsw i32 %i.kw, %i.jw                ; 3 uses
  %i.ky = ashr i32 %i.kx, %i.r                    ; 2 uses
  %or.cond106.peel180 = select i1 %.not101, i1 %i.as, i1 false
  br i1 %or.cond106.peel180, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.peel.next171
  %i.kz = trunc i32 %i.ky to i16
  %i.la = load i16, ptr %i.j, align 2, !tbaa !72
  %i.lb = zext i16 %i.la to i32
  %i.lc = mul nuw nsw i32 %.087143, %i.lb
  %i.ld = add i32 %i.lc, %i.hk
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.le
  store i16 %i.kz, ptr %i.lf, align 2, !tbaa !74
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.split.peel.next171
  %i.lg = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.lh = zext i16 %i.lg to i32
  %i.li = sub nsw i32 %.087143, %i.lh
  %i.lj = add nsw i32 %i.li, 1                    ; 2 uses
  %i.lk = load i16, ptr %i.al, align 2, !tbaa !81
  %i.ll = zext i16 %i.lk to i32
  %4 = xor i32 %i.ll, -1
  %5 = add i32 %4, %indvars209                    ; 2 uses
  %i.lm = load i16, ptr %i.am, align 2, !tbaa !108
  %i.ln = zext i16 %i.lm to i32                   ; 2 uses
  %i.lo = load i16, ptr %i.an, align 4, !tbaa !109
  %i.lp = zext i16 %i.lo to i32
  %i.lq = icmp ult i32 %i.lj, %i.lp
  %i.lr = icmp ult i32 %5, %i.ln
  %or.cond107.peel182 = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %or.cond107.peel182, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ls = mul i32 %i.lj, %i.ln
  %i.lt = add i32 %i.ls, %5
  %i.lu = zext i32 %i.lt to i64
  %gep.peel181 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.lu
  %i.lv = trunc i32 %i.ky to i16
  store i16 %i.lv, ptr %gep.peel181, align 2, !tbaa !74
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %exitcond.peel184.not = icmp eq i32 %i.hg, 4
  br i1 %exitcond.peel184.not, label %._crit_edge, label %.lr.ph.split.peel.next178

.lr.ph.split.peel.next178:                        ; preds = %bb.ai
  %invariant.gep249 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not101, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.us.split.us.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count194, 1
  %i.lw = icmp eq i32 %i.hg, 1
  br i1 %i.lw, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter = and i64 %wide.trip.count194, 2147483646
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %min.iters.check = icmp ult i32 %i.hg, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.split.us.preheader265, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.split.us.preheader
  %n.vec = and i64 %wide.trip.count194, 2147483640 ; 3 uses
  %i.lx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.184, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.lx, %vector.ph ], [ %i.ma, %vector.body ]
  %vec.phi263 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.mb, %vector.body ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %index ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %wide.load = load <4 x i32>, ptr %i.ly, align 4, !tbaa !8
  %wide.load264 = load <4 x i32>, ptr %i.lz, align 4, !tbaa !8
  %i.ma = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.mb = add <4 x i32> %wide.load264, %vec.phi263 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mc = icmp eq i64 %index.next, %n.vec
  br i1 %i.mc, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.mb, %i.ma
  %i.md = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count194
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.split.us.preheader265

.lr.ph.split.us.split.us.preheader265:            ; preds = %.lr.ph.split.us.split.us.preheader, %middle.block
  %indvars.iv186.ph = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %n.vec, %middle.block ]
  %.285135.us.us.ph = phi i32 [ %.184, %.lr.ph.split.us.split.us.preheader ], [ %i.md, %middle.block ]
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader265, %.lr.ph.split.us.split.us
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %.lr.ph.split.us.split.us ], [ %indvars.iv186.ph, %.lr.ph.split.us.split.us.preheader265 ] ; 2 uses
  %.285135.us.us = phi i32 [ %i.mf, %.lr.ph.split.us.split.us ], [ %.285135.us.us.ph, %.lr.ph.split.us.split.us.preheader265 ]
  %gep252 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv186
  %i.me = load i32, ptr %gep252, align 4, !tbaa !8
  %i.mf = add nsw i32 %i.me, %.285135.us.us       ; 2 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count194
  br i1 %exitcond190.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !183

.lr.ph.split.us.split:                            ; preds = %bb.al, %.lr.ph.split.us.split.preheader.new
  %indvars.iv191 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next192.1, %bb.al ] ; 4 uses
  %.285135.us = phi i32 [ %.184, %.lr.ph.split.us.split.preheader.new ], [ %i.ms, %bb.al ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter.next.1, %bb.al ]
  %gep254 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv191
  %i.mg = load i32, ptr %gep254, align 4, !tbaa !8
  %i.mh = add nsw i32 %i.mg, %.285135.us          ; 2 uses
  %i.mi = icmp eq i64 %indvars.iv191, %i.ao
  br i1 %i.mi, label %bb.aj, label %.lr.ph.split.us.split.1

bb.aj:                                            ; preds = %.lr.ph.split.us.split
  %i.mj = ashr i32 %i.mh, %i.r
  %i.mk = trunc i32 %i.mj to i16
  %i.ml = load i16, ptr %i.j, align 2, !tbaa !72
  %i.mm = zext i16 %i.ml to i32
  %i.mn = mul nuw nsw i32 %.087143, %i.mm
  %i.mo = add i32 %i.mn, %i.hk
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.mp
  store i16 %i.mk, ptr %i.mq, align 2, !tbaa !74
  br label %.lr.ph.split.us.split.1

.lr.ph.split.us.split.1:                          ; preds = %bb.aj, %.lr.ph.split.us.split
  %indvars.iv.next192 = or disjoint i64 %indvars.iv191, 1 ; 2 uses
  %gep254.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv.next192
  %i.mr = load i32, ptr %gep254.1, align 4, !tbaa !8
  %i.ms = add nsw i32 %i.mr, %i.mh                ; 4 uses
  %i.mt = icmp eq i64 %indvars.iv.next192, %i.ao
  br i1 %i.mt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.us.split.1
  %i.mu = ashr i32 %i.ms, %i.r
  %i.mv = trunc i32 %i.mu to i16
  %i.mw = load i16, ptr %i.j, align 2, !tbaa !72
  %i.mx = zext i16 %i.mw to i32
  %i.my = mul nuw nsw i32 %.087143, %i.mx
  %i.mz = add i32 %i.my, %i.hk
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.na
  store i16 %i.mv, ptr %i.nb, align 2, !tbaa !74
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.split.us.split.1
  %indvars.iv.next192.1 = add nuw nsw i64 %indvars.iv191, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !184

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next178, %bb.ap
  %indvars.iv161 = phi i64 [ 4, %.lr.ph.split.peel.next178 ], [ %indvars.iv.next162, %bb.ap ] ; 4 uses
  %.285135 = phi i32 [ %i.kx, %.lr.ph.split.peel.next178 ], [ %i.nd, %bb.ap ]
  %gep250 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep249, i64 %indvars.iv161
  %i.nc = load i32, ptr %gep250, align 4, !tbaa !8
  %i.nd = add nsw i32 %i.nc, %.285135             ; 3 uses
  %i.ne = ashr i32 %i.nd, %i.r                    ; 2 uses
  %i.nf = and i32 %i.ne, 65535
  %i.ng = icmp eq i64 %indvars.iv161, %i.ao
  %or.cond106 = select i1 %.not101, i1 %i.ng, i1 false
  br i1 %or.cond106, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.split
  %i.nh = trunc i32 %i.ne to i16
  %i.ni = load i16, ptr %i.j, align 2, !tbaa !72
  %i.nj = zext i16 %i.ni to i32
  %i.nk = mul nuw nsw i32 %.087143, %i.nj
  %i.nl = add i32 %i.nk, %i.hk
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.nm
  store i16 %i.nh, ptr %i.nn, align 2, !tbaa !74
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.split
  %i.no = load i16, ptr %i.ak, align 8, !tbaa !80
  %i.np = zext i16 %i.no to i32
  %i.nq = sub nsw i32 %.087143, %i.np
  %i.nr = trunc nuw nsw i64 %indvars.iv161 to i32 ; 2 uses
  %i.ns = and i32 %i.nr, 1
  %i.nt = add nsw i32 %i.nq, %i.ns                ; 2 uses
  %i.nu = load i16, ptr %i.al, align 2, !tbaa !81
  %i.nv = zext i16 %i.nu to i32
  %6 = sub nsw i32 %indvars209, %i.nv
  %i.nw = shl i32 %i.nr, 30
  %i.nx = ashr i32 %i.nw, 31
  %i.ny = add i32 %6, %i.nx                       ; 2 uses
  %i.nz = load i16, ptr %i.am, align 2, !tbaa !108
  %i.oa = zext i16 %i.nz to i32                   ; 2 uses
  %i.ob = load i16, ptr %i.an, align 4, !tbaa !109
  %i.oc = zext i16 %i.ob to i32
  %i.od = icmp ult i32 %i.nt, %i.oc
  %i.oe = icmp ult i32 %i.ny, %i.oa
  %or.cond107 = select i1 %i.od, i1 %i.oe, i1 false
  br i1 %or.cond107, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.of = mul i32 %i.nt, %i.oa
  %i.og = add i32 %i.of, %i.ny
  %i.oh = zext i32 %i.og to i64
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.oh ; 2 uses
  %i.oi = load i16, ptr %gep, align 2, !tbaa !74
  %i.oj = zext i16 %i.oi to i32
  %i.ok = add nuw nsw i32 %i.nf, %i.oj
  %i.ol = lshr i32 %i.ok, 1
  %i.om = trunc nuw i32 %i.ol to i16
  store i16 %i.om, ptr %gep, align 2, !tbaa !74
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count194
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !185

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.al
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv191.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next192.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.285135.us.epil.init = phi i32 [ %.184, %.lr.ph.split.us.split.preheader ], [ %i.ms, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod273 = trunc i32 %i.hg to i1
  call void @llvm.assume(i1 %lcmp.mod273)
  %gep254.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep253, i64 %indvars.iv191.epil.init
  %i.on = load i32, ptr %gep254.epil, align 4, !tbaa !8
  %i.oo = add nsw i32 %i.on, %.285135.us.epil.init ; 3 uses
  %i.op = icmp eq i64 %indvars.iv191.epil.init, %i.ao
  br i1 %i.op, label %bb.aq, label %._crit_edge

bb.aq:                                            ; preds = %.lr.ph.split.us.split.epil.preheader
  %i.oq = ashr i32 %i.oo, %i.r
  %i.or = trunc i32 %i.oq to i16
  %i.os = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ot = zext i16 %i.os to i32
  %i.ou = mul nuw nsw i32 %.087143, %i.ot
  %i.ov = add i32 %i.ou, %i.hk
  %i.ow = zext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ow
  store i16 %i.or, ptr %i.ox, align 2, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %.lr.ph.split.us.split.us, %._crit_edge.loopexit.unr-lcssa, %bb.aq, %.lr.ph.split.us.split.epil.preheader, %middle.block, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.s
  %.285.lcssa = phi i32 [ %.184, %bb.s ], [ %i.oo, %.lr.ph.split.us.split.epil.preheader ], [ %i.mf, %.lr.ph.split.us.split.us ], [ %i.kx, %bb.ai ], [ %i.hr, %bb.w ], [ %i.it, %bb.aa ], [ %i.jw, %bb.ae ], [ %i.md, %middle.block ], [ %i.ms, %._crit_edge.loopexit.unr-lcssa ], [ %i.oo, %bb.aq ], [ %i.nd, %bb.ap ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0210.0, i64 %indvars.iv198
  store i32 %.285.lcssa, ptr %i.oy, align 4, !tbaa !8
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next199, %indvars.iv205
  br i1 %exitcond204.not, label %.loopexit124, label %bb.p, !llvm.loop !186

._crit_edge142:                                   ; preds = %.loopexit124, %.preheader127.preheader
  %i.oz = add nuw nsw i32 %.087143, 1             ; 2 uses
  %i.pa = load i16, ptr %i.i, align 8, !tbaa !71
  %i.pb = zext i16 %i.pa to i32
  %i.pc = icmp samesign ult i32 %i.oz, %i.pb
  br i1 %i.pc, label %bb.e, label %._crit_edge146, !llvm.loop !187

bb.ar:                                            ; preds = %bb.at, %bb.as, %bb.d
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.az

bb.as:                                            ; preds = %.loopexit.split-lp.thread, %bb.d, %.loopexit.split-lp
  invoke void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_rethrow() #22
          to label %bb.ba unwind label %bb.ar

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.pd

._crit_edge146:                                   ; preds = %._crit_edge142, %bb.c
  %.not99 = icmp eq ptr %i.m, null
  br i1 %.not99, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge146
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.m)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge146
  call void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
  %i.pe = load ptr, ptr %i.h, align 8, !tbaa !107
  %.not100 = icmp eq ptr %i.pe, null
  br i1 %.not100, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 381656
  store i32 1, ptr %i.pf, align 8, !tbaa !110
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.az:                                            ; preds = %bb.ar
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  call void @__clang_call_terminate(ptr %i.ph) #25
  unreachable

bb.ba:                                            ; preds = %bb.at
  unreachable
}

declare noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17leaf_hdr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not33 = icmp eq ptr %i.e, null
  %or.cond = select i1 %.not, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 4) #21 ; 2 uses
  store i32 5, ptr %i.g, align 16, !tbaa !88
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.i = load i16, ptr %i.h, align 2, !tbaa !72
  %i.j = zext i16 %i.i to i64
  %i.k = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.j, i64 noundef 2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.026 = phi ptr [ null, %bb.a ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381832 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105  ; 2 uses
  %.not60 = icmp eq i32 %i.n, 0
  br i1 %.not60, label %._crit_edge58, label %.preheader44.lr.ph

.preheader44.lr.ph:                               ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 381856
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %.pre = load i16, ptr %i.o, align 8, !tbaa !71
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader44.lr.ph, %._crit_edge
  %i.x = phi i32 [ %i.n, %.preheader44.lr.ph ], [ %i.cm, %._crit_edge ]
  %i.y = phi i16 [ %.pre, %.preheader44.lr.ph ], [ %i.cn, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.preheader44.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.02556 = phi i32 [ 0, %.preheader44.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.12755 = phi ptr [ %.026, %.preheader44.lr.ph ], [ %.228.lcssa, %._crit_edge ] ; 2 uses
  %.not61 = icmp eq i16 %i.y, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader44, %.critedge
  %.02452 = phi i32 [ %i.ci, %.critedge ], [ 0, %.preheader44 ] ; 4 uses
  %.151 = phi i32 [ %.2, %.critedge ], [ %.02556, %.preheader44 ] ; 3 uses
  %.22850 = phi ptr [ %.5, %.critedge ], [ %.12755, %.preheader44 ] ; 7 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.lr.ph53
  %i.z = load i32, ptr %i.p, align 8, !tbaa !194
  %i.aa = urem i32 %.02452, %i.z
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !83  ; 2 uses
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !94
  %i.ae = add i32 %.151, 1
  %i.af = shl i32 %.151, 2
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ad, %i.ag
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %i.ah, i32 noundef 0)
end_hunk_0
