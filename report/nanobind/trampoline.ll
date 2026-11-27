Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/trampoline?download=true
inline.NumInlined: 97
inline.NumDeleted: 53
begin_hunk_0_@_ZN8nanobind6detail16trampoline_enterEP7_objectPKcmbPNS0_6ticketE:bb.a
.lr.ph203:                                        ; preds = %.lr.ph.i97
  %i.ck = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull readonly dereferenceable(1) %1) #16
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101, label %.lr.ph269, !llvm.loop !7

.lr.ph269:                                        ; preds = %.lr.ph203.preheader, %.lr.ph203
  %.01832.i98202268 = phi i32 [ %i.cn, %.lr.ph203 ], [ %i.cb, %.lr.ph203.preheader ]
  %i.cm = add i32 %.01832.i98202268, 1
  %i.cn = and i32 %i.cm, %i.ca                    ; 2 uses
  %i.co = zext i32 %i.cn to i64                   ; 3 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %.not24.i99 = icmp eq ptr %i.cq, null
  br i1 %.not24.i99, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.thread, label %.lr.ph.i97, !llvm.loop !7

.lr.ph.i97._ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.loopexit_crit_edge: ; preds = %.lr.ph.i97
  br label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101, !llvm.loop !7

_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101: ; preds = %.lr.ph203, %.lr.ph203.preheader, %.lr.ph.i97._ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.loopexit_crit_edge, %.lr.ph.i97.preheader
  %.lcssa188 = phi i64 [ %i.cd, %.lr.ph.i97.preheader ], [ %i.cd, %.lr.ph203.preheader ], [ %i.co, %.lr.ph.i97._ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.loopexit_crit_edge ], [ %i.co, %.lr.ph203 ]
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.lcssa188
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not77 = icmp eq ptr %i.ct, null
  br i1 %.not77, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.thread, label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread

_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.thread: ; preds = %.lr.ph269, %bb.t, %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit, %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101
  %i.cu = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.cv = tail call ptr @PyUnicode_InternFromString(ptr noundef %1) ; 9 uses
  %.not.i102 = icmp eq ptr %i.cv, null
  br i1 %.not.i102, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.thread
  tail call void @PyErr_Clear()
  br label %.thread160

bb.v:                                             ; preds = %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 936
  %i.cx = load ptr, ptr %i.cw, align 8            ; 4 uses
  %i.cy = tail call noundef ptr @_ZN8nanobind6detail11type_lookupEPNS0_12nb_internalsEP7_objectS4_(ptr noundef %i.cx, ptr noundef %i.cu, ptr noundef nonnull %i.cv) #15 ; 5 uses
  %.not24.i103 = icmp eq ptr %i.cy, null
  br i1 %.not24.i103, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cz = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.da = and i64 %i.cz, 2147483648
  %.not31.i = icmp eq i64 %i.da, 0
  br i1 %.not31.i, label %bb.x, label %.thread160

bb.x:                                             ; preds = %bb.w
  %i.db = add nsw i64 %i.cz, -1                   ; 2 uses
  store i64 %i.db, ptr %i.cv, align 8
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.y, label %.thread160

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cv)
  br label %.thread160

bb.z:                                             ; preds = %bb.v
  %i.dd = getelementptr i8, ptr %i.cy, i64 8
  %.val.i = load ptr, ptr %i.dd, align 8          ; 3 uses
  %i.de = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.df = and i64 %i.de, 2147483648
  %.not29.i = icmp eq i64 %i.df, 0
  br i1 %.not29.i, label %bb.aa, label %_ZL9Py_DECREFP7_object.exit26.i

bb.aa:                                            ; preds = %bb.z
  %i.dg = add nsw i64 %i.de, -1                   ; 2 uses
  store i64 %i.dg, ptr %i.cy, align 8
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.ab, label %_ZL9Py_DECREFP7_object.exit26.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cy)
  br label %_ZL9Py_DECREFP7_object.exit26.i

_ZL9Py_DECREFP7_object.exit26.i:                  ; preds = %bb.ab, %bb.aa, %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dj = load ptr, ptr %i.di, align 16
  %i.dk = icmp eq ptr %.val.i, %i.dj
  br i1 %i.dk, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZL9Py_DECREFP7_object.exit26.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = icmp eq ptr %.val.i, %i.dm
  br i1 %i.dn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dp = load ptr, ptr %i.do, align 32
  %i.dq = icmp eq ptr %.val.i, %i.dp
  br i1 %i.dq, label %bb.ae, label %_ZN8nanobind6detailL18trampoline_resolveEP11_typeobjectPKcPS4_.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZL9Py_DECREFP7_object.exit26.i
  %i.dr = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.ds = and i64 %i.dr, 2147483648
  %.not30.i = icmp eq i64 %i.ds, 0
  br i1 %.not30.i, label %bb.af, label %_ZN8nanobind6detailL18trampoline_resolveEP11_typeobjectPKcPS4_.exit

