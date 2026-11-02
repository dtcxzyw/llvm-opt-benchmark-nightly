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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !332
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #28
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !24
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
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !61
  %fputc = tail call i32 @fputc(i32 10, ptr %i.d) ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.175, i64 53, i64 1, ptr %i.e) #33 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite98 = tail call i64 @fwrite(ptr nonnull @.str.176, i64 68, i64 1, ptr %i.f) #33 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite99 = tail call i64 @fwrite(ptr nonnull @.str.177, i64 49, i64 1, ptr %i.g) #33 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite100 = tail call i64 @fwrite(ptr nonnull @.str.178, i64 68, i64 1, ptr %i.h) #33 ; 0 uses
  %i.i = sext i32 %0 to i64                       ; 6 uses
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.140, i32 noundef 166, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 5 uses
  %i.k = icmp sgt i32 %0, 0                       ; 4 uses
  br i1 %i.k, label %.lr.ph136.preheader, label %._crit_edge137

.lr.ph136.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next.pre-phi, %bb.l ] ; 9 uses
  %.075133 = phi i1 [ false, %.lr.ph136.preheader ], [ %.4, %bb.l ] ; 2 uses
  %.087132 = phi i32 [ 0, %.lr.ph136.preheader ], [ %.188, %bb.l ] ; 4 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !18
  %i.p = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 32) #29 ; 2 uses
  %.not107129 = icmp eq ptr %i.p, null
  br i1 %.not107129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph136, %.lr.ph
  %i.q = phi ptr [ %i.s, %.lr.ph ], [ %i.p, %.lr.ph136 ]
  store i8 45, ptr %i.q, align 1, !tbaa !24
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.s = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 32) #29 ; 2 uses
  %.not107 = icmp eq ptr %i.s, null
  br i1 %.not107, label %._crit_edge, label %.lr.ph, !llvm.loop !333

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph136
  br i1 %.not97, label %bb.b, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre171 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.l

bb.b:                                             ; preds = %._crit_edge
  %i.t = icmp eq i32 %.087132, 0
  br i1 %i.t, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %.not110 = icmp eq i64 %indvars.iv, 0
  br i1 %.not110, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !61
  %fputc112 = tail call i32 @fputc(i32 10, ptr %i.u) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #29
  %i.x = icmp ugt i64 %i.w, 14                    ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next156, %i.i
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next156
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #29
  %i.ac = icmp ugt i64 %i.ab, 14
  %spec.select.1 = select i1 %i.ac, i1 true, i1 %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.1 = phi i1 [ %i.x, %bb.e ], [ %spec.select.1, %bb.f ] ; 2 uses
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv.next156.1, %i.i
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next156.1
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #29
  %i.ah = icmp ugt i64 %i.ag, 14
  %spec.select.2 = select i1 %i.ah, i1 true, i1 %.2.1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.2 = phi i1 [ %.2.1, %bb.g ], [ %spec.select.2, %bb.h ] ; 2 uses
  %indvars.iv.next156.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ai = icmp slt i64 %indvars.iv.next156.2, %i.i
  br i1 %i.ai, label %.split181, label %.loopexit

.split181:                                        ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next156.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #29
  %i.am = icmp ugt i64 %i.al, 14
  %spec.select.3 = select i1 %i.am, i1 true, i1 %.2.2
  br i1 %spec.select.3, label %bb.k, label %bb.j

.split:                                           ; preds = %bb.b
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !61
  %fputc109 = tail call i32 @fputc(i32 32, ptr %i.an) ; 0 uses
  br i1 %.075133, label %bb.k, label %bb.j

.loopexit:                                        ; preds = %bb.i
  br i1 %.2.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split181, %.split, %.loopexit
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.ap = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ar = trunc nuw nsw i64 %i.ap to i32
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.172, i32 noundef %i.ar, ptr noundef %i.aq) #31 ; 0 uses
  %i.at = add nsw i32 %.087132, 1                 ; 2 uses
  %i.au = icmp eq i32 %i.at, 4
  %spec.store.select = select i1 %i.au, i32 0, i32 %i.at
  br label %bb.l

bb.k:                                             ; preds = %.split181, %.split, %.loopexit
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.aw = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ay = trunc nuw nsw i64 %i.aw to i32
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.173, i32 noundef %i.ay, ptr noundef %i.ax) #31 ; 0 uses
  %i.ba = add nsw i32 %.087132, 1                 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 2
  %spec.store.select1 = select i1 %i.bb, i32 0, i32 %i.ba
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge, %bb.k, %bb.j
  %indvars.iv.next.pre-phi = phi i64 [ %.pre171, %._crit_edge._crit_edge ], [ %i.aw, %bb.k ], [ %i.ap, %bb.j ] ; 2 uses
  %.188 = phi i32 [ %.087132, %._crit_edge._crit_edge ], [ %spec.store.select1, %bb.k ], [ %spec.store.select, %bb.j ]
  %.4 = phi i1 [ %.075133, %._crit_edge._crit_edge ], [ true, %bb.k ], [ false, %bb.j ]
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge137, label %.lr.ph136, !llvm.loop !334

