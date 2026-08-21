inline.NumInlined: 172
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@hid_hw_raw_request:bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %__hid_hw_raw_request.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 96
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  %narrow.i = select i1 %.not.i, i32 16384, i32 %i.e
  %spec.select.i = zext i32 %narrow.i to i64
  %i.f = icmp ule i64 %3, %spec.select.i
  %i.g = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.c, label %__hid_hw_raw_request.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = trunc i32 %4 to i8
  %i.k = tail call i32 %i.i(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %2, i64 noundef %3, i8 noundef zeroext %i.j, i32 noundef %5) #22, !inline_history !49
  br label %__hid_hw_raw_request.exit

__hid_hw_raw_request.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.024.i = phi i32 [ %i.k, %bb.c ], [ -22, %bb.b ], [ -22, %bb.a ]
  ret i32 %.024.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @hid_input_report(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc i32 @__hid_input_report(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %i.a, i32 noundef %3, i32 noundef %4) #21
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @hid_report_raw_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr [2072 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0                     ; 3 uses
  br i1 %.not, label %hid_get_report.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %4, 0
  %i.f = icmp eq i64 %3, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @___ratelimit(ptr noundef nonnull @hid_report_raw_event._rs, ptr noundef nonnull @__func__.hid_report_raw_event) #22
  %.not105 = icmp eq i32 %i.g, 0
  br i1 %.not105, label %bb.bn, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.h, ptr noundef nonnull @.str.10, i32 noundef %4, i64 noundef %3) #24
  br label %bb.bn

bb.e:                                             ; preds = %bb.b
  %i.i = load i8, ptr %2, align 1
  %i.j = zext i8 %i.i to i64
  br label %hid_get_report.exit

hid_get_report.exit:                              ; preds = %bb.a, %bb.e
  %.0.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.a ]
  %i.k = getelementptr i8, ptr %i.c, i64 24
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %.0.i
  %i.m = load ptr, ptr %i.l, align 8              ; 10 uses
  %.not89 = icmp eq ptr %i.m, null
  br i1 %.not89, label %bb.bn, label %bb.f

bb.f:                                             ; preds = %hid_get_report.exit
  %i.n = zext i32 %4 to i64
  %i.o = icmp ult i64 %3, %i.n
  br i1 %i.o, label %bb.g, label %bb.i, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @___ratelimit(ptr noundef nonnull @hid_report_raw_event._rs.11, ptr noundef nonnull @__func__.hid_report_raw_event) #22
  %.not104 = icmp eq i32 %i.p, 0
  br i1 %.not104, label %bb.bn, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 6344
  %i.r = getelementptr i8, ptr %i.m, i64 48
  %i.s = load i32, ptr %i.r, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.q, ptr noundef nonnull @.str.12, i32 noundef %i.s, i32 noundef %4, i64 noundef %3) #24
  br label %bb.bn

bb.i:                                             ; preds = %bb.f
  %not..not = xor i1 %.not, true                  ; 3 uses
  %i.t = sext i1 %not..not to i32
  %.077 = add i32 %4, %i.t                        ; 3 uses
  %i.u = sext i1 %not..not to i64
  %.076 = add i64 %3, %i.u                        ; 2 uses
  %.075.idx = zext i1 %not..not to i64
  %.075 = getelementptr i8, ptr %2, i64 %.075.idx ; 13 uses
  %i.v = getelementptr i8, ptr %i.m, i64 2124
  %.val = load i32, ptr %i.v, align 4             ; 2 uses
  %.not.i107 = icmp eq i32 %.val, 0
  %i.w = add i32 %.val, -1
  %i.x = lshr i32 %i.w, 3
  %i.y = add nuw nsw i32 %i.x, 1
  %narrow.i = select i1 %.not.i107, i32 0, i32 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 7120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 96
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %.not91 = icmp eq i32 %i.ac, 0
  %.079 = select i1 %.not91, i32 16384, i32 %i.ac ; 3 uses
  %.not93 = icmp ugt i32 %.079, %narrow.i
  %or.cond106 = select i1 %.not, i1 true, i1 %.not93
  %i.ad = add nsw i32 %.079, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.079, i32 %narrow.i)
  %.078 = select i1 %or.cond106, i32 %spec.select, i32 %i.ad ; 4 uses
  %i.ae = zext nneg i32 %.078 to i64
  %i.af = icmp ult i64 %.076, %i.ae
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @___ratelimit(ptr noundef nonnull @hid_report_raw_event._rs.13, ptr noundef nonnull @__func__.hid_report_raw_event) #22
  %.not103 = icmp eq i32 %i.ag, 0
  br i1 %.not103, label %bb.bn, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %0, i64 6344
  %i.ai = getelementptr i8, ptr %i.m, i64 48
  %i.aj = load i32, ptr %i.ai, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ah, ptr noundef nonnull @.str.14, i32 noundef %i.aj, i32 noundef %.078, i64 noundef %.076) #24
  br label %bb.bn

