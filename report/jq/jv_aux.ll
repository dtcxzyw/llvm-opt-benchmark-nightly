Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_aux?download=true
inline.NumInlined: 30
inline.NumDeleted: 4
begin_hunk_0_@parse_slice:bb.a
  %i.as = fcmp olt double %spec.store.select, 0.000000e+00
  %i.at = sitofp i32 %.097 to double              ; 5 uses
  %i.au = fadd double %spec.store.select, %i.at
  %.095 = select i1 %i.as, double %i.au, double %spec.store.select ; 2 uses
  %i.av = fcmp olt double %.095, 0.000000e+00
  %spec.store.select1 = select i1 %i.av, double 0.000000e+00, double %.095 ; 2 uses
  %i.aw = fcmp ogt double %spec.store.select1, %i.at
  %.196 = select i1 %i.aw, double %i.at, double %spec.store.select1 ; 2 uses
  %.inv103 = fcmp oge double %.196, f0x41DFFFFFFFC00000
  %i.ax = select i1 %.inv103, double f0x41DFFFFFFFC00000, double %.196
  %i.ay = fptosi double %i.ax to i32              ; 4 uses
  %i.az = fcmp uno double %i.ar, 0.000000e+00
  %.092 = select i1 %i.az, double %i.at, double %i.ar ; 3 uses
  %i.ba = fcmp olt double %.092, 0.000000e+00
  %i.bb = fadd double %.092, %i.at
  %.193 = select i1 %i.ba, double %i.bb, double %.092 ; 2 uses
  %i.bc = fcmp olt double %.193, 0.000000e+00
  %i.bd = sitofp i32 %i.ay to double
  %.294 = select i1 %i.bc, double %i.bd, double %.193 ; 3 uses
  %.inv104 = fcmp oge double %.294, f0x41DFFFFFFFC00000
  %i.be = select i1 %.inv104, double f0x41DFFFFFFFC00000, double %.294
  %i.bf = fptosi double %i.be to i32              ; 2 uses
  %.0 = tail call i32 @llvm.smin.i32(i32 %.097, i32 %i.bf) ; 2 uses
  %i.bg = icmp sgt i32 %.097, %i.bf
  %i.bh = sitofp i32 %.0 to double
  %i.bi = fcmp ogt double %.294, %i.bh
  %narrow = select i1 %i.bg, i1 %i.bi, i1 false
  %i.bj = zext i1 %narrow to i32
  %.1 = add nsw i32 %.0, %i.bj
  %.2 = tail call i32 @llvm.smax.i32(i32 %.1, i32 %i.ay) ; 2 uses
  %i.bk = icmp slt i32 %i.ay, 0
  %.not106 = icmp sgt i32 %.2, %.097
  %or.cond108 = select i1 %i.bk, i1 true, i1 %.not106
  br i1 %or.cond108, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, i32 noundef 92, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_slice) #9
  unreachable

bb.o:                                             ; preds = %bb.m
  store i32 %i.ay, ptr %4, align 4, !tbaa !13
  store i32 %.2, ptr %5, align 4, !tbaa !13
  %i.bl = tail call { i64, ptr } @jv_true() #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.g
  %.pn = phi { i64, ptr } [ %i.ap, %bb.l ], [ %i.bl, %bb.o ], [ %i.ad, %bb.g ]
  ret { i64, ptr } %.pn
}

declare { i64, ptr } @jv_array_slice(i64, ptr, i32 noundef, i32 noundef) local_unnamed_addr #1

declare { i64, ptr } @jv_string_slice(i64, ptr, i32 noundef, i32 noundef) local_unnamed_addr #1