._crit_edge137:                                   ; preds = %bb.l, %bb.a
  br i1 %.not97, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge137
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite101 = tail call i64 @fwrite(ptr nonnull @.str.181, i64 2, i64 1, ptr %i.bc) #33 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge137
  %i.bd = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.140, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 1) ; 10 uses
  br label %.critedge191

.critedge191:                                     ; preds = %.critedge191.backedge, %bb.n
  %i.be = load ptr, ptr @stdin, align 8, !tbaa !61
  %i.bf = call noundef ptr @_Z6fgets2PciP8_IO_FILE(ptr noundef nonnull %i.b, i32 noundef 4095, ptr noundef %i.be)
  %.not102 = icmp eq ptr %i.bf, null
  br i1 %.not102, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.critedge191
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29 ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader.i, label %_ZL5chompPc.exit

.lr.ph.preheader.i:                               ; preds = %bb.o
  %4 = and i64 %i.bg, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %4, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %i.bj = getelementptr i8, ptr %i.b, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1     ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bm = icmp eq i8 %i.bl, 10
  br i1 %i.bm, label %bb.p, label %_ZL5chompPc.exit

bb.p:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.bk, align 1, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bn = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.bn, label %.lr.ph.i, label %_ZL5chompPc.exit, !llvm.loop !335

_ZL5chompPc.exit:                                 ; preds = %.lr.ph.i, %bb.p, %bb.o
  call void @_Z4trimPc(ptr noundef nonnull %i.b)
  %char0 = load i8, ptr %i.b, align 16
  %i.bo = icmp eq i8 %char0, 0
  br i1 %i.bo, label %.critedge, label %.preheader128

.preheader128:                                    ; preds = %_ZL5chompPc.exit, %bb.ab
  %.074 = phi ptr [ %i.cz, %bb.ab ], [ %i.b, %_ZL5chompPc.exit ] ; 6 uses
  store i32 0, ptr %i.a, align 4, !tbaa !11
  br i1 %i.k, label %.lr.ph141, label %._crit_edge142.thread

.lr.ph141:                                        ; preds = %.preheader128, %bb.r
  %.081139 = phi i32 [ %.182, %bb.r ], [ 0, %.preheader128 ] ; 2 uses
  %storemerge138 = phi i32 [ %i.bx, %bb.r ], [ 0, %.preheader128 ]
  %i.bp = sext i32 %storemerge138 to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18
  %i.bs = call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.br, ptr noundef nonnull %.074)
  %i.bt = icmp eq i32 %i.bs, 0
  %.pre = load i32, ptr %i.a, align 4, !tbaa !11  ; 2 uses
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph141
  %i.bu = sext i32 %.pre to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bd, i64 %i.bu
  store i8 1, ptr %i.bv, align 1, !tbaa !36
  %i.bw = add nsw i32 %.081139, 1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph141, %bb.q
  %.182 = phi i32 [ %i.bw, %bb.q ], [ %.081139, %.lr.ph141 ] ; 2 uses
  %i.bx = add nsw i32 %.pre, 1                    ; 3 uses
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !11
  %i.by = icmp slt i32 %i.bx, %0
  br i1 %i.by, label %.lr.ph141, label %._crit_edge142, !llvm.loop !336

._crit_edge142:                                   ; preds = %bb.r
  %i.bz = icmp eq i32 %.182, 0
  br i1 %i.bz, label %._crit_edge142.thread, label %bb.z

._crit_edge142.thread:                            ; preds = %.preheader128, %._crit_edge142
  %i.ca = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.074, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.a) #27
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %bb.w

bb.s:                                             ; preds = %._crit_edge142.thread
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !11  ; 5 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = icmp slt i32 %i.cc, 1
  %.not104 = icmp sgt i32 %i.cc, %0
  %or.cond = or i1 %i.ce, %.not104
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = zext nneg i32 %i.cc to i64
  %i.cg = getelementptr i8, ptr %i.bd, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  store i8 1, ptr %i.ch, align 1, !tbaa !36
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.cj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.184, i32 noundef %i.cc) #31 ; 0 uses
  br label %bb.z

