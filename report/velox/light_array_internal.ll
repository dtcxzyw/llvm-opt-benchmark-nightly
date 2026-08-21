inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb0EEEvPKhlPhliPKt:bb.a
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next71, %i.p
  br i1 %i.er, label %.lr.ph67, label %.loopexit, !llvm.loop !258

.loopexit:                                        ; preds = %.lr.ph67, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb1EEEvPKhlPhliPKt(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %4, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = lshr i32 %4, 3
  %i.c = sdiv i64 %3, 8
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = srem i32 %4, 8                           ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %i.g = sub nsw i32 %4, %i.e
  %i.h = sext i32 %i.g to i64
  %i.i = sext i32 %4 to i64
  br label %.lr.ph57

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 8 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !253
  %i.l = zext i16 %i.k to i64
  %i.m = add nsw i64 %1, %i.l                     ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = trunc i64 %i.m to i8
  %i.r = and i8 %i.q, 7
  %i.s = lshr i8 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !253
  %i.v = zext i16 %i.u to i64
  %i.w = add nsw i64 %1, %i.v                     ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = trunc i64 %i.w to i8
  %i.ab = and i8 %i.aa, 7
  %i.ac = lshr i8 %i.z, %i.ab
  %i.ad = shl i8 %i.ac, 1
  %i.ae = and i8 %i.ad, 2
  %i.af = and i8 %i.s, 1
  %i.ag = or disjoint i8 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !253
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nsw i64 %1, %i.aj                   ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = trunc i64 %i.ak to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.an, %i.ap
  %i.ar = shl i8 %i.aq, 2
  %i.as = and i8 %i.ar, 4
  %i.at = or disjoint i8 %i.ag, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !253
  %i.aw = zext i16 %i.av to i64
  %i.ax = add nsw i64 %1, %i.aw                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = trunc i64 %i.ax to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = lshr i8 %i.ba, %i.bc
  %i.be = shl i8 %i.bd, 3
  %i.bf = and i8 %i.be, 8
  %i.bg = or disjoint i8 %i.at, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !253
  %i.bj = zext i16 %i.bi to i64
  %i.bk = add nsw i64 %1, %i.bj                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = trunc i64 %i.bk to i8
  %i.bp = and i8 %i.bo, 7
  %i.bq = lshr i8 %i.bn, %i.bp
  %i.br = shl i8 %i.bq, 4
  %i.bs = and i8 %i.br, 16
  %i.bt = or disjoint i8 %i.bg, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !253
  %i.bw = zext i16 %i.bv to i64
  %i.bx = add nsw i64 %1, %i.bw                   ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.cb = trunc i64 %i.bx to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = lshr i8 %i.ca, %i.cc
  %i.ce = shl i8 %i.cd, 5
  %i.cf = and i8 %i.ce, 32
  %i.cg = or disjoint i8 %i.bt, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !253
  %i.cj = zext i16 %i.ci to i64
  %i.ck = add nsw i64 %1, %i.cj                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = trunc i64 %i.ck to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = lshr i8 %i.cn, %i.cp
  %i.cr = shl i8 %i.cq, 6
  %i.cs = and i8 %i.cr, 64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !253
  %i.cv = zext i16 %i.cu to i64
  %i.cw = add nsw i64 %1, %i.cv                   ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !18
  %i.da = trunc i64 %i.cw to i8
  %i.db = and i8 %i.da, 7
  %i.dc = lshr i8 %i.cz, %i.db
  %i.dd = shl i8 %i.dc, 7
  %i.de = or i8 %i.cg, %i.cs
  %i.df = or i8 %i.de, %i.dd
  %i.dg = getelementptr i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !259

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %indvars.iv60 = phi i64 [ %i.h, %.lr.ph57.preheader ], [ %indvars.iv.next61, %.lr.ph57 ] ; 3 uses
  %i.dh = add nsw i64 %3, %indvars.iv60           ; 2 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %5, i64 %indvars.iv60
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !253
  %i.dk = zext i16 %i.dj to i64
  %i.dl = add nsw i64 %1, %i.dk                   ; 2 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = trunc i64 %i.dl to i8
  %i.dq = and i8 %i.dp, 7
  %i.dr = lshr i8 %i.do, %i.dq
  %i.ds = and i8 %i.dr, 1
  %.neg.i = sub nsw i8 0, %i.ds
  %i.dt = sdiv i64 %i.dh, 8
  %i.du = getelementptr inbounds i8, ptr %2, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %i.dw = xor i8 %i.dv, %.neg.i
  %i.dx = srem i64 %i.dh, 8
  %i.dy = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !18
  %i.ea = and i8 %i.dw, %i.dz
  %i.eb = xor i8 %i.ea, %i.dv
  store i8 %i.eb, ptr %i.du, align 1, !tbaa !18
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.ec = icmp slt i64 %indvars.iv.next61, %i.i
  br i1 %i.ec, label %.lr.ph57, label %.loopexit, !llvm.loop !260

.loopexit:                                        ; preds = %.lr.ph57, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %7 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %10 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %11 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %12 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %13 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %14 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %18 = alloca %class.anon.86, align 8            ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !142  ; 34 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !16
  %i.i = add nsw i32 %i.h, %3                     ; 2 uses
  %i.j = icmp eq i32 %i.h, 0                      ; 2 uses
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit108

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.k = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute18ResizableArrayData4InitERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %5, i32 noundef 15)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.l = load ptr, ptr %15, align 8, !tbaa !44, !noalias !263 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !44, !alias.scope !263
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit108, label %.critedge

