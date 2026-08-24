Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_energy?download=true
inline.NumInlined: 676
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3gmx20ExceptionInitializerD2Ev:bb.a
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !331
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #28
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !30
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef ptr @_ZL14select_by_nameiP11gmx_enxnm_tPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.174) #27
  %.not97 = icmp eq ptr %i.c, null                ; 2 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !233
  %fputc = tail call i32 @fputc(i32 10, ptr %i.d) ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.175, i64 53, i64 1, ptr %i.e) #33 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.176, i64 68, i64 1, ptr %i.g) #33 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.177, i64 49, i64 1, ptr %i.i) #33 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.178, i64 68, i64 1, ptr %i.k) #33 ; 0 uses
  %i.m = sext i32 %0 to i64                       ; 6 uses
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.140, i32 noundef 166, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 8) ; 5 uses
  %i.o = icmp sgt i32 %0, 0                       ; 4 uses
  br i1 %i.o, label %.lr.ph130.preheader, label %._crit_edge131

.lr.ph130.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph130.preheader ], [ %indvars.iv.next.pre-phi, %bb.l ] ; 9 uses
  %.075127 = phi i1 [ false, %.lr.ph130.preheader ], [ %.4, %bb.l ] ; 2 uses
  %.087126 = phi i32 [ 0, %.lr.ph130.preheader ], [ %.188, %bb.l ] ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = tail call noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !24
  %i.t = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 32) #29 ; 2 uses
  %.not103123 = icmp eq ptr %i.t, null
  br i1 %.not103123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph130, %.lr.ph
  %i.u = phi ptr [ %i.w, %.lr.ph ], [ %i.t, %.lr.ph130 ]
  store i8 45, ptr %i.u, align 1, !tbaa !30
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.w = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.v, i32 noundef 32) #29 ; 2 uses
  %.not103 = icmp eq ptr %i.w, null
  br i1 %.not103, label %._crit_edge, label %.lr.ph, !llvm.loop !332

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph130
  br i1 %.not97, label %bb.b, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre165 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.l

bb.b:                                             ; preds = %._crit_edge
  %i.x = icmp eq i32 %.087126, 0
  br i1 %i.x, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %.not105 = icmp eq i64 %indvars.iv, 0
  br i1 %.not105, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !233
  %fputc106 = tail call i32 @fputc(i32 10, ptr %i.y) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #29
  %i.ab = icmp ugt i64 %i.aa, 14                  ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = icmp slt i64 %indvars.iv.next150, %i.m
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next150
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #29
  %i.ag = icmp ugt i64 %i.af, 14
  %spec.select.1 = select i1 %i.ag, i1 true, i1 %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.1 = phi i1 [ %i.ab, %bb.e ], [ %spec.select.1, %bb.f ] ; 2 uses
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ah = icmp slt i64 %indvars.iv.next150.1, %i.m
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next150.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #29
  %i.al = icmp ugt i64 %i.ak, 14
  %spec.select.2 = select i1 %i.al, i1 true, i1 %.2.1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.2 = phi i1 [ %.2.1, %bb.g ], [ %spec.select.2, %bb.h ] ; 2 uses
  %indvars.iv.next150.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.am = icmp slt i64 %indvars.iv.next150.2, %i.m
  br i1 %i.am, label %.split175, label %.loopexit

.split175:                                        ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next150.2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #29
  %i.aq = icmp ugt i64 %i.ap, 14
  %spec.select.3 = select i1 %i.aq, i1 true, i1 %.2.2
  br i1 %spec.select.3, label %bb.k, label %bb.j

.split:                                           ; preds = %bb.b
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !233
  %fputc104 = tail call i32 @fputc(i32 32, ptr %i.ar) ; 0 uses
  br i1 %.075127, label %bb.k, label %bb.j

.loopexit:                                        ; preds = %bb.i
  br i1 %.2.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split175, %.split, %.loopexit
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.at = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.av = trunc nuw nsw i64 %i.at to i32
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.172, i32 noundef %i.av, ptr noundef %i.au) #31 ; 0 uses
  %i.ax = add nsw i32 %.087126, 1                 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 4
  %spec.store.select = select i1 %i.ay, i32 0, i32 %i.ax
  br label %bb.l

bb.k:                                             ; preds = %.split175, %.split, %.loopexit
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.ba = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.bc = trunc nuw nsw i64 %i.ba to i32
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.173, i32 noundef %i.bc, ptr noundef %i.bb) #31 ; 0 uses
  %i.be = add nsw i32 %.087126, 1                 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 2
  %spec.store.select1 = select i1 %i.bf, i32 0, i32 %i.be
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge, %bb.k, %bb.j
  %indvars.iv.next.pre-phi = phi i64 [ %.pre165, %._crit_edge._crit_edge ], [ %i.ba, %bb.k ], [ %i.at, %bb.j ] ; 2 uses
  %.188 = phi i32 [ %.087126, %._crit_edge._crit_edge ], [ %spec.store.select1, %bb.k ], [ %spec.store.select, %bb.j ]
  %.4 = phi i1 [ %.075127, %._crit_edge._crit_edge ], [ true, %bb.k ], [ false, %bb.j ]
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge131, label %.lr.ph130, !llvm.loop !333