bb.w:                                             ; preds = %._crit_edge142.thread
  %i.ck = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.074) #29
  %i.cl = trunc i64 %i.ck to i32
  store i32 0, ptr %i.a, align 4, !tbaa !11
  br i1 %i.k, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %bb.w, %bb.y
  %.283144 = phi i32 [ %.384, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %storemerge103143 = phi i32 [ %i.cu, %bb.y ], [ 0, %bb.w ]
  %i.cm = sext i32 %storemerge103143 to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !18
  %i.cp = call noundef i32 @_Z15gmx_strncasecmpPKcS0_i(ptr noundef %i.co, ptr noundef nonnull %.074, i32 noundef %i.cl)
  %i.cq = icmp eq i32 %i.cp, 0
  %.pre170 = load i32, ptr %i.a, align 4, !tbaa !11 ; 2 uses
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph146
  %i.cr = sext i32 %.pre170 to i64
  %i.cs = getelementptr inbounds i8, ptr %i.bd, i64 %i.cr
  store i8 1, ptr %i.cs, align 1, !tbaa !36
  %i.ct = add nsw i32 %.283144, 1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph146, %bb.x
  %.384 = phi i32 [ %i.ct, %bb.x ], [ %.283144, %.lr.ph146 ] ; 2 uses
  %i.cu = add nsw i32 %.pre170, 1                 ; 3 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !11
  %i.cv = icmp slt i32 %i.cu, %0
  br i1 %i.cv, label %.lr.ph146, label %._crit_edge147, !llvm.loop !337

._crit_edge147:                                   ; preds = %bb.y
  %i.cw = icmp eq i32 %.384, 0
  br i1 %i.cw, label %._crit_edge147.thread, label %bb.z

._crit_edge147.thread:                            ; preds = %bb.w, %._crit_edge147
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.cy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.185, ptr noundef nonnull %.074) #31 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %._crit_edge142, %._crit_edge147, %._crit_edge147.thread, %bb.v, %bb.u
  %.279 = phi i1 [ true, %bb.s ], [ false, %._crit_edge142 ], [ false, %bb.u ], [ false, %bb.v ], [ false, %._crit_edge147.thread ], [ false, %._crit_edge147 ] ; 2 uses
  %i.cz = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.074, i32 noundef 32) #29 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.critedge3, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_Z4trimPc(ptr noundef nonnull %i.cz)
  br i1 %.279, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %char0106 = load i8, ptr %i.cz, align 1
  %.not = icmp eq i8 %char0106, 0
  br i1 %.not, label %.critedge191.backedge, label %.preheader128, !llvm.loop !338

.critedge3:                                       ; preds = %bb.z
  br i1 %.279, label %.critedge, label %.critedge191.backedge

.critedge191.backedge:                            ; preds = %bb.ab, %.critedge3
  br label %.critedge191, !llvm.loop !339

.critedge:                                        ; preds = %_ZL5chompPc.exit, %.critedge3, %.critedge191, %bb.aa
  %i.db = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.140, i32 noundef 301, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 4) ; 6 uses
  store i32 0, ptr %2, align 4, !tbaa !11
  br i1 %i.k, label %.lr.ph150.preheader, label %._crit_edge151.thread

.lr.ph150.preheader:                              ; preds = %.critedge
  %wide.trip.count162 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count162, 3      ; 3 uses
  %i.dc = icmp ult i32 %0, 4
  br i1 %i.dc, label %.lr.ph150.epil.preheader, label %.lr.ph150.preheader.new

.lr.ph150.preheader.new:                          ; preds = %.lr.ph150.preheader
  %unroll_iter = and i64 %wide.trip.count162, 2147483644
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.ag, %.lr.ph150.preheader.new
  %indvars.iv159 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %indvars.iv.next160.3, %bb.ag ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %niter.next.3, %bb.ag ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv159
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !36, !range !37, !noundef !38
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ac, label %.lr.ph150.1

bb.ac:                                            ; preds = %.lr.ph150
  %i.dg = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %2, align 4, !tbaa !11
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.di
  %i.dk = trunc nuw nsw i64 %indvars.iv159 to i32
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !11
  br label %.lr.ph150.1

.lr.ph150.1:                                      ; preds = %.lr.ph150, %bb.ac
  %indvars.iv.next160 = or disjoint i64 %indvars.iv159, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next160
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !36, !range !37, !noundef !38
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ad, label %.lr.ph150.2

bb.ad:                                            ; preds = %.lr.ph150.1
  %i.do = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %2, align 4, !tbaa !11
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dq
  %i.ds = trunc nuw nsw i64 %indvars.iv.next160 to i32
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !11
  br label %.lr.ph150.2

.lr.ph150.2:                                      ; preds = %bb.ad, %.lr.ph150.1
  %indvars.iv.next160.1 = or disjoint i64 %indvars.iv159, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next160.1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !36, !range !37, !noundef !38
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.ae, label %.lr.ph150.3

bb.ae:                                            ; preds = %.lr.ph150.2
  %i.dw = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %2, align 4, !tbaa !11
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dy
  %i.ea = trunc nuw nsw i64 %indvars.iv.next160.1 to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !11
  br label %.lr.ph150.3

.lr.ph150.3:                                      ; preds = %bb.ae, %.lr.ph150.2
  %indvars.iv.next160.2 = or disjoint i64 %indvars.iv159, 3 ; 2 uses
end_hunk_0