_ZN5arrow6StatusD2Ev.exit108:                     ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN5arrow7compute18ResizableArrayData24ResizeFixedLengthBuffersEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.n = load ptr, ptr %16, align 8, !tbaa !44, !noalias !266 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !44, !alias.scope !266
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit110, label %.critedge

_ZN5arrow6StatusD2Ev.exit110:                     ; preds = %_ZN5arrow6StatusD2Ev.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.p = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.q = load ptr, ptr %17, align 8, !tbaa !44
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.b, !prof !47

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit110
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.0.0.copyload.i.i313 = load i64, ptr %i.s, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit110
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %17, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit, label %bb.d, !prof !252

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit: ; preds = %.thread, %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i315 = phi i64 [ %.sroa.0.0.copyload.i.i313, %.thread ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.u = trunc i64 %.sroa.0.0.copyload.i.i315 to i1
  br i1 %i.u, label %bb.e, label %bb.bg

bb.e:                                             ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %.sroa.527.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i315, 32
  %.sroa.527.0.extract.trunc = trunc nuw i64 %.sroa.527.0.extract.shift to i32
  switch i32 %.sroa.527.0.extract.trunc, label %bb.aw [
    i32 0, label %bb.h
    i32 1, label %bb.k
    i32 2, label %bb.s
    i32 4, label %bb.ac
    i32 8, label %bb.am
  ]

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %17, align 8, !tbaa !44
  %.not.i.i111 = icmp eq ptr %i.w, null
  br i1 %.not.i.i111, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit112, label %bb.g, !prof !47

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit112

common.resume:                                    ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i146, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i114, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit112
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit112 ], [ %i.cc, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i ], [ %i.fp, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i114 ], [ %i.it, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i146 ], [ %i.mg, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178 ], [ %i.pm, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i ], [ %i.ug, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229 ], [ %i.zm, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i ], [ %i.ady, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i273 ]
  resume { ptr, i32 } %common.resume.op

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit112: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !91, !range !98, !noundef !99
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %i.ae, ptr %i.ag, ptr null, !prof !47 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !68 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !163 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !91, !range !98, !noundef !99
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !range !98
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false, !prof !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.as, ptr %i.au, ptr null, !prof !47 ; 2 uses
  %i.aw = sext i32 %i.h to i64                    ; 3 uses
  %i.ax = and i64 %i.aw, -9223372036854775801
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb0EEEvPKhlPhliPKt(ptr noundef %i.ah, i64 noundef %i.aj, ptr noundef %i.av, i64 noundef %i.aw, i32 noundef %3, ptr noundef %4)
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb1EEEvPKhlPhliPKt(ptr noundef %i.ah, i64 noundef %i.aj, ptr noundef %i.av, i64 noundef %i.aw, i32 noundef %3, ptr noundef %4)
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.az = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
  %i.ba = load ptr, ptr %14, align 8, !tbaa !44
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.thread.i, label %bb.l, !prof !47

