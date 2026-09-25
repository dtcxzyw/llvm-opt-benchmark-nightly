Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/transcode?download=true
inline.NumInlined: 403
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@econv_source_encoding:bb.a
  br label %econv_get_encoding.exit

econv_get_encoding.exit:                          ; preds = %check_econv.exit, %bb.f
  %.0.i = phi i64 [ %i.x, %bb.f ], [ 4, %check_econv.exit ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @econv_destination_encoding(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !114

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !115

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @econv_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !119

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123  ; 2 uses
  %i.s = icmp eq ptr %i.r, @econv_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @econv_data_type) #19
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %check_econv.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eTypeError, align 8, !tbaa !28
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.120) #20
  unreachable

check_econv.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !82   ; 2 uses
  %.not.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i1, label %econv_get_encoding.exit, label %bb.f

bb.f:                                             ; preds = %check_econv.exit
  %i.x = tail call i64 @rb_enc_from_encoding(ptr noundef nonnull %i.w) #19
  br label %econv_get_encoding.exit

econv_get_encoding.exit:                          ; preds = %check_econv.exit, %bb.f
  %.0.i = phi i64 [ %i.x, %bb.f ], [ 4, %check_econv.exit ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @econv_primitive_convert(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.e = icmp eq i64 %2, 0
  %i.f = and i64 %2, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !114

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.i = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = and i64 %i.j, 95
  %or.cond.not.i.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !115

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117  ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @econv_data_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !119

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.v, %bb.d ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.u = getelementptr i8, ptr %.015.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123  ; 2 uses
  %i.w = icmp eq ptr %i.v, @econv_data_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @econv_data_type) #19
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.x, %.critedge.i.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.s, %bb.d ] ; 4 uses
  %.not.i45 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i45, label %bb.e, label %rb_scan_args_n_opt.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = load i64, ptr @rb_eTypeError, align 8, !tbaa !28
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.120) #20
  unreachable

rb_scan_args_n_opt.exit:                          ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.z = icmp sgt i32 %0, 0
  br i1 %i.z, label %bb.f, label %.thread

bb.f:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.aa = zext nneg i32 %0 to i64
  %i.ab = getelementptr [8 x i8], ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.ae = tail call i32 @rb_keyword_given_p() #19
  %.not60 = icmp eq i32 %i.ae, 0
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i64 @rb_hash_dup(i64 noundef %i.ad) #19
  %i.ag = add nsw i32 %0, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.193.i = phi i32 [ %0, %bb.f ], [ %i.ag, %bb.g ] ; 8 uses
  %.1.i = phi i64 [ 4, %bb.f ], [ %i.af, %bb.g ]  ; 3 uses
  %i.ah = icmp samesign ult i32 %.193.i, 2
  br i1 %i.ah, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %i.ai = load i64, ptr %1, align 8, !tbaa !28
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !28
  %i.aj = getelementptr i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !28
  %.not109 = icmp eq i32 %.193.i, 2
  br i1 %.not109, label %.preheader.1, label %bb.i

bb.i:                                             ; preds = %.preheader.preheader
  %i.al = getelementptr i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.i
  %.pr = phi i64 [ %i.am, %bb.i ], [ 4, %.preheader.preheader ] ; 4 uses
  %.286.i = phi i32 [ 3, %bb.i ], [ 2, %.preheader.preheader ] ; 4 uses
  %i.an = icmp samesign ult i32 %.286.i, %.193.i
  br i1 %i.an, label %bb.j, label %.preheader.2

bb.j:                                             ; preds = %.preheader.1
  %i.ao = zext nneg i32 %.286.i to i64
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.ar = add nuw nsw i32 %.286.i, 1
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %bb.j
  %i.as = phi i64 [ %i.aq, %bb.j ], [ 4, %.preheader.1 ] ; 6 uses
  %.286.i.1 = phi i32 [ %i.ar, %bb.j ], [ %.286.i, %.preheader.1 ] ; 4 uses
  %i.at = icmp samesign ult i32 %.286.i.1, %.193.i
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.2
  %i.au = zext nneg i32 %.286.i.1 to i64
  %i.av = getelementptr [8 x i8], ptr %1, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !28
  %i.ax = add nuw nsw i32 %.286.i.1, 1
  br label %bb.l

