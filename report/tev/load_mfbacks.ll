Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/load_mfbacks?download=true
inline.NumInlined: 187
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6LibRaw20phase_one_load_raw_cEv:bb.a
  %.0.i = phi i32 [ 1, %bb.ax ], [ %i.pd, %._crit_edge.i ], [ 1, %.loopexit85 ]
  %i.pe = add nsw i32 %i.mw, -1
  %.neg = shl nsw i32 -1, %i.pe
  %i.pf = add i32 %.0.i, %.neg
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.mu ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !8
  %i.pi = add i32 %i.pf, %i.ph                    ; 3 uses
  store i32 %i.pi, ptr %i.pg, align 4, !tbaa !8
  %i.pj = trunc i32 %i.pi to i16
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv140
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !74
  %i.pl = icmp ult i32 %i.pi, 65536
  br i1 %i.pl, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.thread, %bb.bb, %bb.ba
  %i.pm = load i32, ptr %i.d, align 4, !tbaa !89  ; 2 uses
  %i.pn = icmp eq i32 %i.pm, 5
  br i1 %i.pn, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv140 ; 2 uses
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !74 ; 2 uses
  %i.pq = icmp ult i16 %i.pp, 256
  br i1 %i.pq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.pr = zext nneg i16 %i.pp to i64
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.pr
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !74
  store i16 %i.pt, ptr %i.po, align 2, !tbaa !74
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.be
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.pu = load i16, ptr %i.i, align 2, !tbaa !72  ; 4 uses
  %i.pv = zext i16 %i.pu to i32                   ; 2 uses
  %i.pw = zext i16 %i.pu to i64
  %i.px = icmp samesign ult i64 %indvars.iv.next141, %i.pw
  br i1 %i.px, label %.lr.ph107, label %._crit_edge108, !llvm.loop !174

._crit_edge108:                                   ; preds = %bb.bf
  %i.py = icmp eq i32 %i.pm, 8
  br i1 %i.py, label %bb.bg, label %.preheader89

._crit_edge108.thread:                            ; preds = %bb.l
  %.pre153 = load i32, ptr %i.d, align 4, !tbaa !89
  %i.pz = icmp eq i32 %.pre153, 8
  br i1 %i.pz, label %bb.bg, label %.loopexit90

.preheader89:                                     ; preds = %._crit_edge108
  %.not118 = icmp eq i16 %i.pu, 0
  br i1 %.not118, label %.loopexit90, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader89
  %i.qa = load ptr, ptr %i.cq, align 8, !tbaa !73
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge108.thread, %._crit_edge108
  %.lcssa182 = phi i32 [ 0, %._crit_edge108.thread ], [ %i.pv, %._crit_edge108 ] ; 2 uses
  %i.qb = load ptr, ptr %i.cq, align 8, !tbaa !73
  %i.qc = zext nneg i32 %.lcssa182 to i64
  %i.qd = mul nuw nsw i64 %indvars.iv146, %i.qc
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %i.qd
  %i.qf = shl nuw nsw i32 %.lcssa182, 1
  %i.qg = zext nneg i32 %i.qf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.qe, ptr nonnull align 2 %i.q, i64 %i.qg, i1 false)
  br label %.loopexit90

bb.bh:                                            ; preds = %.lr.ph111, %bb.bh
  %indvars.iv143 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next144, %bb.bh ] ; 3 uses
  %.in = phi i16 [ %i.pu, %.lr.ph111 ], [ %i.qo, %bb.bh ]
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv143
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !74
  %i.qj = shl i16 %i.qi, 2
  %i.qk = zext i16 %.in to i64
  %i.ql = mul nuw nsw i64 %indvars.iv146, %i.qk
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.qa, i64 %i.ql
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %indvars.iv143
  store i16 %i.qj, ptr %i.qn, align 2, !tbaa !74
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.qo = load i16, ptr %i.i, align 2, !tbaa !72  ; 2 uses
  %i.qp = zext i16 %i.qo to i64
  %i.qq = icmp samesign ult i64 %indvars.iv.next144, %i.qp
  br i1 %i.qq, label %bb.bh, label %.loopexit90, !llvm.loop !175

.loopexit90:                                      ; preds = %bb.bh, %._crit_edge108.thread, %.preheader89, %bb.bg
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.qr = load i16, ptr %i.h, align 8, !tbaa !71
  %i.qs = zext i16 %i.qr to i64
  %i.qt = icmp samesign ult i64 %indvars.iv.next147, %i.qs
  br i1 %i.qt, label %bb.j, label %._crit_edge114, !llvm.loop !176

bb.bi:                                            ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
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
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !178
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
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread ; 7 uses

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
  %.not150 = icmp eq i16 %i.v, 0
  br i1 %.not150, label %._crit_edge149, label %.lr.ph148

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.i, %bb.n, %bb.k, %bb.e
  %lpad.loopexit.split-lp280 = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %lpad.loopexit.split-lp280, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #21 ; 0 uses
  %.not104 = icmp eq ptr %i.m, null
  br i1 %.not104, label %bb.as, label %bb.d

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread: ; preds = %bb.b
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %lpad.loopexit.split-lp160, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #21 ; 0 uses
  br label %bb.as

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.m)
          to label %bb.as unwind label %bb.ar