declare { i64, ptr } @jv_array_indexes(i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_invalid_with_msg(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_string_fmt(ptr noundef, ...) local_unnamed_addr #1

declare ptr @jv_kind_name(i32 noundef) local_unnamed_addr #1

declare ptr @jv_dump_string_trunc(i64, ptr, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_set(i64 %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @jv_get_kind(i64 %4, ptr %5) #8
  %.not215 = icmp eq i32 %i.c, 0
  br i1 %.not215, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @jv_free(i64 %0, ptr %1) #8
  tail call void @jv_free(i64 %2, ptr %3) #8
  %i.d = insertvalue { i64, ptr } poison, i64 %4, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %5, 1
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.g = icmp eq i32 %i.f, 1                      ; 6 uses
  %i.h = tail call i32 @jv_get_kind(i64 %2, ptr %3) #8
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.k = icmp eq i32 %i.j, 7
  %or.cond = select i1 %i.k, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call { i64, ptr } @jv_object() #8   ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0146.0 = phi i64 [ %i.m, %bb.f ], [ %0, %bb.e ]
  %.sroa.42.0 = phi ptr [ %i.n, %bb.f ], [ %1, %bb.e ]
  %i.o = tail call { i64, ptr } @jv_object_set(i64 %.sroa.0146.0, ptr %.sroa.42.0, i64 %2, ptr %3, i64 %4, ptr %5) #8
  br label %bb.am

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call i32 @jv_get_kind(i64 %2, ptr %3) #8
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.s = icmp eq i32 %i.r, 6
  %or.cond3 = select i1 %i.s, i1 true, i1 %i.g
  br i1 %or.cond3, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.t = tail call i32 @jvp_number_is_nan(i64 %2, ptr %3) #8
  %.not213 = icmp eq i32 %i.t, 0
  br i1 %.not213, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @jv_free(i64 %0, ptr %1) #8
  tail call void @jv_free(i64 %2, ptr %3) #8
  tail call void @jv_free(i64 %4, ptr %5) #8
  %i.u = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.1) #8 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1
  %i.x = tail call { i64, ptr } @jv_invalid_with_msg(i64 %i.v, ptr %i.w) #8
  br label %bb.am

bb.l:                                             ; preds = %bb.j
  %i.y = tail call double @jv_number_value(i64 %2, ptr %3) #8 ; 2 uses
  %i.z = fcmp olt double %i.y, f0xC1E0000000000000
  %spec.store.select = select i1 %i.z, double f0xC1E0000000000000, double %i.y ; 2 uses
  %i.aa = fcmp ogt double %spec.store.select, f0x41DFFFFFFFC00000
  %spec.store.select10 = select i1 %i.aa, double f0x41DFFFFFFFC00000, double %spec.store.select
  br i1 %i.g, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call { i64, ptr } @jv_array() #8   ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0146.1 = phi i64 [ %i.ac, %bb.m ], [ %0, %bb.l ]
  %.sroa.42.1 = phi ptr [ %i.ad, %bb.m ], [ %1, %bb.l ]
  %i.ae = fptosi double %spec.store.select10 to i32
  %i.af = tail call { i64, ptr } @jv_array_set(i64 %.sroa.0146.1, ptr %.sroa.42.1, i32 noundef %i.ae, i64 %4, ptr %5) #8
  tail call void @jv_free(i64 %2, ptr %3) #8
  br label %bb.am

bb.o:                                             ; preds = %bb.i, %bb.h
  %i.ag = tail call i32 @jv_get_kind(i64 %2, ptr %3) #8
  %i.ah = icmp eq i32 %i.ag, 7
  br i1 %i.ah, label %bb.p, label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.aj = icmp eq i32 %i.ai, 6
  %or.cond5 = select i1 %i.aj, i1 true, i1 %i.g
  br i1 %or.cond5, label %bb.q, label %bb.ai

bb.q:                                             ; preds = %bb.p
  br i1 %i.g, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call { i64, ptr } @jv_array() #8   ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0146.2 = phi i64 [ %i.al, %bb.r ], [ %0, %bb.q ] ; 9 uses
  %.sroa.42.2 = phi ptr [ %i.am, %bb.r ], [ %1, %bb.q ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.an = tail call { i64, ptr } @jv_copy(i64 %.sroa.0146.2, ptr %.sroa.42.2) #8 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1
  %i.aq = call fastcc { i64, ptr } @parse_slice(i64 %i.ao, ptr %i.ap, i64 %2, ptr %3, ptr noundef %i.a, ptr noundef %i.b) ; 3 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1
  %i.at = tail call i32 @jv_get_kind(i64 %i.ar, ptr %i.as) #8
  %i.au = icmp eq i32 %i.at, 3
  br i1 %i.au, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.av = tail call i32 @jv_get_kind(i64 %4, ptr %5) #8
  %i.aw = icmp eq i32 %i.av, 6
  br i1 %i.aw, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.ax = tail call { i64, ptr } @jv_copy(i64 %.sroa.0146.2, ptr %.sroa.42.2) #8 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = extractvalue { i64, ptr } %i.ax, 1
  %i.ba = tail call i32 @jv_array_length(i64 %i.ay, ptr %i.az) #8 ; 6 uses
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !13  ; 4 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !13  ; 7 uses
  %.not206 = icmp sgt i32 %i.bb, %i.bd
  %.not207 = icmp sgt i32 %i.bd, %i.ba
  %or.cond214 = select i1 %.not206, i1 true, i1 %.not207
  br i1 %or.cond214, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 198, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_set) #9
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.be = sub nuw nsw i32 %i.bd, %i.bb            ; 4 uses
  %i.bf = tail call { i64, ptr } @jv_copy(i64 %4, ptr %5) #8 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0
  %i.bh = extractvalue { i64, ptr } %i.bf, 1
  %i.bi = tail call i32 @jv_array_length(i64 %i.bg, ptr %i.bh) #8 ; 6 uses
  %i.bj = icmp slt i32 %i.be, %i.bi
  br i1 %i.bj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bk = sub nsw i32 %i.bi, %i.be
  %.not210.not227 = icmp sgt i32 %i.ba, %i.bd
  br i1 %.not210.not227, label %.lr.ph231, label %.lr.ph240.preheader

.lr.ph231:                                        ; preds = %bb.y, %bb.z
  %.0230.in = phi i32 [ %.0230, %bb.z ], [ %i.ba, %bb.y ]
  %.sroa.42.3229 = phi ptr [ %i.bv, %bb.z ], [ %.sroa.42.2, %bb.y ] ; 4 uses
  %.sroa.0146.3228 = phi i64 [ %i.bu, %bb.z ], [ %.sroa.0146.2, %bb.y ] ; 4 uses
  %i.bl = tail call i32 @jv_get_kind(i64 %.sroa.0146.3228, ptr %.sroa.42.3229) #8
  %.not217 = icmp eq i32 %i.bl, 0
  br i1 %.not217, label %.critedge, label %bb.z

bb.z:                                             ; preds = %.lr.ph231
  %.0230 = add nsw i32 %.0230.in, -1              ; 4 uses
  %i.bm = add nsw i32 %i.bk, %.0230
  %i.bn = tail call { i64, ptr } @jv_copy(i64 %.sroa.0146.3228, ptr %.sroa.42.3229) #8 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  %i.bq = tail call { i64, ptr } @jv_array_get(i64 %i.bo, ptr %i.bp, i32 noundef %.0230) #8 ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bq, 0
  %i.bs = extractvalue { i64, ptr } %i.bq, 1
  %i.bt = tail call { i64, ptr } @jv_array_set(i64 %.sroa.0146.3228, ptr %.sroa.42.3229, i32 noundef %i.bm, i64 %i.br, ptr %i.bs) #8 ; 2 uses
  %i.bu = extractvalue { i64, ptr } %i.bt, 0      ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bt, 1      ; 2 uses
  %.not210.not = icmp sgt i32 %.0230, %i.bd
  br i1 %.not210.not, label %.lr.ph231, label %.critedge, !llvm.loop !22

bb.aa:                                            ; preds = %bb.x
  %i.bw = icmp sgt i32 %i.be, %i.bi
  br i1 %i.bw, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.bx = sub nsw i32 %i.be, %i.bi                ; 2 uses
  %i.by = icmp slt i32 %i.bd, %i.ba
  br i1 %i.by, label %.lr.ph, label %.critedge7

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %.sroa.42.4221 = phi ptr [ %i.ck, %bb.ac ], [ %.sroa.42.2, %bb.ab ] ; 4 uses
  %.sroa.0146.4220 = phi i64 [ %i.cj, %bb.ac ], [ %.sroa.0146.2, %bb.ab ] ; 4 uses
  %.0198219 = phi i32 [ %i.cl, %bb.ac ], [ %i.bd, %bb.ab ] ; 3 uses
  %i.bz = tail call i32 @jv_get_kind(i64 %.sroa.0146.4220, ptr %.sroa.42.4221) #8
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %.critedge7, label %bb.ac

.critedge7:                                       ; preds = %.lr.ph, %bb.ac, %bb.ab
  %.sroa.0146.4.lcssa = phi i64 [ %.sroa.0146.2, %bb.ab ], [ %i.cj, %bb.ac ], [ %.sroa.0146.4220, %.lr.ph ] ; 3 uses
  %.sroa.42.4.lcssa = phi ptr [ %.sroa.42.2, %bb.ab ], [ %i.ck, %bb.ac ], [ %.sroa.42.4221, %.lr.ph ] ; 3 uses
  %i.ca = tail call i32 @jv_get_kind(i64 %.sroa.0146.4.lcssa, ptr %.sroa.42.4.lcssa) #8
  %.not216 = icmp eq i32 %i.ca, 0
  br i1 %.not216, label %.critedge, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph
  %i.cb = sub nsw i32 %.0198219, %i.bx
  %i.cc = tail call { i64, ptr } @jv_copy(i64 %.sroa.0146.4220, ptr %.sroa.42.4221) #8 ; 2 uses
  %i.cd = extractvalue { i64, ptr } %i.cc, 0
  %i.ce = extractvalue { i64, ptr } %i.cc, 1
  %i.cf = tail call { i64, ptr } @jv_array_get(i64 %i.cd, ptr %i.ce, i32 noundef %.0198219) #8 ; 2 uses
  %i.cg = extractvalue { i64, ptr } %i.cf, 0
  %i.ch = extractvalue { i64, ptr } %i.cf, 1
  %i.ci = tail call { i64, ptr } @jv_array_set(i64 %.sroa.0146.4220, ptr %.sroa.42.4221, i32 noundef %i.cb, i64 %i.cg, ptr %i.ch) #8 ; 2 uses
  %i.cj = extractvalue { i64, ptr } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.ci, 1      ; 2 uses
  %i.cl = add i32 %.0198219, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.ba
  br i1 %exitcond.not, label %.critedge7, label %.lr.ph, !llvm.loop !23

bb.ad:                                            ; preds = %.critedge7
  %i.cm = sub nsw i32 %i.ba, %i.bx
  %i.cn = tail call { i64, ptr } @jv_array_slice(i64 %.sroa.0146.4.lcssa, ptr %.sroa.42.4.lcssa, i32 noundef 0, i32 noundef %i.cm) #8 ; 2 uses
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  %i.cp = extractvalue { i64, ptr } %i.cn, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %.lr.ph231, %.critedge7, %bb.ad, %bb.aa
  %.sroa.0146.6 = phi i64 [ %.sroa.0146.2, %bb.aa ], [ %i.co, %bb.ad ], [ %.sroa.0146.4.lcssa, %.critedge7 ], [ %.sroa.0146.3228, %.lr.ph231 ], [ %i.bu, %bb.z ] ; 2 uses
  %.sroa.42.6 = phi ptr [ %.sroa.42.2, %bb.aa ], [ %i.cp, %bb.ad ], [ %.sroa.42.4.lcssa, %.critedge7 ], [ %.sroa.42.3229, %.lr.ph231 ], [ %i.bv, %bb.z ] ; 2 uses
  %i.cq = icmp sgt i32 %i.bi, 0
  br i1 %i.cq, label %.lr.ph240.preheader, label %.critedge9

.lr.ph240.preheader:                              ; preds = %bb.y, %.critedge
  %.sroa.42.7239.ph = phi ptr [ %.sroa.42.2, %bb.y ], [ %.sroa.42.6, %.critedge ]
  %.sroa.0146.7238.ph = phi i64 [ %.sroa.0146.2, %bb.y ], [ %.sroa.0146.6, %.critedge ]
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %bb.ae
  %.sroa.42.7239 = phi ptr [ %i.dd, %bb.ae ], [ %.sroa.42.7239.ph, %.lr.ph240.preheader ] ; 3 uses
  %.sroa.0146.7238 = phi i64 [ %i.dc, %bb.ae ], [ %.sroa.0146.7238.ph, %.lr.ph240.preheader ] ; 3 uses
  %.0199237 = phi i32 [ %i.de, %bb.ae ], [ 0, %.lr.ph240.preheader ] ; 3 uses
  %i.cr = tail call i32 @jv_get_kind(i64 %.sroa.0146.7238, ptr %.sroa.42.7239) #8
  %.not218 = icmp eq i32 %i.cr, 0
  br i1 %.not218, label %.critedge9, label %bb.ae

.critedge9:                                       ; preds = %.lr.ph240, %bb.ae, %.critedge
  %.sroa.0146.7.lcssa = phi i64 [ %.sroa.0146.6, %.critedge ], [ %i.dc, %bb.ae ], [ %.sroa.0146.7238, %.lr.ph240 ]
  %.sroa.42.7.lcssa = phi ptr [ %.sroa.42.6, %.critedge ], [ %i.dd, %bb.ae ], [ %.sroa.42.7239, %.lr.ph240 ]
  tail call void @jv_free(i64 %4, ptr %5) #8
  %i.cs = insertvalue { i64, ptr } poison, i64 %.sroa.0146.7.lcssa, 0
  %i.ct = insertvalue { i64, ptr } %i.cs, ptr %.sroa.42.7.lcssa, 1
  br label %bb.ah

bb.ae:                                            ; preds = %.lr.ph240
  %i.cu = add nuw nsw i32 %i.bb, %.0199237
  %i.cv = tail call { i64, ptr } @jv_copy(i64 %4, ptr %5) #8 ; 2 uses
  %i.cw = extractvalue { i64, ptr } %i.cv, 0
  %i.cx = extractvalue { i64, ptr } %i.cv, 1
  %i.cy = tail call { i64, ptr } @jv_array_get(i64 %i.cw, ptr %i.cx, i32 noundef %.0199237) #8 ; 2 uses
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  %i.da = extractvalue { i64, ptr } %i.cy, 1
  %i.db = tail call { i64, ptr } @jv_array_set(i64 %.sroa.0146.7238, ptr %.sroa.42.7239, i32 noundef %i.cu, i64 %i.cz, ptr %i.da) #8 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.db, 1      ; 2 uses
  %i.de = add nuw nsw i32 %.0199237, 1            ; 2 uses
  %exitcond246.not = icmp eq i32 %i.de, %i.bi
  br i1 %exitcond246.not, label %.critedge9, label %.lr.ph240, !llvm.loop !24

bb.af:                                            ; preds = %bb.t
  tail call void @jv_free(i64 %.sroa.0146.2, ptr %.sroa.42.2) #8
  tail call void @jv_free(i64 %4, ptr %5) #8
  %i.df = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.4) #8 ; 2 uses
  %i.dg = extractvalue { i64, ptr } %i.df, 0
  %i.dh = extractvalue { i64, ptr } %i.df, 1
  %i.di = tail call { i64, ptr } @jv_invalid_with_msg(i64 %i.dg, ptr %i.dh) #8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.s
  tail call void @jv_free(i64 %.sroa.0146.2, ptr %.sroa.42.2) #8
  tail call void @jv_free(i64 %4, ptr %5) #8
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge9, %bb.af, %bb.ag
  %.merged = phi { i64, ptr } [ %i.ct, %.critedge9 ], [ %i.di, %bb.af ], [ %i.aq, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.am

bb.ai:                                            ; preds = %bb.p, %bb.o
  %i.dj = tail call i32 @jv_get_kind(i64 %2, ptr %3) #8
  %i.dk = icmp eq i32 %i.dj, 7
  br i1 %i.dk, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dl = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.dm = icmp eq i32 %i.dl, 5
  br i1 %i.dm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @jv_free(i64 %0, ptr %1) #8
  tail call void @jv_free(i64 %2, ptr %3) #8
  tail call void @jv_free(i64 %4, ptr %5) #8
  %i.dn = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.5) #8 ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = extractvalue { i64, ptr } %i.dn, 1
  %i.dq = tail call { i64, ptr } @jv_invalid_with_msg(i64 %i.do, ptr %i.dp) #8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.dr = tail call i32 @jv_get_kind(i64 %2, ptr %3) #8
  %i.ds = tail call ptr @jv_kind_name(i32 noundef %i.dr) #8
  %i.dt = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.du = tail call ptr @jv_kind_name(i32 noundef %i.dt) #8
  %i.dv = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.6, ptr noundef %i.ds, ptr noundef %i.du) #8 ; 2 uses
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %i.dx = extractvalue { i64, ptr } %i.dv, 1
  %i.dy = tail call { i64, ptr } @jv_invalid_with_msg(i64 %i.dw, ptr %i.dx) #8
  tail call void @jv_free(i64 %0, ptr %1) #8
  tail call void @jv_free(i64 %2, ptr %3) #8
  tail call void @jv_free(i64 %4, ptr %5) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.g, %bb.ah, %bb.al, %bb.ak, %bb.k, %bb.n, %bb.b
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.e, %bb.b ], [ %i.o, %bb.g ], [ %i.x, %bb.k ], [ %i.af, %bb.n ], [ %.merged, %bb.ah ], [ %i.dq, %bb.ak ], [ %i.dy, %bb.al ]
  ret { i64, ptr } %.fca.1.insert.merged
}

declare { i64, ptr } @jv_object() local_unnamed_addr #1

declare { i64, ptr } @jv_object_set(i64, ptr, i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_string(ptr noundef) local_unnamed_addr #1

declare { i64, ptr } @jv_array() local_unnamed_addr #1

declare { i64, ptr } @jv_array_set(i64, ptr, i32 noundef, i64, ptr) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_has(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %.not62 = icmp eq i32 %i.a, 0
  br i1 %.not62, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_has) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @jv_get_kind(i64 %2, ptr %3) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_has) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @jv_free(i64 %0, ptr %1) #8
  tail call void @jv_free(i64 %2, ptr %3) #8
  %i.e = tail call { i64, ptr } @jv_false() #8
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @jv_get_kind(i64 %0, ptr %1) #8
  %i.g = icmp eq i32 %i.f, 7
  br i1 %i.g, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @jv_get_kind(i64 %2, ptr %3) #8
  %i.i = icmp eq i32 %i.h, 5
end_hunk_0