.thread.i:                                        ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.0.0.copyload.i.i40.i = load i64, ptr %i.bc, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bd, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i, label %bb.n, !prof !252

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i: ; preds = %bb.n, %bb.m, %.thread.i
  %.sroa.0.0.copyload.i.i43.i = phi i64 [ %.sroa.0.0.copyload.i.i40.i, %.thread.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.m ], [ %.sroa.0.0.copyload.i.i.i, %bb.n ] ; 2 uses
  %.sroa.520.0.extract.shift44.i = lshr i64 %.sroa.0.0.copyload.i.i43.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.be = trunc i64 %.sroa.0.0.copyload.i.i43.i to i1
  br i1 %i.be, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %.lr.ph48.preheader.i, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph48.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count54.i = zext nneg i32 %3 to i64
  %i.bg = getelementptr i8, ptr %2, i64 72
  br label %.lr.ph48.i

bb.o:                                             ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 3 uses
  %.not.i.i37.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i37.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !68
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !91, !range !98, !noundef !99
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %i.bu, ptr %i.bw, ptr null, !prof !47
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.br
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %bb.p, %bb.o
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.kw = trunc i64 %.sroa.0.0.copyload.i.i43.i183 to i1
  br i1 %i.kw, label %.preheader.i197, label %bb.aq

.preheader.i197:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i182
  %i.kx = icmp sgt i32 %3, 0
  br i1 %i.kx, label %.lr.ph48.i198, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph48.i198:                                    ; preds = %.preheader.i197
  %i.ky = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !87
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !88
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 32 ; 3 uses
  %i.lf = getelementptr i8, ptr %2, i64 72
  %.val.val.val.i201 = load ptr, ptr %i.lf, align 8, !tbaa !163
  %i.lg = getelementptr inbounds nuw i8, ptr %.val.val.val.i201, i64 16 ; 3 uses
  %i.lh = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count54.i202 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter487 = and i64 %wide.trip.count54.i202, 1
  %i.li = icmp eq i32 %3, 1
  br i1 %i.li, label %.epil.preheader486, label %.lr.ph48.i198.new

.lr.ph48.i198.new:                                ; preds = %.lr.ph48.i198
  %unroll_iter490 = and i64 %wide.trip.count54.i202, 2147483646
  br label %bb.av

bb.aq:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i182
  %i.lj = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !87 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !88
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8            ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !88 ; 3 uses
  %.not.i.i37.i185 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i37.i185, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !68
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !91, !range !98, !noundef !99
  %i.lw = trunc nuw i8 %i.lv to i1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = select i1 %i.lw, ptr %i.ly, ptr null, !prof !47
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.lt
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i187 = phi ptr [ %i.ma, %bb.ar ], [ null, %bb.aq ] ; 3 uses
  %i.mb = icmp sgt i32 %3, 0
  br i1 %i.mb, label %.lr.ph.i188, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph.i188:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186
  %i.mc = getelementptr i8, ptr %2, i64 72
  %.val34.val.val.i191 = load ptr, ptr %i.mc, align 8, !tbaa !163
  %i.md = getelementptr inbounds nuw i8, ptr %.val34.val.val.i191, i64 16 ; 3 uses
  %i.me = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count.i192 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter481 = and i64 %wide.trip.count.i192, 1
  %i.mf = icmp eq i32 %3, 1
  br i1 %i.mf, label %.epil.preheader480, label %.lr.ph.i188.new

.lr.ph.i188.new:                                  ; preds = %.lr.ph.i188
  %unroll_iter484 = and i64 %wide.trip.count.i192, 2147483646
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.mg = landingpad { ptr, i32 }
          cleanup
  %i.mh = load ptr, ptr %11, align 8, !tbaa !44
  %.not.i.i38.i177 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i38.i177, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178, label %bb.at, !prof !47

bb.at:                                            ; preds = %bb.as
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume

bb.au:                                            ; preds = %bb.au, %.lr.ph.i188.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i188.new ], [ %indvars.iv.next.i195.1, %bb.au ] ; 4 uses
  %niter485 = phi i64 [ 0, %.lr.ph.i188.new ], [ %niter485.next.1, %bb.au ]
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i193
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !253
  %i.mk = zext i16 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !16
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.lp, i64 %i.mn
  %.val36.i194 = load i64, ptr %i.mo, align 8, !tbaa !20
  %i.mp = load ptr, ptr %i.md, align 8
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %indvars.iv.i193
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.me
  store i64 %.val36.i194, ptr %i.mr, align 8, !tbaa !20
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i195
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !253
  %i.mu = zext i16 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !16
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.lp, i64 %i.mx
  %.val36.i194.1 = load i64, ptr %i.my, align 8, !tbaa !20
  %i.mz = load ptr, ptr %i.md, align 8
  %i.na = getelementptr [8 x i8], ptr %i.mz, i64 %indvars.iv.next.i195
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %i.me
  store i64 %.val36.i194.1, ptr %i.nb, align 8, !tbaa !20
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter485.next.1 = add i64 %niter485, 2         ; 2 uses
  %niter485.ncmp.1 = icmp eq i64 %niter485.next.1, %unroll_iter484
  br i1 %niter485.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit466.unr-lcssa, label %bb.au, !llvm.loop !275

bb.av:                                            ; preds = %bb.av, %.lr.ph48.i198.new
  %indvars.iv51.i203 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %indvars.iv.next52.i205.1, %bb.av ] ; 4 uses
  %niter491 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %niter491.next.1, %bb.av ]
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv51.i203
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !253
  %i.ne = load ptr, ptr %i.ld, align 8
  %i.nf = load i64, ptr %i.le, align 8, !tbaa !68
  %i.ng = zext i16 %i.nd to i64
  %i.nh = add nsw i64 %i.nf, %i.ng
  %i.ni = mul nsw i64 %i.nh, %.sroa.520.0.extract.shift44.i184
  %i.nj = getelementptr inbounds i8, ptr %i.ne, i64 %i.ni
  %.val33.i204 = load i64, ptr %i.nj, align 8, !tbaa !20
  %i.nk = load ptr, ptr %i.lg, align 8
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %indvars.iv51.i203
  %i.nm = getelementptr [8 x i8], ptr %i.nl, i64 %i.lh
  store i64 %.val33.i204, ptr %i.nm, align 8, !tbaa !20
  %indvars.iv.next52.i205 = or disjoint i64 %indvars.iv51.i203, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next52.i205
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !253
  %i.np = load ptr, ptr %i.ld, align 8
  %i.nq = load i64, ptr %i.le, align 8, !tbaa !68
  %i.nr = zext i16 %i.no to i64
  %i.ns = add nsw i64 %i.nq, %i.nr
  %i.nt = mul nsw i64 %i.ns, %.sroa.520.0.extract.shift44.i184
  %i.nu = getelementptr inbounds i8, ptr %i.np, i64 %i.nt
  %.val33.i204.1 = load i64, ptr %i.nu, align 8, !tbaa !20
  %i.nv = load ptr, ptr %i.lg, align 8
  %i.nw = getelementptr [8 x i8], ptr %i.nv, i64 %indvars.iv.next52.i205
  %i.nx = getelementptr [8 x i8], ptr %i.nw, i64 %i.lh
  store i64 %.val33.i204.1, ptr %i.nx, align 8, !tbaa !20
  %indvars.iv.next52.i205.1 = add nuw nsw i64 %indvars.iv51.i203, 2 ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit465.unr-lcssa, label %bb.av, !llvm.loop !276

bb.aw:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ny = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 3 uses
  %i.nz = sub nsw i32 %3, %i.ny                   ; 6 uses
  store i32 %i.nz, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.oa = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.oa)
  %i.ob = load ptr, ptr %10, align 8, !tbaa !44
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %.thread.i227, label %bb.ax, !prof !47

.thread.i227:                                     ; preds = %bb.aw
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i46.i = load i64, ptr %i.od, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %.pr.i209 = load ptr, ptr %10, align 8, !tbaa !44
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i.i210 = load i64, ptr %i.oe, align 8 ; 2 uses
  %.not.i.i.i211 = icmp eq ptr %.pr.i209, null
  br i1 %.not.i.i.i211, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212, label %bb.az, !prof !252

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212: ; preds = %bb.az, %bb.ay, %.thread.i227
  %.sroa.0.0.copyload.i.i50.i = phi i64 [ %.sroa.0.0.copyload.i.i46.i, %.thread.i227 ], [ %.sroa.0.0.copyload.i.i.i210, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i210, %bb.az ] ; 3 uses
  %.sroa.520.0.extract.shift51.i = lshr i64 %.sroa.0.0.copyload.i.i50.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc52.i = trunc nuw i64 %.sroa.520.0.extract.shift51.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.of = trunc i64 %.sroa.0.0.copyload.i.i50.i to i1
  br i1 %i.of, label %.preheader.i223, label %bb.ba