.lr.ph148:                                        ; preds = %bb.c
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

bb.e:                                             ; preds = %.lr.ph148, %._crit_edge145
  %.sroa.0222.0 = phi ptr [ %i.m, %.lr.ph148 ], [ %.sroa.8.0, %._crit_edge145 ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %i.af, %.lr.ph148 ], [ %.sroa.11.0, %._crit_edge145 ] ; 3 uses
  %.sroa.11.0 = phi ptr [ %i.ae, %.lr.ph148 ], [ %.sroa.0222.0, %._crit_edge145 ]
  %.087146 = phi i32 [ 0, %.lr.ph148 ], [ %i.pb, %._crit_edge145 ] ; 16 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader130.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.preheader130.preheader:                          ; preds = %bb.e
  %i.at = load i16, ptr %i.j, align 2, !tbaa !72
  %.not151 = icmp eq i16 %i.at, 0
  br i1 %.not151, label %._crit_edge145, label %.preheader128.lr.ph

.preheader128.lr.ph:                              ; preds = %.preheader130.preheader
  %i.au = trunc i32 %.087146 to i1
  %i.av = select i1 %i.au, i64 3, i64 0
  %i.aw = icmp samesign ugt i32 %.087146, 1
  br label %.preheader128

.loopexit127:                                     ; preds = %._crit_edge
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %indvars220 = trunc i64 %indvars.iv.next209 to i32
  %i.ax = load i16, ptr %i.j, align 2, !tbaa !72
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp samesign ult i32 %indvars220, %i.ay
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 2
  br i1 %i.az, label %.preheader128, label %._crit_edge145, !llvm.loop !179

.preheader128:                                    ; preds = %.preheader128.lr.ph, %.loopexit127
  %indvars.iv217 = phi i64 [ 2, %.preheader128.lr.ph ], [ %indvars.iv.next218, %.loopexit127 ] ; 2 uses
  %indvars.iv208 = phi i64 [ 0, %.preheader128.lr.ph ], [ %indvars.iv.next209, %.loopexit127 ] ; 3 uses
  %indvars221 = trunc i64 %indvars.iv208 to i32   ; 5 uses
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !105
  %.mask = and i32 %i.ba, 2147483647
  %.not152 = icmp eq i32 %.mask, 0
  br i1 %.not152, label %.preheader126, label %.preheader122

.preheader126:                                    ; preds = %bb.o, %.preheader128
  %.not118 = icmp eq i32 %indvars221, 0
  %.neg121.peel184 = add nsw i32 %indvars221, -1  ; 2 uses
  br label %bb.p

.preheader122:                                    ; preds = %.preheader128, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader128 ] ; 5 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !187 ; 3 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !74 ; 2 uses
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %.thread250, label %bb.f

.preheader:                                       ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit, %._crit_edge.i.1
  %.0.i.1 = phi i32 [ %i.dv, %._crit_edge.i.1 ], [ 0, %_ZN6LibRaw11ph1_bithuffEiPt.exit ] ; 2 uses
  %cond267 = icmp eq i16 %i.cm, 0
  br i1 %cond267, label %.thread250, label %bb.j

bb.f:                                             ; preds = %.preheader122
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
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

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
  %.pre.pre = load ptr, ptr %i.ag, align 8, !tbaa !187 ; 2 uses
  %.pre229.pre = load i16, ptr %.pre.pre, align 2, !tbaa !74 ; 2 uses
  %.pre234 = zext i16 %.pre229.pre to i32
  %i.bv = icmp eq i16 %.pre229.pre, 0
  br label %_ZN6LibRaw11ph1_bithuffEiPt.exit

_ZN6LibRaw11ph1_bithuffEiPt.exit:                 ; preds = %bb.f, %.noexc
  %.pre233.pre-phi = phi i32 [ %.pre234, %.noexc ], [ %i.be, %bb.f ] ; 2 uses
  %.pre229 = phi i1 [ %i.bv, %.noexc ], [ false, %bb.f ]
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
  br i1 %.pre229, label %.preheader, label %bb.h

bb.h:                                             ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !102 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %.pre233.pre-phi
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !103 ; 2 uses
  br i1 %i.cs, label %bb.i, label %._crit_edge.i.1

bb.i:                                             ; preds = %bb.h
  %i.cv = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

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
  %i.dl = sub nsw i32 64, %.pre233.pre-phi
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
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

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

.thread250:                                       ; preds = %.preheader, %.preheader122
  %.sroa.6.0249 = phi i32 [ %.0.i.1, %.preheader ], [ 0, %.preheader122 ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.el, align 8, !tbaa !8
  br label %bb.l

_ZN6LibRaw11ph1_bithuffEiPt.exit111:              ; preds = %bb.j, %.noexc110
  %i.em = phi i32 [ %i.ek, %.noexc110 ], [ %i.dy, %bb.j ] ; 2 uses
  %i.en = phi i64 [ %i.ef, %.noexc110 ], [ %i.eb, %bb.j ]
  %i.eo = phi ptr [ %i.eg, %.noexc110 ], [ %i.dw, %bb.j ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = sub nsw i32 64, %i.em
end_hunk_0