bb.l:                                             ; preds = %bb.i
  %i.ak = icmp ult i32 %.077, %.078
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = zext nneg i32 %.077 to i64
  %i.am = getelementptr i8, ptr %.075, i64 %i.al
  %i.an = sub nuw nsw i32 %.078, %.077
  %i.ao = zext i32 %i.an to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.ao, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr i8, ptr %0, i64 7168      ; 6 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.ar = and i32 %i.aq, 2
  %.not94 = icmp eq i32 %i.ar, 0
  br i1 %.not94, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %0, i64 7520
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not95 = icmp eq ptr %i.at, null
  br i1 %.not95, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.at(ptr noundef %0, ptr noundef nonnull %i.m) #22
  %.pre = load i32, ptr %i.ap, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.au = phi i32 [ %.pre, %bb.p ], [ %i.aq, %bb.o ], [ %i.aq, %bb.n ] ; 2 uses
  %i.av = and i32 %i.au, 4
  %.not96 = icmp eq i32 %i.av, 0
  br i1 %.not96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = tail call i32 @hidraw_report_event(ptr noundef %0, ptr noundef %2, i32 noundef %4) #22 ; 2 uses
  %.not97 = icmp eq i32 %i.aw, 0
  br i1 %.not97, label %thread-pre-split, label %bb.bn

thread-pre-split:                                 ; preds = %bb.r
  %.pr = load i32, ptr %i.ap, align 8
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %bb.q
  %i.ax = phi i32 [ %.pr, %thread-pre-split ], [ %i.au, %bb.q ]
  %.not98 = icmp eq i32 %i.ax, 4
  br i1 %.not98, label %bb.bl, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %i.m, i64 2120    ; 5 uses
  %i.az = load i32, ptr %i.ay, align 8
  %.not99 = icmp eq i32 %i.az, 0
  br i1 %.not99, label %bb.bl, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.ba = getelementptr i8, ptr %i.m, i64 64      ; 3 uses
  %i.bb = getelementptr i8, ptr %0, i64 6344      ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %hid_input_fetch_field.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %hid_input_fetch_field.exit.i ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8            ; 10 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 32
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bd, i64 36
  %i.bj = load i32, ptr %i.bi, align 4            ; 9 uses
  %i.bk = getelementptr i8, ptr %i.bd, i64 72     ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bd, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = zext i32 %i.bf to i64                   ; 3 uses
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.bp, i1 false)
  %i.bq = getelementptr i8, ptr %i.bd, i64 96     ; 2 uses
  store i8 0, ptr %i.bq, align 8
  %.not58.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not58.i.i, label %hid_input_fetch_field.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %i.br = icmp slt i32 %i.bl, 0
  %i.bs = icmp ugt i32 %i.bj, 32                  ; 2 uses
  %.not.i.i36.i.i = icmp eq i32 %i.bj, 0          ; 2 uses
  %i.bt = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %i.bj) ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bd, i64 28     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bd, i64 76     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bd, i64 24     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  br i1 %i.br, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %hid_array_value_is_valid.exit.thread.us.i.i
  %indvars.iv63.i.i = phi i64 [ %indvars.iv.next64.i.i, %hid_array_value_is_valid.exit.thread.us.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.by = trunc nuw i64 %indvars.iv63.i.i to i32
  %i.bz = mul i32 %i.bj, %i.by
  %i.ca = add i32 %i.bz, %i.bh                    ; 2 uses
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us.i.i
  br i1 %.not.i.i36.i.i, label %snto32.exit.us.i.i, label %.lr.ph.preheader.i.i.us.i.i

bb.w:                                             ; preds = %.lr.ph.split.us.i.i
  %.b.i.us.i.i = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %.b.i.us.i.i, label %.lr.ph.preheader.i.i.us.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %i.cb = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !34
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.hid_field_extract, i32 noundef %i.bj, ptr noundef %i.cd) #24
  br label %.lr.ph.preheader.i.i.us.i.i