.preheader.i223:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.og = icmp sgt i32 %i.nz, 0
  br i1 %i.og, label %.lr.ph56.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph56.i:                                       ; preds = %.preheader.i223
  %i.oh = ashr i64 %.sroa.0.0.copyload.i.i50.i, 32 ; 3 uses
  %i.oi = add nsw i64 %i.oh, -1
  %i.oj = sdiv i64 %i.oi, 8                       ; 3 uses
  %i.ok = icmp eq i64 %.sroa.520.0.extract.shift51.i, 0
  %.not1.i38.i = icmp slt i32 %.sroa.520.0.extract.trunc52.i, -6
  %or.cond2.i39.i = or i1 %i.ok, %.not1.i38.i
  br i1 %or.cond2.i39.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.preheader.i

.lr.ph.split.i40.preheader.preheader.i:           ; preds = %.lr.ph56.i
  %wide.trip.count62.i = zext nneg i32 %i.nz to i64
  %i.ol = getelementptr i8, ptr %2, i64 72
  %i.om = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.on = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.oo = add nuw nsw i64 %i.on, 1                ; 2 uses
  %min.iters.check444 = icmp slt i64 %i.oh, 89
  %i.op = and i64 %i.om, 4294967295
  %i.oq = icmp eq i64 %i.op, 4294967295
  %or.cond = select i1 %min.iters.check444, i1 true, i1 %i.oq
  %n.vec446 = and i64 %i.oo, 9223372036854775804  ; 3 uses
  %cmp.n453 = icmp eq i64 %i.oo, %n.vec446
  br label %.lr.ph.split.i40.preheader.i

bb.ba:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.or = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !87 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !88
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %i.oy = ptrtoaddr ptr %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !88 ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i35.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !68
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 9
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !91, !range !98, !noundef !99
  %i.pf = trunc nuw i8 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = select i1 %i.pf, ptr %i.ph, ptr null, !prof !47
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pc
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i214 = phi ptr [ %i.pj, %bb.bb ], [ null, %bb.ba ]
  %i.pk = icmp sgt i32 %i.nz, 0
  br i1 %i.pk, label %.lr.ph.preheader.i215, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph.preheader.i215:                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %wide.trip.count.i216 = zext nneg i32 %i.nz to i64
  %i.pl = getelementptr i8, ptr %2, i64 72
  br label %.lr.ph.i217

bb.bc:                                            ; preds = %bb.ax
  %i.pm = landingpad { ptr, i32 }
          cleanup
  %i.pn = load ptr, ptr %10, align 8, !tbaa !44
  %.not.i.i36.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i36.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, label %bb.bd, !prof !47

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

.lr.ph.i217:                                      ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %.lr.ph.preheader.i215
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i221, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i" ] ; 3 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i218
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !253
  %i.pq = zext i16 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i214, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !16 ; 3 uses
  %i.pt = sext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ox, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !16 ; 2 uses
  %i.px = sub nsw i32 %i.pw, %i.ps                ; 3 uses
  %.val33.val.val.i = load ptr, ptr %i.pl, align 8, !tbaa !163
  %i.py = getelementptr inbounds nuw i8, ptr %.val33.val.val.i, i64 16
  %i.pz = load ptr, ptr %i.py, align 8            ; 2 uses
  %i.qa = ptrtoaddr ptr %i.pz to i64
  %i.qb = sext i32 %i.px to i64                   ; 2 uses
  %i.qc = trunc i64 %indvars.iv.i218 to i32
  %i.qd = add i32 %i.h, %i.qc
  %i.qe = sext i32 %i.qd to i64
  %i.qf = mul nsw i64 %i.qe, %i.qb                ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.pz, i64 %i.qf ; 2 uses
  %i.qh = add nsw i64 %i.qb, -1
  %i.qi = sdiv i64 %i.qh, 8                       ; 3 uses
  %i.qj = icmp eq i32 %i.pw, %i.ps
  %.not1.i.i = icmp slt i32 %i.px, -6
  %or.cond2.i.i = or i1 %i.qj, %.not1.i.i
  br i1 %or.cond2.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i217
  %i.qk = call i64 @llvm.smax.i64(i64 %i.qi, i64 0)
  %i.ql = add nuw nsw i64 %i.qk, 1                ; 2 uses
  %min.iters.check428 = icmp slt i32 %i.px, 137
  br i1 %min.iters.check428, label %.lr.ph.split.i.i.preheader458, label %vector.scevcheck423