bb.l:                                             ; preds = %.preheader.2, %bb.k
  %i.ay = phi i64 [ %i.aw, %bb.k ], [ 4, %.preheader.2 ] ; 2 uses
  %.286.i.2 = phi i32 [ %i.ax, %bb.k ], [ %.286.i.1, %.preheader.2 ]
  %i.az = icmp eq i32 %.286.i.2, %.193.i
  br i1 %i.az, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.l, %bb.h
  %.193.i59 = phi i32 [ %.193.i, %bb.h ], [ %.193.i, %bb.l ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.193.i59, i32 noundef 2, i32 noundef 5) #20
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.l
  %i.ba = icmp eq i64 %.pr, 4                     ; 2 uses
  br i1 %i.ba, label %rb_num2long_inline.exit, label %bb.m

bb.m:                                             ; preds = %rb_scan_args_set.exit
  %i.bb = trunc i64 %.pr to i1
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = ashr i64 %.pr, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = tail call i64 @rb_num2long(i64 noundef %.pr) #19
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.o, %bb.n, %rb_scan_args_set.exit
  %.036 = phi i64 [ 0, %rb_scan_args_set.exit ], [ %i.bc, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i64 %i.as, 4                    ; 2 uses
  br i1 %i.be, label %rb_num2long_inline.exit47, label %bb.p

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.bf = trunc i64 %i.as to i1
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = ashr i64 %i.as, 1
  br label %rb_num2long_inline.exit47

bb.r:                                             ; preds = %bb.p
  %i.bh = tail call i64 @rb_num2long(i64 noundef %i.as) #19
  br label %rb_num2long_inline.exit47

rb_num2long_inline.exit47:                        ; preds = %bb.r, %bb.q, %rb_num2long_inline.exit
  %.033 = phi i64 [ 0, %rb_num2long_inline.exit ], [ %i.bg, %bb.q ], [ %i.bh, %bb.r ]
  %i.bi = icmp eq i64 %i.ay, 4
  %i.bj = icmp eq i64 %.1.i, 4                    ; 2 uses
  br i1 %i.bi, label %bb.x, label %bb.s

bb.s:                                             ; preds = %rb_num2long_inline.exit47
  br i1 %i.bj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = add nuw nsw i32 %.193.i, 1
  tail call void @rb_error_arity(i32 noundef %i.bk, i32 noundef 2, i32 noundef 5) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bl = tail call i64 @rb_to_int(i64 noundef %i.ay) #19 ; 3 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = tail call i64 @rb_fix2int(i64 noundef %i.bl) #19
  br label %rb_num2int_inline.exit

bb.w:                                             ; preds = %bb.u
  %i.bo = tail call i64 @rb_num2int(i64 noundef %i.bl) #19
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.v, %bb.w
  %.0.i48 = phi i64 [ %i.bn, %bb.v ], [ %i.bo, %bb.w ]
  %i.bp = trunc i64 %.0.i48 to i32
  br label %bb.z

bb.x:                                             ; preds = %rb_num2long_inline.exit47
  br i1 %i.bj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load i64, ptr @sym_partial_input, align 8, !tbaa !28
  %i.br = tail call i64 @rb_hash_aref(i64 noundef %.1.i, i64 noundef %i.bq) #19
  %i.bs = and i64 %i.br, -5
  %.not61 = icmp eq i64 %i.bs, 0
  %spec.select = select i1 %.not61, i32 0, i32 131072 ; 2 uses
  %i.bt = load i64, ptr @sym_after_output, align 8, !tbaa !28
  %i.bu = tail call i64 @rb_hash_aref(i64 noundef %.1.i, i64 noundef %i.bt) #19
  %i.bv = and i64 %i.bu, -5
  %.not62 = icmp eq i64 %i.bv, 0
  %i.bw = or disjoint i32 %spec.select, 262144
  %.1 = select i1 %.not62, i32 %spec.select, i32 %i.bw
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %rb_num2int_inline.exit
  %.2 = phi i32 [ %i.bp, %rb_num2int_inline.exit ], [ %.1, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.bx = call i64 @rb_string_value(ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !28
  %i.bz = icmp eq i64 %i.by, 4
  br i1 %i.bz, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = call i64 @rb_string_value(ptr noundef nonnull %i.a) #19 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !28
  call void @rb_str_modify(i64 noundef %i.cb) #19
  br i1 %i.be, label %bb.ac, label %.peel.begin

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cd = call i64 @rb_str_capacity(i64 noundef %i.cc) #22 ; 2 uses
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4
  br i1 %i.cf, label %.peel.begin, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = inttoptr i64 %i.ce to ptr
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !84
  %spec.select44 = call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.ci)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.ad, %bb.ac, %bb.ab
  %.134 = phi i64 [ %i.cd, %bb.ac ], [ %.033, %bb.ab ], [ %spec.select44, %bb.ad ] ; 5 uses
  br i1 %i.ba, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.peel.begin
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !84
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.peel.begin
  %.238.peel = phi i64 [ %i.cm, %bb.ae ], [ %.036, %.peel.begin ] ; 4 uses
  %i.cn = icmp slt i64 %.238.peel, 0
  br i1 %i.cn, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = load i64, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !84
  %i.cs = icmp slt i64 %i.cr, %.238.peel
  br i1 %i.cs, label %.loopexit82, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = icmp slt i64 %.134, 0
  br i1 %i.ct, label %bb.ax, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = add nuw i64 %.238.peel, %.134           ; 3 uses
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit84, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = call i64 @rb_str_capacity(i64 noundef %i.co) #22
  %i.cx = icmp ult i64 %i.cw, %i.cu
  br i1 %i.cx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cy = call i64 @rb_str_resize(i64 noundef %i.co, i64 noundef %i.cu) #19 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4
  br i1 %i.da, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = inttoptr i64 %i.cz to ptr               ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !40
  %i.dd = and i64 %i.dc, 8192
  %.not.i49.peel = icmp eq i64 %i.dd, 0
  %i.de = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  br i1 %.not.i49.peel, label %RSTRING_PTR.exit.peel, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !32
  br label %RSTRING_PTR.exit.peel

RSTRING_PTR.exit.peel:                            ; preds = %bb.an, %bb.am
  %i.dg = phi ptr [ %i.df, %bb.an ], [ %i.de, %bb.am ] ; 2 uses
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !31
  %i.dh = getelementptr i8, ptr %i.db, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !84
  %i.dj = getelementptr i8, ptr %i.dg, i64 %i.di
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  store ptr null, ptr %i.c, align 8, !tbaa !31
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %RSTRING_PTR.exit.peel
  %.039.peel = phi ptr [ null, %bb.ao ], [ %i.dj, %RSTRING_PTR.exit.peel ]
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !28
  %i.dl = inttoptr i64 %i.dk to ptr               ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !40
  %i.dn = and i64 %i.dm, 8192
  %.not.i50.peel = icmp eq i64 %i.dn, 0
  %i.do = getelementptr i8, ptr %i.dl, i64 24     ; 2 uses
  br i1 %.not.i50.peel, label %RSTRING_PTR.exit51.peel, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32
  br label %RSTRING_PTR.exit51.peel

RSTRING_PTR.exit51.peel:                          ; preds = %bb.aq, %bb.ap
  %i.dq = phi ptr [ %i.dp, %bb.aq ], [ %i.do, %bb.ap ]
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.238.peel ; 2 uses
  store ptr %i.dr, ptr %i.d, align 8, !tbaa !31
  %i.ds = getelementptr i8, ptr %i.dr, i64 %.134
  %i.dt = call i32 @rb_econv_convert(ptr noundef nonnull %.1.i.i, ptr noundef nonnull %i.c, ptr noundef %.039.peel, ptr noundef nonnull %i.d, ptr noundef %i.ds, i32 noundef %.2) ; 2 uses
  %i.du = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.dw = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !40
  %i.dy = and i64 %i.dx, 8192
  %.not.i52.peel = icmp eq i64 %i.dy, 0
  %i.dz = getelementptr i8, ptr %i.dw, i64 24     ; 2 uses
  br i1 %.not.i52.peel, label %RSTRING_PTR.exit53.peel, label %bb.ar

bb.ar:                                            ; preds = %RSTRING_PTR.exit51.peel
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !32
  br label %RSTRING_PTR.exit53.peel

RSTRING_PTR.exit53.peel:                          ; preds = %bb.ar, %RSTRING_PTR.exit51.peel
  %i.eb = phi ptr [ %i.ea, %bb.ar ], [ %i.dz, %RSTRING_PTR.exit51.peel ]
  %i.ec = ptrtoint ptr %i.dv to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @rb_str_set_len(i64 noundef %i.du, i64 noundef %i.ee) #19
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !28  ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 4
  br i1 %i.eg, label %bb.au, label %bb.as

bb.as:                                            ; preds = %RSTRING_PTR.exit53.peel
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ei = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !40
  %i.ek = and i64 %i.ej, 8192
  %.not.i54.peel = icmp eq i64 %i.ek, 0
  %i.el = getelementptr i8, ptr %i.ei, i64 24     ; 2 uses
  br i1 %.not.i54.peel, label %RSTRING_PTR.exit55.peel, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !32
  br label %RSTRING_PTR.exit55.peel

RSTRING_PTR.exit55.peel:                          ; preds = %bb.at, %bb.as
  %i.en = phi ptr [ %i.em, %bb.at ], [ %i.el, %bb.as ]
  %i.eo = ptrtoint ptr %i.eh to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = call i64 @rb_str_drop_bytes(i64 noundef %i.ef, i64 noundef %i.eq) #19 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %RSTRING_PTR.exit55.peel, %RSTRING_PTR.exit53.peel
  %i.es = icmp eq i64 %i.as, 4
  %i.et = icmp eq i32 %i.dt, 2
  %or.cond3.peel = and i1 %i.et, %i.es
  br i1 %or.cond3.peel, label %bb.av, label %.loopexit85

bb.av:                                            ; preds = %bb.au
  %i.eu = icmp samesign ugt i64 %.134, 4611686018427387903
  br i1 %i.eu, label %.loopexit86, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.av
  %3 = icmp eq i64 %i.as, 4
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.bl
  %.235.in = phi i64 [ %.235, %bb.bl ], [ %.134, %.peel.next.preheader ] ; 2 uses
  %.235 = shl nuw nsw i64 %.235.in, 1             ; 3 uses
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !84 ; 4 uses
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %.loopexit, label %bb.aw

.loopexit:                                        ; preds = %.peel.next, %bb.af
  %i.fa = load i64, ptr @rb_eArgError, align 8, !tbaa !28
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fa, ptr noundef nonnull @.str.122) #20
  unreachable

bb.aw:                                            ; preds = %.peel.next
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !84
  %i.ff = icmp slt i64 %i.fe, %i.ey
  br i1 %i.ff, label %.loopexit82, label %bb.ay

.loopexit82:                                      ; preds = %bb.aw, %bb.ag
  %i.fg = load i64, ptr @rb_eArgError, align 8, !tbaa !28
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fg, ptr noundef nonnull @.str.123) #20
  unreachable