.lr.ph.preheader.i.i.us.i.i:                      ; preds = %bb.x, %bb.w, %bb.v
  %.08.i.us.i.i = phi i32 [ %i.bj, %bb.v ], [ 32, %bb.w ], [ 32, %bb.x ] ; 4 uses
  %i.ce = and i32 %i.ca, 7                        ; 3 uses
  %i.cf = sub nuw nsw i32 8, %i.ce                ; 3 uses
  %i.cg = lshr i32 %i.ca, 3
  %i.ch = zext nneg i32 %i.cg to i64              ; 3 uses
  %i.ci = getelementptr i8, ptr %.075, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = lshr i32 %i.ck, %i.ce                   ; 3 uses
  %i.cm = sub nsw i32 %.08.i.us.i.i, %i.cf        ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.us.i.i.preheader, label %hid_field_extract.exit.us.i.i

.lr.ph.i.i.us.i.i.preheader:                      ; preds = %.lr.ph.preheader.i.i.us.i.i
  %i.co = add nsw i32 %.08.i.us.i.i, -9
  %i.cp = add nsw i32 %i.co, %i.ce                ; 2 uses
  %i.cq = lshr i32 %i.cp, 3
  %i.cr = add nuw nsw i32 %i.cq, 1
  %xtraiter166 = and i32 %i.cr, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i32 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol

.lr.ph.i.i.us.i.i.prol:                           ; preds = %.lr.ph.i.i.us.i.i.preheader, %.lr.ph.i.i.us.i.i.prol
  %indvars.iv.i.us.i.i.prol = phi i64 [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.prol ], [ %i.ch, %.lr.ph.i.i.us.i.i.preheader ]
  %.027.i.i.us.i.i.prol = phi i32 [ %i.cw, %.lr.ph.i.i.us.i.i.prol ], [ %i.cl, %.lr.ph.i.i.us.i.i.preheader ]
  %.01924.i.i.us.i.i.prol = phi i32 [ %i.cy, %.lr.ph.i.i.us.i.i.prol ], [ %i.cf, %.lr.ph.i.i.us.i.i.preheader ] ; 2 uses
  %.02122.i.i.us.i.i.prol = phi i32 [ %i.cx, %.lr.ph.i.i.us.i.i.prol ], [ %i.cm, %.lr.ph.i.i.us.i.i.preheader ]
  %prol.iter168 = phi i32 [ %prol.iter168.next, %.lr.ph.i.i.us.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.preheader ]
  %indvars.iv.next.i.us.i.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.i.prol, 1 ; 3 uses
  %i.cs = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i.us.i.i.prol
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl i32 %i.cu, %.01924.i.i.us.i.i.prol
  %i.cw = or i32 %i.cv, %.027.i.i.us.i.i.prol     ; 3 uses
  %i.cx = add nsw i32 %.02122.i.i.us.i.i.prol, -8 ; 2 uses
  %i.cy = add nuw nsw i32 %.01924.i.i.us.i.i.prol, 8 ; 2 uses
  %prol.iter168.next = add i32 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i32 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol, !llvm.loop !50