vector.scevcheck423:                              ; preds = %.lr.ph.split.i.i.preheader
  %i.qm = call i64 @llvm.smax.i64(i64 %i.qi, i64 0)
  %i.qn = and i64 %i.qm, 4294967295
  %i.qo = icmp eq i64 %i.qn, 4294967295
  br i1 %i.qo, label %.lr.ph.split.i.i.preheader458, label %vector.memcheck425

vector.memcheck425:                               ; preds = %vector.scevcheck423
  %i.qp = add i64 %i.qf, %i.qa
  %i.qq = add i64 %i.oy, %i.pt
  %i.qr = sub i64 %i.qq, %i.qp
  %diff.check426 = icmp ugt i64 %i.qr, -32
  br i1 %diff.check426, label %.lr.ph.split.i.i.preheader458, label %vector.ph429

vector.ph429:                                     ; preds = %vector.memcheck425
  %n.vec430 = and i64 %i.ql, 9223372036854775804  ; 3 uses
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next435, %vector.body431 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index432 ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %index432 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load433 = load <2 x i64>, ptr %i.qt, align 8
  %wide.load434 = load <2 x i64>, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <2 x i64> %wide.load433, ptr %i.qs, align 1
  store <2 x i64> %wide.load434, ptr %i.qv, align 1
  %index.next435 = add nuw i64 %index432, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next435, %n.vec430
  br i1 %i.qw, label %middle.block436, label %vector.body431, !llvm.loop !277

middle.block436:                                  ; preds = %vector.body431
  %cmp.n437 = icmp eq i64 %i.ql, %n.vec430
  br i1 %cmp.n437, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader458