bb.ax:                                            ; preds = %bb.ah
  %i.fh = load i64, ptr @rb_eArgError, align 8, !tbaa !28
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fh, ptr noundef nonnull @.str.124) #20
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fi = add nuw i64 %i.ey, %.235                ; 3 uses
  %i.fj = icmp slt i64 %i.fi, 0
  br i1 %i.fj, label %.loopexit84, label %bb.az

.loopexit84:                                      ; preds = %bb.ay, %bb.ai
  %i.fk = load i64, ptr @rb_eArgError, align 8, !tbaa !28
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fk, ptr noundef nonnull @.str.125) #20
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.fl = call i64 @rb_str_capacity(i64 noundef %i.fb) #22
  %i.fm = icmp ult i64 %i.fl, %i.fi
  br i1 %i.fm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fn = call i64 @rb_str_resize(i64 noundef %i.fb, i64 noundef %i.fi) #19 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 4
  br i1 %i.fp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store ptr null, ptr %i.c, align 8, !tbaa !31
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.fq = inttoptr i64 %i.fo to ptr               ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !40
  %i.fs = and i64 %i.fr, 8192
  %.not.i49 = icmp eq i64 %i.fs, 0
  %i.ft = getelementptr i8, ptr %i.fq, i64 24     ; 2 uses
  br i1 %.not.i49, label %RSTRING_PTR.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !32
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.bd, %bb.be
  %i.fv = phi ptr [ %i.fu, %bb.be ], [ %i.ft, %bb.bd ] ; 2 uses
  store ptr %i.fv, ptr %i.c, align 8, !tbaa !31
  %i.fw = getelementptr i8, ptr %i.fq, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !84
  %i.fy = getelementptr i8, ptr %i.fv, i64 %i.fx
  br label %bb.bf