bb.af:                                            ; preds = %bb.ae
  %i.dt = add nsw i64 %i.dr, -1                   ; 2 uses
  store i64 %i.dt, ptr %i.cv, align 8
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %_ZN8nanobind6detailL18trampoline_resolveEP11_typeobjectPKcPS4_.exit

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cv)
  br label %_ZN8nanobind6detailL18trampoline_resolveEP11_typeobjectPKcPS4_.exit

_ZN8nanobind6detailL18trampoline_resolveEP11_typeobjectPKcPS4_.exit: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.2.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ %i.cv, %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ae ] ; 13 uses
  %i.dv = load i64, ptr %i.br, align 8
  %i.dw = icmp eq i64 %i.bx, %i.dv
  br i1 %i.dw, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %_ZN8nanobind6detailL18trampoline_resolveEP11_typeobjectPKcPS4_.exit
  %i.dx = load atomic ptr, ptr %i.bs acquire, align 8 ; 3 uses
  %.not.i47.i = icmp eq ptr %i.dx, null
  br i1 %.not.i47.i, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8            ; 2 uses
  %i.ea = and i32 %i.dz, %i.bv                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 3 uses
  %i.ec = zext i32 %i.ea to i64                   ; 3 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %.not2431.i.i = icmp eq ptr %i.ee, null
  br i1 %.not2431.i.i, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.ai
  %i.ef = icmp eq ptr %i.ee, %1
  br i1 %i.ef, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %.lr.ph.i.preheader.i
  %i.eg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ee, ptr noundef nonnull readonly dereferenceable(1) %1) #16
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i, label %.lr.ph207

.lr.ph.i.i:                                       ; preds = %.lr.ph207
  %i.ei = icmp eq ptr %i.ep, %1
  br i1 %i.ei, label %.lr.ph.i.i._ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i.loopexit_crit_edge, label %.lr.ph.i104, !llvm.loop !7

.lr.ph.i104:                                      ; preds = %.lr.ph.i.i
  %i.ej = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ep, ptr noundef nonnull readonly dereferenceable(1) %1) #16
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i, label %.lr.ph207, !llvm.loop !7

.lr.ph207:                                        ; preds = %.lr.ph.i104.preheader, %.lr.ph.i104
  %.01832.i73.i206 = phi i32 [ %i.em, %.lr.ph.i104 ], [ %i.ea, %.lr.ph.i104.preheader ]
  %i.el = add i32 %.01832.i73.i206, 1
  %i.em = and i32 %i.el, %i.dz                    ; 2 uses
  %i.en = zext i32 %i.em to i64                   ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8            ; 3 uses
  %.not24.i.i = icmp eq ptr %i.ep, null
  br i1 %.not24.i.i, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !7

.lr.ph.i.i._ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i
  br label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i, !llvm.loop !7

_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i: ; preds = %.lr.ph.i104, %.lr.ph.i104.preheader, %.lr.ph.i.i._ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i.loopexit_crit_edge, %.lr.ph.i.preheader.i
  %.lcssa71.i = phi i64 [ %i.ec, %.lr.ph.i.preheader.i ], [ %i.ec, %.lr.ph.i104.preheader ], [ %i.en, %.lr.ph.i.i._ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i.loopexit_crit_edge ], [ %i.en, %.lr.ph.i104 ]
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %.lcssa71.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  %.not.i105 = icmp eq ptr %i.es, null
  br i1 %.not.i105, label %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i
  %.not45.i = icmp eq ptr %.2.i, inttoptr (i64 1 to ptr)
  br i1 %.not45.i, label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread.thread169, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = load i64, ptr %.2.i, align 8            ; 2 uses
  %i.eu = and i64 %i.et, 2147483648
  %.not67.i = icmp eq i64 %i.eu, 0
  br i1 %.not67.i, label %bb.al, label %_ZN8nanobind6detail13attach_tstateEv.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.ev = add nsw i64 %i.et, -1                   ; 2 uses
  store i64 %i.ev, ptr %.2.i, align 8
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.am, label %_ZN8nanobind6detail13attach_tstateEv.exit.thread