._crit_edge131:                                   ; preds = %bb.l, %bb.a
  br i1 %.not97, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge131
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.bh = tail call i64 @fwrite(ptr nonnull @.str.181, i64 2, i64 1, ptr %i.bg) #33 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge131
  %i.bi = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.140, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 1) ; 10 uses
  br label %.critedge185

.critedge185:                                     ; preds = %.critedge185.backedge, %bb.n
  %i.bj = load ptr, ptr @stdin, align 8, !tbaa !233
  %i.bk = call noundef ptr @_Z6fgets2PciP8_IO_FILE(ptr noundef nonnull %i.b, i32 noundef 4095, ptr noundef %i.bj)
  %.not98 = icmp eq ptr %i.bk, null
  br i1 %.not98, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.critedge185
  %i.bl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i, label %_ZL5chompPc.exit

.lr.ph.i:                                         ; preds = %bb.o, %bb.p
  %.06.i = phi i32 [ %5, %bb.p ], [ %i.bm, %bb.o ] ; 3 uses
  %4 = zext nneg i32 %.06.i to i64
  %i.bo = getelementptr i8, ptr %i.b, i64 %4
  %i.bp = getelementptr i8, ptr %i.bo, i64 -1     ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.br = icmp eq i8 %i.bq, 10
  br i1 %i.br, label %bb.p, label %_ZL5chompPc.exit

bb.p:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.bp, align 1, !tbaa !30
  %5 = add nsw i32 %.06.i, -1
  %i.bs = icmp sgt i32 %.06.i, 1
  br i1 %i.bs, label %.lr.ph.i, label %_ZL5chompPc.exit, !llvm.loop !334

_ZL5chompPc.exit:                                 ; preds = %.lr.ph.i, %bb.p, %bb.o
  call void @_Z4trimPc(ptr noundef nonnull %i.b)
  %char0 = load i8, ptr %i.b, align 16
  %i.bt = icmp eq i8 %char0, 0
  br i1 %i.bt, label %.critedge, label %.preheader122

.preheader122:                                    ; preds = %_ZL5chompPc.exit, %bb.ab
  %.074 = phi ptr [ %i.de, %bb.ab ], [ %i.b, %_ZL5chompPc.exit ] ; 6 uses
  store i32 0, ptr %i.a, align 4, !tbaa !9
  br i1 %i.o, label %.lr.ph135, label %._crit_edge136.thread

.lr.ph135:                                        ; preds = %.preheader122, %bb.r
  %.081133 = phi i32 [ %.182, %bb.r ], [ 0, %.preheader122 ] ; 2 uses
  %storemerge132 = phi i32 [ %i.cc, %bb.r ], [ 0, %.preheader122 ]
  %i.bu = sext i32 %storemerge132 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.bw, ptr noundef nonnull %.074)
  %i.by = icmp eq i32 %i.bx, 0
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph135
  %i.bz = sext i32 %.pre to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bi, i64 %i.bz
  store i8 1, ptr %i.ca, align 1, !tbaa !49
  %i.cb = add nsw i32 %.081133, 1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph135, %bb.q
  %.182 = phi i32 [ %i.cb, %bb.q ], [ %.081133, %.lr.ph135 ] ; 2 uses
  %i.cc = add nsw i32 %.pre, 1                    ; 3 uses
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !9
  %i.cd = icmp slt i32 %i.cc, %0
  br i1 %i.cd, label %.lr.ph135, label %._crit_edge136, !llvm.loop !335

._crit_edge136:                                   ; preds = %bb.r
  %i.ce = icmp eq i32 %.182, 0
  br i1 %i.ce, label %._crit_edge136.thread, label %bb.z

._crit_edge136.thread:                            ; preds = %.preheader122, %._crit_edge136
  %i.cf = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.074, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.a) #27
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.s, label %bb.w

bb.s:                                             ; preds = %._crit_edge136.thread
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !9   ; 5 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = icmp slt i32 %i.ch, 1
  %.not100 = icmp sgt i32 %i.ch, %0
  %or.cond = or i1 %i.cj, %.not100
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = zext nneg i32 %i.ch to i64
  %i.cl = getelementptr i8, ptr %i.bi, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  store i8 1, ptr %i.cm, align 1, !tbaa !49
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.184, i32 noundef %i.ch) #31 ; 0 uses
  br label %bb.z

bb.w:                                             ; preds = %._crit_edge136.thread
  %i.cp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.074) #29
  %i.cq = trunc i64 %i.cp to i32
  store i32 0, ptr %i.a, align 4, !tbaa !9
  br i1 %i.o, label %.lr.ph140, label %._crit_edge141.thread