bb.bf:                                            ; preds = %RSTRING_PTR.exit, %bb.bc
  %.039 = phi ptr [ null, %bb.bc ], [ %i.fy, %RSTRING_PTR.exit ]
  %i.fz = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ga = inttoptr i64 %i.fz to ptr               ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !40
  %i.gc = and i64 %i.gb, 8192
  %.not.i50 = icmp eq i64 %i.gc, 0
  %i.gd = getelementptr i8, ptr %i.ga, i64 24     ; 2 uses
  br i1 %.not.i50, label %RSTRING_PTR.exit51, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !32
  br label %RSTRING_PTR.exit51

RSTRING_PTR.exit51:                               ; preds = %bb.bf, %bb.bg
  %i.gf = phi ptr [ %i.ge, %bb.bg ], [ %i.gd, %bb.bf ]
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.ey  ; 2 uses
  store ptr %i.gg, ptr %i.d, align 8, !tbaa !31
  %i.gh = getelementptr i8, ptr %i.gg, i64 %.235
  %i.gi = call i32 @rb_econv_convert(ptr noundef nonnull %.1.i.i, ptr noundef nonnull %i.c, ptr noundef %.039, ptr noundef nonnull %i.d, ptr noundef %i.gh, i32 noundef %.2) ; 2 uses
  %i.gj = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.gk = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.gl = inttoptr i64 %i.gj to ptr               ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !40
  %i.gn = and i64 %i.gm, 8192
  %.not.i52 = icmp eq i64 %i.gn, 0
  %i.go = getelementptr i8, ptr %i.gl, i64 24     ; 2 uses
  br i1 %.not.i52, label %RSTRING_PTR.exit53, label %bb.bh