.lr.ph.split.i.i.preheader458:                    ; preds = %vector.memcheck425, %vector.scevcheck423, %.lr.ph.split.i.i.preheader, %middle.block436
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck425 ], [ 0, %vector.scevcheck423 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec430, %middle.block436 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader458, %.lr.ph.split.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.split.i.i.preheader458 ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv.i.i
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.qy, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.qx, align 1
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.qz = and i64 %indvars.iv.next.i.i, 4294967295
  %.not.i.i220 = icmp slt i64 %i.qi, %i.qz
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !280

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block436, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !281

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next60.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i" ] ; 3 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv59.i
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !253
  %i.rc = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !87
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !88
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8            ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !68
  %i.rl = zext i16 %i.rb to i64
  %i.rm = add nsw i64 %i.rk, %i.rl
  %i.rn = mul nsw i64 %i.rm, %.sroa.520.0.extract.shift51.i ; 2 uses
  %i.ro = getelementptr inbounds i8, ptr %i.ri, i64 %i.rn ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !163
  %i.rp = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %i.rr = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.rs = add nsw i32 %i.h, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = mul nsw i64 %i.oh, %i.rt                ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %i.rq, i64 %i.ru ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.rw = ptrtoaddr ptr %i.rq to i64
  %i.rx = ptrtoaddr ptr %i.ri to i64
  %i.ry = add i64 %i.ru, %i.rw
  %i.rz = add i64 %i.rn, %i.rx
  %i.sa = sub i64 %i.rz, %i.ry
  %diff.check442 = icmp ugt i64 %i.sa, -32
  br i1 %diff.check442, label %.lr.ph.split.i40.i.preheader, label %vector.body447

vector.body447:                                   ; preds = %vector.memcheck441, %vector.body447
  %index448 = phi i64 [ %index.next451, %vector.body447 ], [ 0, %vector.memcheck441 ] ; 3 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %index448 ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %index448 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %wide.load449 = load <2 x i64>, ptr %i.sc, align 8
  %wide.load450 = load <2 x i64>, ptr %i.sd, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store <2 x i64> %wide.load449, ptr %i.sb, align 1
  store <2 x i64> %wide.load450, ptr %i.se, align 1
  %index.next451 = add nuw i64 %index448, 4       ; 2 uses
  %i.sf = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.sf, label %middle.block452, label %vector.body447, !llvm.loop !282

middle.block452:                                  ; preds = %vector.body447
  br i1 %cmp.n453, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck441, %.lr.ph.split.i40.preheader.i, %middle.block452
  %indvars.iv.i41.i.ph = phi i64 [ 0, %vector.memcheck441 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec446, %middle.block452 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i, %.lr.ph.split.i40.i ], [ %indvars.iv.i41.i.ph, %.lr.ph.split.i40.i.preheader ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.i41.i
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv.i41.i
  %.0.copyload.i.i42.i = load i64, ptr %i.sh, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sg, align 1
  %indvars.iv.next.i43.i = add i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.si = and i64 %indvars.iv.next.i43.i, 4294967295
  %.not.i44.i = icmp slt i64 %i.oj, %i.si
  br i1 %.not.i44.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !283

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block452
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !284

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit45.loopexit.i", %.preheader.i223, %.lr.ph56.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sj = icmp sgt i32 %i.ny, 0
  br i1 %i.sj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.sk = sext i32 %i.nz to i64
  %i.sl = getelementptr inbounds [2 x i8], ptr %4, i64 %i.sk
  store ptr %i.a, ptr %18, align 8, !tbaa !285
  %i.sm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.sm, align 8, !tbaa !288
  %i.sn = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sn, align 8, !tbaa !288
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sl, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !163 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 9
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !91, !range !98, !noundef !99
  %i.ss = trunc nuw i8 %i.sr to i1
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.su = load i8, ptr %i.st, align 8, !range !98
  %i.sv = trunc nuw i8 %i.su to i1
  %i.sw = select i1 %i.ss, i1 %i.sv, i1 false, !prof !47
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8            ; 12 uses
  %i.sz = select i1 %i.sw, ptr %i.sy, ptr null, !prof !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ta = sext i32 %i.h to i64
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.td = phi i32 [ %i.tc, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.td, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.te = load ptr, ptr %1, align 8, !tbaa !65
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.te)
  %i.tf = load ptr, ptr %9, align 8, !tbaa !44
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %.thread.i247, label %bb.bj, !prof !47

.thread.i247:                                     ; preds = %bb.bi
  %i.th = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.th, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !44
  %i.ti = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.ti, align 8 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %.pr.i230, null
  br i1 %.not.i.i.i232, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233, label %bb.bl, !prof !252

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233: ; preds = %bb.bl, %bb.bk, %.thread.i247
  %.sroa.0.0.copyload.i.i42.i = phi i64 [ %.sroa.0.0.copyload.i.i38.i, %.thread.i247 ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bk ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bl ] ; 2 uses
  %.sroa.520.0.extract.trunc43.in.i = lshr i64 %.sroa.0.0.copyload.i.i42.i, 32
  %.sroa.520.0.extract.trunc43.i = trunc nuw i64 %.sroa.520.0.extract.trunc43.in.i to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.tj = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.tj, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tk = icmp sgt i32 %3, 0
  br i1 %i.tk, label %.lr.ph47.i.preheader, label %.critedge101

.lr.ph47.i.preheader:                             ; preds = %.preheader.i244
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph47.i.preheader471, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.i.preheader
  %n.vec = and i32 %3, 2147483640                 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.520.0.extract.trunc43.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tl = add nsw i32 %i.h, %index
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.tn, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat, ptr %i.to, align 4, !tbaa !16
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tp = icmp eq i32 %index.next, %n.vec
  br i1 %i.tp, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader471

.lr.ph47.i.preheader471:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.046.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tq = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !87
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !88 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !68
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 9
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !91, !range !98, !noundef !99
  %i.tz = trunc nuw i8 %i.ty to i1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = select i1 %i.tz, ptr %i.ub, ptr null, !prof !47
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.tw
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i236 = phi ptr [ %i.ud, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.ue = icmp sgt i32 %3, 0
  br i1 %i.ue, label %.lr.ph.i237, label %.critedge101

.lr.ph.i237:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235
  %wide.trip.count.i239 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i239, 1
  %i.uf = icmp eq i32 %3, 1
  br i1 %i.uf, label %.epil.preheader, label %.lr.ph.i237.new

.lr.ph.i237.new:                                  ; preds = %.lr.ph.i237
  %unroll_iter = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %9, align 8, !tbaa !44
  %.not.i.i36.i228 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i36.i228, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229, label %bb.bp, !prof !47

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
end_hunk_1