.lr.ph140:                                        ; preds = %bb.w, %bb.y
  %.283138 = phi i32 [ %.384, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %storemerge99137 = phi i32 [ %i.cz, %bb.y ], [ 0, %bb.w ]
  %i.cr = sext i32 %storemerge99137 to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !24
  %i.cu = call noundef i32 @_Z15gmx_strncasecmpPKcS0_i(ptr noundef %i.ct, ptr noundef nonnull %.074, i32 noundef %i.cq)
  %i.cv = icmp eq i32 %i.cu, 0
  %.pre164 = load i32, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph140
  %i.cw = sext i32 %.pre164 to i64
  %i.cx = getelementptr inbounds i8, ptr %i.bi, i64 %i.cw
  store i8 1, ptr %i.cx, align 1, !tbaa !49
  %i.cy = add nsw i32 %.283138, 1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph140, %bb.x
  %.384 = phi i32 [ %i.cy, %bb.x ], [ %.283138, %.lr.ph140 ] ; 2 uses
  %i.cz = add nsw i32 %.pre164, 1                 ; 3 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !9
  %i.da = icmp slt i32 %i.cz, %0
  br i1 %i.da, label %.lr.ph140, label %._crit_edge141, !llvm.loop !336

._crit_edge141:                                   ; preds = %bb.y
  %i.db = icmp eq i32 %.384, 0
  br i1 %i.db, label %._crit_edge141.thread, label %bb.z

._crit_edge141.thread:                            ; preds = %bb.w, %._crit_edge141
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.dd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.185, ptr noundef nonnull %.074) #31 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %._crit_edge136, %._crit_edge141, %._crit_edge141.thread, %bb.v, %bb.u
  %.279 = phi i1 [ true, %bb.s ], [ false, %._crit_edge136 ], [ false, %bb.u ], [ false, %bb.v ], [ false, %._crit_edge141.thread ], [ false, %._crit_edge141 ] ; 2 uses
  %i.de = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.074, i32 noundef 32) #29 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.critedge3, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_Z4trimPc(ptr noundef nonnull %i.de)
  br i1 %.279, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %char0102 = load i8, ptr %i.de, align 1
  %.not = icmp eq i8 %char0102, 0
  br i1 %.not, label %.critedge185.backedge, label %.preheader122, !llvm.loop !337

.critedge3:                                       ; preds = %bb.z
  br i1 %.279, label %.critedge, label %.critedge185.backedge

.critedge185.backedge:                            ; preds = %bb.ab, %.critedge3
  br label %.critedge185, !llvm.loop !338

.critedge:                                        ; preds = %_ZL5chompPc.exit, %.critedge3, %.critedge185, %bb.aa
  %i.dg = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.140, i32 noundef 301, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 4) ; 6 uses
  store i32 0, ptr %2, align 4, !tbaa !9
  br i1 %i.o, label %.lr.ph144.preheader, label %._crit_edge145.thread

.lr.ph144.preheader:                              ; preds = %.critedge
  %wide.trip.count156 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count156, 3      ; 3 uses
  %i.dh = icmp ult i32 %0, 4
  br i1 %i.dh, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter = and i64 %wide.trip.count156, 2147483644
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.ag, %.lr.ph144.preheader.new
  %indvars.iv153 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %indvars.iv.next154.3, %bb.ag ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %niter.next.3, %bb.ag ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv153
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !49, !range !51, !noundef !52
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ac, label %.lr.ph144.1

bb.ac:                                            ; preds = %.lr.ph144
  %i.dl = load i32, ptr %2, align 4, !tbaa !9     ; 2 uses
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %2, align 4, !tbaa !9
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dn
  %i.dp = trunc nuw nsw i64 %indvars.iv153 to i32
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !9
  br label %.lr.ph144.1

.lr.ph144.1:                                      ; preds = %.lr.ph144, %bb.ac
  %indvars.iv.next154 = or disjoint i64 %indvars.iv153, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next154
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !49, !range !51, !noundef !52
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ad, label %.lr.ph144.2

bb.ad:                                            ; preds = %.lr.ph144.1
  %i.dt = load i32, ptr %2, align 4, !tbaa !9     ; 2 uses
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %2, align 4, !tbaa !9
  %i.dv = sext i32 %i.dt to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dv
  %i.dx = trunc nuw nsw i64 %indvars.iv.next154 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !9
  br label %.lr.ph144.2

.lr.ph144.2:                                      ; preds = %bb.ad, %.lr.ph144.1
  %indvars.iv.next154.1 = or disjoint i64 %indvars.iv153, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next154.1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !49, !range !51, !noundef !52
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ae, label %.lr.ph144.3

bb.ae:                                            ; preds = %.lr.ph144.2
  %i.eb = load i32, ptr %2, align 4, !tbaa !9     ; 2 uses
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %2, align 4, !tbaa !9
  %i.ed = sext i32 %i.eb to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.ed
  %i.ef = trunc nuw nsw i64 %indvars.iv.next154.1 to i32
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !9
  br label %.lr.ph144.3

.lr.ph144.3:                                      ; preds = %bb.ae, %.lr.ph144.2
  %indvars.iv.next154.2 = or disjoint i64 %indvars.iv153, 3 ; 2 uses
end_hunk_0