.lr.ph.i.i.us.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.preheader
  %indvars.iv.i.us.i.i.unr = phi i64 [ %i.ch, %.lr.ph.i.i.us.i.i.preheader ], [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.prol ]
  %.027.i.i.us.i.i.unr = phi i32 [ %i.cl, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.us.i.i.prol ]
  %.01924.i.i.us.i.i.unr = phi i32 [ %i.cf, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.us.i.i.prol ]
  %.02122.i.i.us.i.i.unr = phi i32 [ %i.cm, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.us.i.i.prol ]
  %.lcssa164.unr = phi i32 [ poison, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.us.i.i.prol ]
  %i.cz = icmp ult i32 %i.cp, 24
  br i1 %i.cz, label %hid_field_extract.exit.us.i.i, label %.lr.ph.i.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.3, %.lr.ph.i.i.us.i.i ], [ %indvars.iv.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 4 uses
  %.027.i.i.us.i.i = phi i32 [ %i.dz, %.lr.ph.i.i.us.i.i ], [ %.027.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ]
  %.01924.i.i.us.i.i = phi i32 [ %i.eb, %.lr.ph.i.i.us.i.i ], [ %.01924.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 5 uses
  %.02122.i.i.us.i.i = phi i32 [ %i.ea, %.lr.ph.i.i.us.i.i ], [ %.02122.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 2 uses
  %i.da = getelementptr i8, ptr %.075, i64 %indvars.iv.i.us.i.i
  %i.db = getelementptr i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl i32 %i.dd, %.01924.i.i.us.i.i
  %i.df = or i32 %i.de, %.027.i.i.us.i.i
  %i.dg = add nuw nsw i32 %.01924.i.i.us.i.i, 8
  %i.dh = getelementptr i8, ptr %.075, i64 %indvars.iv.i.us.i.i
  %i.di = getelementptr i8, ptr %i.dh, i64 2
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl i32 %i.dk, %i.dg
  %i.dm = or i32 %i.dl, %i.df
  %i.dn = add nuw nsw i32 %.01924.i.i.us.i.i, 16
  %i.do = getelementptr i8, ptr %.075, i64 %indvars.iv.i.us.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 3
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl i32 %i.dr, %i.dn
  %i.dt = or i32 %i.ds, %i.dm
  %i.du = add nuw nsw i32 %.01924.i.i.us.i.i, 24
  %indvars.iv.next.i.us.i.i.3 = add nuw nsw i64 %indvars.iv.i.us.i.i, 4 ; 2 uses
  %i.dv = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i.us.i.i.3
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl i32 %i.dx, %i.du
  %i.dz = or i32 %i.dy, %i.dt                     ; 2 uses
  %i.ea = add nsw i32 %.02122.i.i.us.i.i, -32
  %i.eb = add nuw nsw i32 %.01924.i.i.us.i.i, 32
  %i.ec = icmp sgt i32 %.02122.i.i.us.i.i, 32
  br i1 %i.ec, label %.lr.ph.i.i.us.i.i, label %hid_field_extract.exit.us.i.i, !llvm.loop !37

hid_field_extract.exit.us.i.i:                    ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i, %.lr.ph.preheader.i.i.us.i.i
  %.0.lcssa.i.i.us.i.i = phi i32 [ %i.cl, %.lr.ph.preheader.i.i.us.i.i ], [ %.lcssa164.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ], [ %i.dz, %.lr.ph.i.i.us.i.i ]
  %i.ed = icmp samesign ult i32 %.08.i.us.i.i, 32
  %notmask.i.i.us.i.i = shl nsw i32 -1, %.08.i.us.i.i
  %i.ee = xor i32 %notmask.i.i.us.i.i, -1
  %spec.select.i.us.i.i = select i1 %i.ed, i32 %i.ee, i32 -1
  %i.ef = and i32 %.0.lcssa.i.i.us.i.i, %spec.select.i.us.i.i ; 2 uses
  %.not54.us.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not54.us.i.i, label %snto32.exit.us.i.i, label %bb.y

bb.y:                                             ; preds = %hid_field_extract.exit.us.i.i
  %i.eg = shl i32 %i.ef, %i.bt
  %i.eh = ashr exact i32 %i.eg, %i.bt
  br label %snto32.exit.us.i.i

snto32.exit.us.i.i:                               ; preds = %bb.y, %hid_field_extract.exit.us.i.i, %bb.v
  %i.ei = phi i32 [ 0, %bb.v ], [ %i.eh, %bb.y ], [ 0, %hid_field_extract.exit.us.i.i ] ; 5 uses
  %i.ej = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv63.i.i
  store i32 %i.ei, ptr %i.ej, align 4
  %i.ek = load i32, ptr %i.bu, align 4
  %i.el = and i32 %i.ek, 2
  %.not.us.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.us.i.i, label %bb.z, label %hid_array_value_is_valid.exit.thread.us.i.i

bb.z:                                             ; preds = %snto32.exit.us.i.i
  %i.em = load i32, ptr %i.bk, align 8            ; 2 uses
  %.not.i.us.i.i = icmp slt i32 %i.ei, %i.em
  br i1 %.not.i.us.i.i, label %hid_array_value_is_valid.exit.thread.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = load i32, ptr %i.bv, align 4
  %.not8.i.us.i.i = icmp sgt i32 %i.ei, %i.en
  br i1 %.not8.i.us.i.i, label %hid_array_value_is_valid.exit.thread.us.i.i, label %hid_array_value_is_valid.exit.us.i.i

hid_array_value_is_valid.exit.us.i.i:             ; preds = %bb.aa
  %i.eo = sub i32 %i.ei, %i.em
  %i.ep = load i32, ptr %i.bw, align 8
  %.not55.us.i.i = icmp ult i32 %i.eo, %i.ep
  br i1 %.not55.us.i.i, label %bb.ab, label %hid_array_value_is_valid.exit.thread.us.i.i

bb.ab:                                            ; preds = %hid_array_value_is_valid.exit.us.i.i
  %i.eq = load ptr, ptr %i.bx, align 8
  %i.er = sub i32 %i.ei, %i.bl
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [28 x i8], ptr %i.eq, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = icmp eq i32 %i.eu, 458753
  br i1 %i.ev, label %.split.us.i.i, label %hid_array_value_is_valid.exit.thread.us.i.i

hid_array_value_is_valid.exit.thread.us.i.i:      ; preds = %bb.ab, %hid_array_value_is_valid.exit.us.i.i, %bb.aa, %bb.z, %snto32.exit.us.i.i
  %indvars.iv.next64.i.i = add nuw nsw i64 %indvars.iv63.i.i, 1 ; 2 uses
  %exitcond67.not.i.i = icmp eq i64 %indvars.iv.next64.i.i, %i.bo
  br i1 %exitcond67.not.i.i, label %hid_input_fetch_field.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !51

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %hid_array_value_is_valid.exit.thread.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %hid_array_value_is_valid.exit.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.ew = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ex = mul i32 %i.bj, %i.ew
  %i.ey = add i32 %i.ex, %i.bh                    ; 2 uses
  br i1 %i.bs, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.split.i.i
  %.b.i50.i.i = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %.b.i50.i.i, label %.lr.ph.preheader.i.i37.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %i.ez = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #27, !srcloc !34
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr i8, ptr %i.fa, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.hid_field_extract, i32 noundef %i.bj, ptr noundef %i.fb) #24
  br label %.lr.ph.preheader.i.i37.i.i

bb.ae:                                            ; preds = %.lr.ph.split.i.i
  br i1 %.not.i.i36.i.i, label %snto32.exit.i.i, label %.lr.ph.preheader.i.i37.i.i

.lr.ph.preheader.i.i37.i.i:                       ; preds = %bb.ae, %bb.ad, %bb.ac
  %.08.i38.i.i = phi i32 [ %i.bj, %bb.ae ], [ 32, %bb.ac ], [ 32, %bb.ad ] ; 4 uses
  %i.fc = and i32 %i.ey, 7                        ; 3 uses
  %i.fd = sub nuw nsw i32 8, %i.fc                ; 3 uses
  %i.fe = lshr i32 %i.ey, 3
  %i.ff = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fg = getelementptr i8, ptr %.075, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = lshr i32 %i.fi, %i.fc                   ; 3 uses
  %i.fk = sub nsw i32 %.08.i38.i.i, %i.fd         ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i44.i.i.preheader, label %__extract.exit.i39.i.i

.lr.ph.i.i44.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i37.i.i
  %i.fm = add nsw i32 %.08.i38.i.i, -9
  %i.fn = add nsw i32 %i.fm, %i.fc                ; 2 uses
  %i.fo = lshr i32 %i.fn, 3
  %i.fp = add nuw nsw i32 %i.fo, 1
  %xtraiter = and i32 %i.fp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i44.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.prol

.lr.ph.i.i44.i.i.prol:                            ; preds = %.lr.ph.i.i44.i.i.preheader, %.lr.ph.i.i44.i.i.prol
  %indvars.iv.i45.i.i.prol = phi i64 [ %indvars.iv.next.i49.i.i.prol, %.lr.ph.i.i44.i.i.prol ], [ %i.ff, %.lr.ph.i.i44.i.i.preheader ]
  %.027.i.i46.i.i.prol = phi i32 [ %i.fu, %.lr.ph.i.i44.i.i.prol ], [ %i.fj, %.lr.ph.i.i44.i.i.preheader ]
  %.01924.i.i47.i.i.prol = phi i32 [ %i.fw, %.lr.ph.i.i44.i.i.prol ], [ %i.fd, %.lr.ph.i.i44.i.i.preheader ] ; 2 uses
  %.02122.i.i48.i.i.prol = phi i32 [ %i.fv, %.lr.ph.i.i44.i.i.prol ], [ %i.fk, %.lr.ph.i.i44.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i44.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.preheader ]
  %indvars.iv.next.i49.i.i.prol = add nuw nsw i64 %indvars.iv.i45.i.i.prol, 1 ; 3 uses
  %i.fq = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i49.i.i.prol
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl i32 %i.fs, %.01924.i.i47.i.i.prol
  %i.fu = or i32 %i.ft, %.027.i.i46.i.i.prol      ; 3 uses
  %i.fv = add nsw i32 %.02122.i.i48.i.i.prol, -8  ; 2 uses
  %i.fw = add nuw nsw i32 %.01924.i.i47.i.i.prol, 8 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i44.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.prol, !llvm.loop !52

.lr.ph.i.i44.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i44.i.i.prol, %.lr.ph.i.i44.i.i.preheader
  %indvars.iv.i45.i.i.unr = phi i64 [ %i.ff, %.lr.ph.i.i44.i.i.preheader ], [ %indvars.iv.next.i49.i.i.prol, %.lr.ph.i.i44.i.i.prol ]
  %.027.i.i46.i.i.unr = phi i32 [ %i.fj, %.lr.ph.i.i44.i.i.preheader ], [ %i.fu, %.lr.ph.i.i44.i.i.prol ]
  %.01924.i.i47.i.i.unr = phi i32 [ %i.fd, %.lr.ph.i.i44.i.i.preheader ], [ %i.fw, %.lr.ph.i.i44.i.i.prol ]
  %.02122.i.i48.i.i.unr = phi i32 [ %i.fk, %.lr.ph.i.i44.i.i.preheader ], [ %i.fv, %.lr.ph.i.i44.i.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i44.i.i.preheader ], [ %i.fu, %.lr.ph.i.i44.i.i.prol ]
  %i.fx = icmp ult i32 %i.fn, 24
  br i1 %i.fx, label %__extract.exit.i39.i.i, label %.lr.ph.i.i44.i.i

.lr.ph.i.i44.i.i:                                 ; preds = %.lr.ph.i.i44.i.i.prol.loopexit, %.lr.ph.i.i44.i.i
  %indvars.iv.i45.i.i = phi i64 [ %indvars.iv.next.i49.i.i.3, %.lr.ph.i.i44.i.i ], [ %indvars.iv.i45.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ] ; 4 uses
  %.027.i.i46.i.i = phi i32 [ %i.gx, %.lr.ph.i.i44.i.i ], [ %.027.i.i46.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ]
  %.01924.i.i47.i.i = phi i32 [ %i.gz, %.lr.ph.i.i44.i.i ], [ %.01924.i.i47.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ] ; 5 uses
  %.02122.i.i48.i.i = phi i32 [ %i.gy, %.lr.ph.i.i44.i.i ], [ %.02122.i.i48.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ] ; 2 uses
  %i.fy = getelementptr i8, ptr %.075, i64 %indvars.iv.i45.i.i
  %i.fz = getelementptr i8, ptr %i.fy, i64 1
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl i32 %i.gb, %.01924.i.i47.i.i
  %i.gd = or i32 %i.gc, %.027.i.i46.i.i
  %i.ge = add nuw nsw i32 %.01924.i.i47.i.i, 8
  %i.gf = getelementptr i8, ptr %.075, i64 %indvars.iv.i45.i.i
  %i.gg = getelementptr i8, ptr %i.gf, i64 2
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i32
  %i.gj = shl i32 %i.gi, %i.ge
  %i.gk = or i32 %i.gj, %i.gd
  %i.gl = add nuw nsw i32 %.01924.i.i47.i.i, 16
  %i.gm = getelementptr i8, ptr %.075, i64 %indvars.iv.i45.i.i
  %i.gn = getelementptr i8, ptr %i.gm, i64 3
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = zext i8 %i.go to i32
  %i.gq = shl i32 %i.gp, %i.gl
  %i.gr = or i32 %i.gq, %i.gk
  %i.gs = add nuw nsw i32 %.01924.i.i47.i.i, 24
  %indvars.iv.next.i49.i.i.3 = add nuw nsw i64 %indvars.iv.i45.i.i, 4 ; 2 uses
  %i.gt = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i49.i.i.3
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl i32 %i.gv, %i.gs
  %i.gx = or i32 %i.gw, %i.gr                     ; 2 uses
  %i.gy = add nsw i32 %.02122.i.i48.i.i, -32
  %i.gz = add nuw nsw i32 %.01924.i.i47.i.i, 32
  %i.ha = icmp sgt i32 %.02122.i.i48.i.i, 32
  br i1 %i.ha, label %.lr.ph.i.i44.i.i, label %__extract.exit.i39.i.i, !llvm.loop !37

__extract.exit.i39.i.i:                           ; preds = %.lr.ph.i.i44.i.i.prol.loopexit, %.lr.ph.i.i44.i.i, %.lr.ph.preheader.i.i37.i.i
  %.0.lcssa.i.i40.i.i = phi i32 [ %i.fj, %.lr.ph.preheader.i.i37.i.i ], [ %.lcssa.unr, %.lr.ph.i.i44.i.i.prol.loopexit ], [ %i.gx, %.lr.ph.i.i44.i.i ]
  %i.hb = icmp samesign ult i32 %.08.i38.i.i, 32
  %notmask.i.i41.i.i = shl nsw i32 -1, %.08.i38.i.i
  %i.hc = xor i32 %notmask.i.i41.i.i, -1
  %spec.select.i42.i.i = select i1 %i.hb, i32 %i.hc, i32 -1
  %i.hd = and i32 %.0.lcssa.i.i40.i.i, %spec.select.i42.i.i
  br label %snto32.exit.i.i

snto32.exit.i.i:                                  ; preds = %__extract.exit.i39.i.i, %bb.ae
  %i.he = phi i32 [ 0, %bb.ae ], [ %i.hd, %__extract.exit.i39.i.i ] ; 5 uses
  %i.hf = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  store i32 %i.he, ptr %i.hf, align 4
  %i.hg = load i32, ptr %i.bu, align 4
  %i.hh = and i32 %i.hg, 2
  %.not.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i, label %bb.af, label %hid_array_value_is_valid.exit.thread.i.i

bb.af:                                            ; preds = %snto32.exit.i.i
  %i.hi = load i32, ptr %i.bk, align 8            ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.he, %i.hi
  br i1 %.not.i.i.i, label %hid_array_value_is_valid.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hj = load i32, ptr %i.bv, align 4
  %.not8.i.i.i = icmp sgt i32 %i.he, %i.hj
  br i1 %.not8.i.i.i, label %hid_array_value_is_valid.exit.thread.i.i, label %hid_array_value_is_valid.exit.i.i

hid_array_value_is_valid.exit.i.i:                ; preds = %bb.ag
  %i.hk = sub i32 %i.he, %i.hi
  %i.hl = load i32, ptr %i.bw, align 8
  %.not55.i.i = icmp ult i32 %i.hk, %i.hl
  br i1 %.not55.i.i, label %bb.ah, label %hid_array_value_is_valid.exit.thread.i.i

bb.ah:                                            ; preds = %hid_array_value_is_valid.exit.i.i
  %i.hm = load ptr, ptr %i.bx, align 8
  %i.hn = sub i32 %i.he, %i.bl
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr [28 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = icmp eq i32 %i.hq, 458753
  br i1 %i.hr, label %.split.us.i.i, label %hid_array_value_is_valid.exit.thread.i.i

.split.us.i.i:                                    ; preds = %bb.ah, %bb.ab
  store i8 1, ptr %i.bq, align 8
  br label %hid_input_fetch_field.exit.i

hid_array_value_is_valid.exit.thread.i.i:         ; preds = %bb.ah, %hid_array_value_is_valid.exit.i.i, %bb.ag, %bb.af, %snto32.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bo
  br i1 %exitcond.not.i.i, label %hid_input_fetch_field.exit.i, label %.lr.ph.split.i.i, !llvm.loop !51

hid_input_fetch_field.exit.i:                     ; preds = %hid_array_value_is_valid.exit.thread.i.i, %hid_array_value_is_valid.exit.thread.us.i.i, %.split.us.i.i, %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hs = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ht = zext i32 %i.hs to i64
  %i.hu = icmp samesign ult i64 %indvars.iv.next.i, %i.ht
  br i1 %i.hu, label %bb.u, label %._crit_edge.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %hid_input_fetch_field.exit.i
  %i.hv = getelementptr i8, ptr %i.m, i64 32      ; 3 uses
  %i.hw = load volatile ptr, ptr %i.hv, align 8   ; 2 uses
  %.not.i109 = icmp eq ptr %i.hw, %i.hv
  br i1 %.not.i109, label %.preheader.i, label %.lr.ph72.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.hx = icmp eq i32 %i.hs, 0
  br i1 %i.hx, label %hid_process_report.exit, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.preheader.i
  %i.hy = getelementptr i8, ptr %0, i64 7104      ; 2 uses
  %i.hz = getelementptr i8, ptr %0, i64 7560      ; 2 uses
  %i.ia = icmp ne i32 %5, 0
  %i.ib = getelementptr i8, ptr %0, i64 7512
  br label %bb.an

.preheader61.i:                                   ; preds = %bb.ak
  %.pre.i = load i32, ptr %i.ay, align 8          ; 2 uses
  %.not78.i = icmp eq i32 %.pre.i, 0
  br i1 %.not78.i, label %hid_process_report.exit, label %.lr.ph74.i

.lr.ph72.i:                                       ; preds = %._crit_edge.i, %bb.ak
  %.04871.i = phi ptr [ %.048.i, %bb.ak ], [ %i.hw, %._crit_edge.i ] ; 3 uses
  %i.ic = getelementptr i8, ptr %.04871.i, i64 16
  %i.id = load ptr, ptr %i.ic, align 8            ; 5 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 28
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = and i32 %i.if, 2
  %.not51.i = icmp eq i32 %i.ig, 0
  br i1 %.not51.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph72.i
  %i.ih = getelementptr i8, ptr %i.id, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr i8, ptr %.04871.i, i64 24
  %i.ik = load i32, ptr %i.ij, align 8
  %i.il = zext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr [28 x i8], ptr %i.ii, i64 %i.il
  %i.in = getelementptr i8, ptr %i.id, i64 56
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr [4 x i8], ptr %i.io, i64 %i.il
  %i.iq = load i32, ptr %i.ip, align 4
  tail call fastcc void @hid_process_event(ptr noundef %0, ptr noundef %i.id, ptr noundef %i.im, i32 noundef %i.iq, i32 noundef %5) #21, !srcloc !54
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph72.i
  tail call fastcc void @hid_input_array_field(ptr noundef %0, ptr noundef %i.id, i32 noundef %5) #21, !srcloc !55
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.048.i = load ptr, ptr %.04871.i, align 8      ; 2 uses
  %.not60.i = icmp eq ptr %.048.i, %i.hv
  br i1 %.not60.i, label %.preheader61.i, label %.lr.ph72.i, !llvm.loop !56

.lr.ph74.i:                                       ; preds = %.preheader61.i, %bb.am
  %i.ir = phi i32 [ %i.jf, %bb.am ], [ %.pre.i, %.preheader61.i ]
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %bb.am ], [ 0, %.preheader61.i ] ; 2 uses
  %i.is = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv85.i
  %i.it = load ptr, ptr %i.is, align 8            ; 4 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 28
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = and i32 %i.iv, 2
  %.not50.i = icmp eq i32 %i.iw, 0
  br i1 %.not50.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph74.i
  %i.ix = getelementptr i8, ptr %i.it, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr i8, ptr %i.it, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8
end_hunk_0