bb.bh:                                            ; preds = %RSTRING_PTR.exit51
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !32
  br label %RSTRING_PTR.exit53

RSTRING_PTR.exit53:                               ; preds = %RSTRING_PTR.exit51, %bb.bh
  %i.gq = phi ptr [ %i.gp, %bb.bh ], [ %i.go, %RSTRING_PTR.exit51 ]
  %i.gr = ptrtoint ptr %i.gk to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @rb_str_set_len(i64 noundef %i.gj, i64 noundef %i.gt) #19
  %i.gu = load i64, ptr %i.a, align 8, !tbaa !28  ; 3 uses
  %i.gv = icmp eq i64 %i.gu, 4
  br i1 %i.gv, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %RSTRING_PTR.exit53
  %i.gw = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.gx = inttoptr i64 %i.gu to ptr               ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !40
  %i.gz = and i64 %i.gy, 8192
  %.not.i54 = icmp eq i64 %i.gz, 0
  %i.ha = getelementptr i8, ptr %i.gx, i64 24     ; 2 uses
  br i1 %.not.i54, label %RSTRING_PTR.exit55, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !32
  br label %RSTRING_PTR.exit55

RSTRING_PTR.exit55:                               ; preds = %bb.bi, %bb.bj
  %i.hc = phi ptr [ %i.hb, %bb.bj ], [ %i.ha, %bb.bi ]
  %i.hd = ptrtoint ptr %i.gw to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = call i64 @rb_str_drop_bytes(i64 noundef %i.gu, i64 noundef %i.hf) #19 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %RSTRING_PTR.exit55, %RSTRING_PTR.exit53
  %i.hh = icmp eq i32 %i.gi, 2
  %or.cond3 = and i1 %i.hh, %3
  br i1 %or.cond3, label %bb.bl, label %.loopexit85

bb.bl:                                            ; preds = %bb.bk
  %i.hi = icmp samesign ugt i64 %.235.in, 2305843009213693951
  br i1 %i.hi, label %.loopexit86, label %.peel.next, !llvm.loop !181

.loopexit86:                                      ; preds = %bb.bl, %bb.av
  %i.hj = load i64, ptr @rb_eArgError, align 8, !tbaa !28
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hj, ptr noundef nonnull @.str.126) #20
  unreachable