bb.am:                                            ; preds = %bb.al
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2.i)
  br label %_ZN8nanobind6detail13attach_tstateEv.exit.thread

_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i: ; preds = %.lr.ph207, %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.i, %bb.ai, %bb.ah
  %i.ex = load atomic ptr, ptr %i.bs monotonic, align 8 ; 4 uses
  %.not41.i = icmp eq ptr %i.ex, null             ; 2 uses
  br i1 %.not41.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load i32, ptr %i.ey, align 4
  %.fr.i = freeze i32 %i.ez
  %i.fa = add i32 %.fr.i, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i
  %i.fb = phi i32 [ %i.fa, %bb.an ], [ 1, %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit.thread.i ] ; 2 uses
  %i.fc = shl i32 %i.fb, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.037.i = phi i32 [ 4, %bb.ao ], [ %i.fe, %bb.ap ] ; 4 uses
  %i.fd = icmp ult i32 %.037.i, %i.fc
  %i.fe = shl i32 %.037.i, 1
  br i1 %i.fd, label %bb.ap, label %bb.aq, !llvm.loop !9

bb.aq:                                            ; preds = %bb.ap
  %i.ff = zext i32 %.037.i to i64
  %i.fg = shl nuw nsw i64 %i.ff, 4                ; 2 uses
  %i.fh = or disjoint i64 %i.fg, 16
  %i.fi = tail call noundef ptr @_ZN8nanobind6detail12malloc_checkEm(i64 noundef %i.fh) ; 5 uses
  %i.fj = load atomic i64, ptr %i.ao monotonic, align 8
  %i.fk = and i64 %i.fj, -2
  %i.fl = inttoptr i64 %i.fk to ptr
  store ptr %i.fl, ptr %i.fi, align 8
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = or i64 %i.fm, 1
  store atomic i64 %i.fn, ptr %i.ao monotonic, align 8
  %i.fo = add i32 %.037.i, -1                     ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %5 = zext i32 %i.fo to i64
  %6 = zext i32 %i.fb to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  store i64 %8, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fq, i8 0, i64 %i.fg, i1 false)
  %i.fr = load i8, ptr %1, align 1                ; 2 uses
  %.not6.i.i.i = icmp eq i8 %i.fr, 0
  br i1 %.not6.i.i.i, label %_ZN8nanobind6detail8str_hashEPKc.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %.lr.ph.i.i.i
  %i.fs = phi i8 [ %i.fx, %.lr.ph.i.i.i ], [ %i.fr, %bb.aq ]
  %.08.i.i.i = phi i64 [ %i.fw, %.lr.ph.i.i.i ], [ -3750763034362895579, %bb.aq ]
  %.047.i.i.i = phi ptr [ %i.ft, %.lr.ph.i.i.i ], [ %1, %bb.aq ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.047.i.i.i, i64 1 ; 2 uses
  %i.fu = zext i8 %i.fs to i64
  %i.fv = xor i64 %.08.i.i.i, %i.fu               ; 2 uses
  %i.fw = mul i64 %i.fv, 1099511628211
  %i.fx = load i8, ptr %i.ft, align 1             ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i, label %_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %i.fy = mul i64 %i.fv, 2503978523384928175
  %i.fz = lshr i64 %i.fy, 32
  %i.ga = trunc nuw i64 %i.fz to i32
  br label %_ZN8nanobind6detail8str_hashEPKc.exit.i.i

_ZN8nanobind6detail8str_hashEPKc.exit.i.i:        ; preds = %_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i.i, %bb.aq
  %.0.lcssa.i.i.i = phi i32 [ -121924919, %bb.aq ], [ %i.ga, %_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i.i ]
  %i.gb = and i32 %.0.lcssa.i.i.i, %i.fo          ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.gc ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8
  %.not2.i.i = icmp eq ptr %i.ge, null
  br i1 %.not2.i.i, label %"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit.i", label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %_ZN8nanobind6detail8str_hashEPKc.exit.i.i, %.lr.ph.i48.i
  %.03.i.i = phi i32 [ %i.gg, %.lr.ph.i48.i ], [ %i.gb, %_ZN8nanobind6detail8str_hashEPKc.exit.i.i ]
  %i.gf = add i32 %.03.i.i, 1
  %i.gg = and i32 %i.gf, %i.fo                    ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  %.not.i49.i = icmp eq ptr %i.gj, null
  br i1 %.not.i49.i, label %"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit.i", label %.lr.ph.i48.i, !llvm.loop !11

"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit.i": ; preds = %.lr.ph.i48.i, %_ZN8nanobind6detail8str_hashEPKc.exit.i.i
  %.lcssa.i.i = phi ptr [ %i.gd, %_ZN8nanobind6detail8str_hashEPKc.exit.i.i ], [ %i.gi, %.lr.ph.i48.i ] ; 2 uses
  store ptr %1, ptr %.lcssa.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store ptr %.2.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i106

.preheader.i106:                                  ; preds = %"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit.i"
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.preheader.i106
  %.075.i = phi i32 [ 0, %.preheader.i106 ], [ %i.hq, %bb.av ] ; 2 uses
  %i.gm = zext i32 %.075.i to i64
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gm ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8            ; 3 uses
  %.not43.i = icmp eq ptr %i.go, null
  br i1 %.not43.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8            ; 5 uses
  %.not44.i = icmp eq ptr %i.gq, inttoptr (i64 1 to ptr)
  br i1 %.not44.i, label %_ZL9Py_INCREFP7_object.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = add i32 %i.gr, 1                        ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_ZL9Py_INCREFP7_object.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %i.gs, ptr %i.gq, align 8
  %.pre.i = load ptr, ptr %i.gn, align 8
  %.pre79.i = load ptr, ptr %i.gp, align 8
  br label %_ZL9Py_INCREFP7_object.exit.i

_ZL9Py_INCREFP7_object.exit.i:                    ; preds = %bb.au, %bb.at, %bb.as
  %i.gu = phi ptr [ %.pre79.i, %bb.au ], [ %i.gq, %bb.at ], [ %i.gq, %bb.as ]
  %i.gv = phi ptr [ %.pre.i, %bb.au ], [ %i.go, %bb.at ], [ %i.go, %bb.as ] ; 3 uses
  %i.gw = load i8, ptr %i.gv, align 1             ; 2 uses
  %.not6.i.i50.i = icmp eq i8 %i.gw, 0
  br i1 %.not6.i.i50.i, label %_ZN8nanobind6detail8str_hashEPKc.exit.i56.i, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %_ZL9Py_INCREFP7_object.exit.i, %.lr.ph.i.i51.i
  %i.gx = phi i8 [ %i.hc, %.lr.ph.i.i51.i ], [ %i.gw, %_ZL9Py_INCREFP7_object.exit.i ]
  %.08.i.i52.i = phi i64 [ %i.hb, %.lr.ph.i.i51.i ], [ -3750763034362895579, %_ZL9Py_INCREFP7_object.exit.i ]
  %.047.i.i53.i = phi ptr [ %i.gy, %.lr.ph.i.i51.i ], [ %i.gv, %_ZL9Py_INCREFP7_object.exit.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.047.i.i53.i, i64 1 ; 2 uses
  %i.gz = zext i8 %i.gx to i64
  %i.ha = xor i64 %.08.i.i52.i, %i.gz             ; 2 uses
  %i.hb = mul i64 %i.ha, 1099511628211
  %i.hc = load i8, ptr %i.gy, align 1             ; 2 uses
  %.not.i.i54.i = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i54.i, label %_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i55.i, label %.lr.ph.i.i51.i, !llvm.loop !10

_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i55.i: ; preds = %.lr.ph.i.i51.i
  %i.hd = mul i64 %i.ha, 2503978523384928175
  %i.he = lshr i64 %i.hd, 32
  %i.hf = trunc nuw i64 %i.he to i32
  br label %_ZN8nanobind6detail8str_hashEPKc.exit.i56.i

_ZN8nanobind6detail8str_hashEPKc.exit.i56.i:      ; preds = %_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i55.i, %_ZL9Py_INCREFP7_object.exit.i
  %.0.lcssa.i.i57.i = phi i32 [ -121924919, %_ZL9Py_INCREFP7_object.exit.i ], [ %i.hf, %_ZN8nanobind6detail8str_hashEPKc.exit.loopexit.i55.i ]
  %i.hg = load i32, ptr %i.fp, align 8            ; 2 uses
  %i.hh = and i32 %i.hg, %.0.lcssa.i.i57.i        ; 2 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.hi ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8
  %.not2.i58.i = icmp eq ptr %i.hk, null
  br i1 %.not2.i58.i, label %"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit64.i", label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %_ZN8nanobind6detail8str_hashEPKc.exit.i56.i, %.lr.ph.i59.i
  %.03.i60.i = phi i32 [ %i.hm, %.lr.ph.i59.i ], [ %i.hh, %_ZN8nanobind6detail8str_hashEPKc.exit.i56.i ]
  %i.hl = add i32 %.03.i60.i, 1
  %i.hm = and i32 %i.hl, %i.hg                    ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.hn ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8
  %.not.i61.i = icmp eq ptr %i.hp, null
  br i1 %.not.i61.i, label %"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit64.i", label %.lr.ph.i59.i, !llvm.loop !11

"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit64.i": ; preds = %.lr.ph.i59.i, %_ZN8nanobind6detail8str_hashEPKc.exit.i56.i
  %.lcssa.i62.i = phi ptr [ %i.hj, %_ZN8nanobind6detail8str_hashEPKc.exit.i56.i ], [ %i.ho, %.lr.ph.i59.i ] ; 2 uses
  store ptr %i.gv, ptr %.lcssa.i62.i, align 8
  %.sroa.4.0..sroa_idx.i63.i = getelementptr inbounds nuw i8, ptr %.lcssa.i62.i, i64 8
  store ptr %i.gu, ptr %.sroa.4.0..sroa_idx.i63.i, align 8
  br label %bb.av

bb.av:                                            ; preds = %"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit64.i", %bb.ar
  %i.hq = add i32 %.075.i, 1                      ; 2 uses
  %i.hr = load i32, ptr %i.gk, align 8
  %.not42.i = icmp ugt i32 %i.hq, %i.hr
  br i1 %.not42.i, label %.loopexit.i, label %bb.ar, !llvm.loop !12

.loopexit.i:                                      ; preds = %bb.av, %"_ZZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPvENK3$_0clES4_S5_.exit.i"
  store atomic ptr %i.fi, ptr %i.bs release, align 8
  br label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread

.critedge:                                        ; preds = %_ZN8nanobind6detailL18trampoline_resolveEP11_typeobjectPKcPS4_.exit
  %.not79 = icmp eq ptr %.2.i, inttoptr (i64 1 to ptr)
  br i1 %.not79, label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.backedge, label %bb.aw

bb.aw:                                            ; preds = %.critedge
  %i.hs = load i64, ptr %.2.i, align 8            ; 2 uses
  %i.ht = and i64 %i.hs, 2147483648
  %.not184 = icmp eq i64 %i.ht, 0
  br i1 %.not184, label %bb.ax, label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.backedge

bb.ax:                                            ; preds = %bb.aw
  %i.hu = add nsw i64 %i.hs, -1                   ; 2 uses
  store i64 %i.hu, ptr %.2.i, align 8
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.ay, label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.backedge

bb.ay:                                            ; preds = %bb.ax
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2.i)
  br label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.backedge

_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.backedge: ; preds = %bb.ay, %bb.ax, %bb.aw, %.critedge
  br label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit

_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread: ; preds = %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101, %.loopexit.i
  %.062.ph = phi ptr [ %.2.i, %.loopexit.i ], [ %i.ct, %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit101 ] ; 2 uses
  %i.hw = icmp eq ptr %.062.ph, inttoptr (i64 1 to ptr)
  br i1 %i.hw, label %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread.thread169, label %_ZN8nanobind6detail13attach_tstateEv.exit.thread

_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread.thread169: ; preds = %bb.aj, %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread
  br i1 %3, label %.thread160, label %bb.az

.thread171:                                       ; preds = %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit
  br i1 %3, label %_ZN8nanobind6detail13detach_tstateEPv.exit, label %_ZN8nanobind6detail13detach_tstateEPv.exit88

bb.az:                                            ; preds = %_ZN8nanobind6detailL18trampoline_publishEPNS0_9type_dataEPKcmPv.exit.thread.thread169
  %i.hx = icmp eq ptr %.0.i85122, inttoptr (i64 1 to ptr)
  br i1 %i.hx, label %_ZN8nanobind6detail13detach_tstateEPv.exit88, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hy = ptrtoint ptr %.0.i85122 to i64
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = add i32 %i.hz, -2
  invoke void @PyGILState_Release(i32 noundef %i.ia)
          to label %_ZN8nanobind6detail13detach_tstateEPv.exit88 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  tail call void @__clang_call_terminate(ptr %i.ic) #14
  unreachable

bb.bc:                                            ; preds = %_ZN8nanobind6detailL16trampoline_probeEPNS0_9type_dataEPKcm.exit
  %i.id = invoke ptr @_PyThreadState_UncheckedGet()
          to label %_ZN8nanobind6detail15tstate_attachedEv.exit89 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
end_hunk_0