.loopexit85:                                      ; preds = %bb.bk, %bb.au
  %.lcssa = phi i32 [ %i.dt, %bb.au ], [ %i.gi, %bb.bk ] ; 2 uses
  %i.hk = getelementptr i8, ptr %.1.i.i, i64 176
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !82 ; 2 uses
  %.not = icmp eq ptr %i.hl, null
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.loopexit85
  %i.hm = load i64, ptr %i.b, align 8, !tbaa !28
  %i.hn = call i64 @rb_enc_associate(i64 noundef %i.hm, ptr noundef nonnull %i.hl) #19 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.loopexit85
  switch i32 %.lcssa, label %bb.bv [
    i32 0, label %bb.bo
    i32 6, label %bb.bp
    i32 1, label %bb.bq
    i32 2, label %bb.br
    i32 3, label %bb.bs
    i32 4, label %bb.bt
    i32 5, label %bb.bu
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.ho = load i64, ptr @sym_invalid_byte_sequence, align 8, !tbaa !28
  br label %econv_result_to_symbol.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hp = load i64, ptr @sym_incomplete_input, align 8, !tbaa !28
  br label %econv_result_to_symbol.exit

bb.bq:                                            ; preds = %bb.bn
  %i.hq = load i64, ptr @sym_undefined_conversion, align 8, !tbaa !28
  br label %econv_result_to_symbol.exit

bb.br:                                            ; preds = %bb.bn
  %i.hr = load i64, ptr @sym_destination_buffer_full, align 8, !tbaa !28
  br label %econv_result_to_symbol.exit

bb.bs:                                            ; preds = %bb.bn
  %i.hs = load i64, ptr @sym_source_buffer_empty, align 8, !tbaa !28
  br label %econv_result_to_symbol.exit

bb.bt:                                            ; preds = %bb.bn
  %i.ht = load i64, ptr @sym_finished, align 8, !tbaa !28
  br label %econv_result_to_symbol.exit

bb.bu:                                            ; preds = %bb.bn
  %i.hu = load i64, ptr @sym_after_output, align 8, !tbaa !28
  br label %econv_result_to_symbol.exit

bb.bv:                                            ; preds = %bb.bn
  %i.hv = sext i32 %.lcssa to i64
  %i.hw = shl nsw i64 %i.hv, 1
  %i.hx = or disjoint i64 %i.hw, 1
  br label %econv_result_to_symbol.exit

econv_result_to_symbol.exit:                      ; preds = %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv
  %.0.i56 = phi i64 [ %i.hx, %bb.bv ], [ %i.ho, %bb.bo ], [ %i.hp, %bb.bp ], [ %i.hq, %bb.bq ], [ %i.hr, %bb.br ], [ %i.hs, %bb.bs ], [ %i.ht, %bb.bt ], [ %i.hu, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %.0.i56
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @econv_convert(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [5 x i64], align 16               ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !114

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !115

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !117  ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @econv_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !119

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr i8, ptr %.015.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !123  ; 2 uses
  %i.u = icmp eq ptr %i.t, @econv_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @econv_data_type) #19
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %check_econv.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @rb_eTypeError, align 8, !tbaa !28
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.120) #20
  unreachable

check_econv.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = call i64 @rb_string_value(ptr noundef nonnull %i.a) #19 ; 0 uses
  %i.y = call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #19 ; 2 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !28
  %i.aa = call i64 @rb_str_dup(i64 noundef %i.z) #19
  store i64 %i.aa, ptr %i.b, align 16, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 4, ptr %i.ac, align 16, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 4, ptr %i.ad, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 262145, ptr %i.ae, align 16, !tbaa !28
  %i.af = call i64 @econv_primitive_convert(i32 noundef 5, ptr noundef nonnull %i.b, i64 noundef %0) ; 5 uses
  %i.ag = load i64, ptr @sym_invalid_byte_sequence, align 8, !tbaa !28
  %i.ah = icmp eq i64 %i.af, %i.ag
  %i.ai = load i64, ptr @sym_undefined_conversion, align 8
  %i.aj = icmp eq i64 %i.af, %i.ai
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  %i.ak = load i64, ptr @sym_incomplete_input, align 8
  %i.al = icmp eq i64 %i.af, %i.ak
  %or.cond13 = select i1 %or.cond, i1 true, i1 %i.al
  br i1 %or.cond13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %check_econv.exit
  %i.am = call fastcc i64 @make_econv_exception(ptr noundef nonnull %.1.i.i)
  call void @rb_exc_raise(i64 noundef %i.am) #20
  unreachable

bb.g:                                             ; preds = %check_econv.exit
  %i.an = load i64, ptr @sym_finished, align 8, !tbaa !28
  %i.ao = icmp eq i64 %i.af, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr @rb_eArgError, align 8, !tbaa !28
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.127) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aq = load i64, ptr @sym_source_buffer_empty, align 8, !tbaa !28
  %.not = icmp eq i64 %i.af, %i.aq
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.128) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @econv_finish(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
end_hunk_0
