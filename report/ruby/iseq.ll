inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@iseqw_trace_points:bb.a
  br label %bb.u

bb.u:                                             ; preds = %rbimpl_intern_const.exit67.i, %bb.s
  %i.cp = and i32 %i.ai, 512
  %.not36.i = icmp eq i32 %i.cp, 0
  br i1 %.not36.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = sext i32 %i.aj to i64
  %i.cr = shl nsw i64 %i.cq, 1
  %i.cs = or disjoint i64 %i.cr, 1
  %.pr.i68.i = load i64, ptr @push_event_info.rbimpl_id.295, align 8, !tbaa !11 ; 2 uses
  %.not4.i69.i = icmp eq i64 %.pr.i68.i, 0
  br i1 %.not4.i69.i, label %.lr.ph.i71.i, label %rbimpl_intern_const.exit73.i

.lr.ph.i71.i:                                     ; preds = %bb.v, %.lr.ph.i71.i
  %i.ct = tail call i64 @rb_intern2(ptr noundef nonnull @.str.296, i64 noundef 8) #20 ; 3 uses
  store i64 %i.ct, ptr @push_event_info.rbimpl_id.295, align 8, !tbaa !11
  %.not.i72.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i72.i, label %.lr.ph.i71.i, label %rbimpl_intern_const.exit73.i, !llvm.loop !272

rbimpl_intern_const.exit73.i:                     ; preds = %.lr.ph.i71.i, %bb.v
  %.lcssa.i70.i = phi i64 [ %.pr.i68.i, %bb.v ], [ %i.ct, %.lr.ph.i71.i ]
  %i.cu = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i70.i) #20
  %i.cv = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.cs, i64 noundef %i.cu) #20
  %i.cw = tail call i64 @rb_ary_push(i64 noundef %i.ab, i64 noundef %i.cv) #20 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %rbimpl_intern_const.exit73.i, %bb.u
  %i.cx = and i32 %i.ai, 16384
  %.not37.i = icmp eq i32 %i.cx, 0
  br i1 %.not37.i, label %push_event_info.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = sext i32 %i.aj to i64
  %i.cz = shl nsw i64 %i.cy, 1
  %i.da = or disjoint i64 %i.cz, 1
  %.pr.i74.i = load i64, ptr @push_event_info.rbimpl_id.297, align 8, !tbaa !11 ; 2 uses
  %.not4.i75.i = icmp eq i64 %.pr.i74.i, 0
  br i1 %.not4.i75.i, label %.lr.ph.i77.i, label %rbimpl_intern_const.exit79.i

.lr.ph.i77.i:                                     ; preds = %bb.x, %.lr.ph.i77.i
  %i.db = tail call i64 @rb_intern2(ptr noundef nonnull @.str.128, i64 noundef 6) #20 ; 3 uses
  store i64 %i.db, ptr @push_event_info.rbimpl_id.297, align 8, !tbaa !11
  %.not.i78.i = icmp eq i64 %i.db, 0
  br i1 %.not.i78.i, label %.lr.ph.i77.i, label %rbimpl_intern_const.exit79.i, !llvm.loop !272

rbimpl_intern_const.exit79.i:                     ; preds = %.lr.ph.i77.i, %bb.x
  %.lcssa.i76.i = phi i64 [ %.pr.i74.i, %bb.x ], [ %i.db, %.lr.ph.i77.i ]
  %i.dc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i76.i) #20
  %i.dd = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.da, i64 noundef %i.dc) #20
  %i.de = tail call i64 @rb_ary_push(i64 noundef %i.ab, i64 noundef %i.dd) #20 ; 0 uses
  br label %push_event_info.exit

push_event_info.exit:                             ; preds = %rbimpl_intern_const.exit79.i, %bb.w, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.ac, align 8, !tbaa !154
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.h, label %._crit_edge, !llvm.loop !368

._crit_edge:                                      ; preds = %push_event_info.exit, %iseqw_check.exit
  ret i64 %i.ab
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @iseqw_each_child(i64 noundef returned %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = tail call ptr @rb_iseq_original_iseq(ptr noundef nonnull %i.u) #20 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !18  ; 2 uses
  %i.ad = tail call i64 @rb_ident_hash_new() #20
  %i.ae = tail call i64 @rb_obj_hide(i64 noundef %i.ad) #20 ; 4 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 160    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87 ; 3 uses
  %.not.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i2, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %iseqw_check.exit
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !7
  %.not53.i = icmp eq i32 %i.ah, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %i.ai = phi ptr [ %i.as, %bb.j ], [ %i.ag, %.preheader.i ]
  %i.aj = getelementptr [32 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 12
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 3 uses
  %.not49.i = icmp eq ptr %i.al, null
  br i1 %.not49.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = tail call i64 @rb_hash_aref(i64 noundef %i.ae, i64 noundef %i.am) #20
  %i.ao = icmp eq i64 %i.an, 4
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call i64 @rb_hash_aset(i64 noundef %i.ae, i64 noundef %i.am, i64 noundef 20) #20 ; 0 uses
  %i.aq = tail call fastcc i64 @iseqw_new(ptr noundef nonnull %i.al)
  %i.ar = tail call i64 @rb_yield(i64 noundef %i.aq) #20 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !87 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1, !tbaa !7
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !369

.loopexit.i:                                      ; preds = %bb.j, %.preheader.i, %iseqw_check.exit
  %i.aw = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89
  %.not54.i = icmp eq i32 %i.ax, 0
  br i1 %.not54.i, label %iseq_iterate_children.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.loopexit.i, %bb.w
  %.151.i = phi i32 [ %i.cs, %bb.w ], [ 0, %.loopexit.i ] ; 3 uses
  %i.ay = zext i32 %.151.i to i64
  %i.az = getelementptr [8 x i8], ptr %i.ab, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bb = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !90
  %i.bd = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.ba
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !296
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.bf
  %i.bh = add nuw i32 %.151.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.v, %.lr.ph52.i
  %.0.i = phi i32 [ 0, %.lr.ph52.i ], [ %i.cq, %bb.v ] ; 3 uses
  %i.bi = sext i32 %.0.i to i64
  %i.bj = getelementptr i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !90
  switch i8 %i.bk, label %bb.v [
    i8 0, label %bb.w
    i8 83, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bl = add i32 %i.bh, %.0.i
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.ab, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11 ; 8 uses
  %i.bp = inttoptr i64 %i.bo to ptr               ; 3 uses
  %.not48.i = icmp eq i64 %i.bo, 0
  br i1 %.not48.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = tail call i64 @rb_hash_aref(i64 noundef %i.ae, i64 noundef %i.bo) #20
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bs = tail call i64 @rb_hash_aset(i64 noundef %i.ae, i64 noundef %i.bo, i64 noundef 20) #20 ; 0 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 8      ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !292 ; 2 uses
  %.not.i3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i3, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call ptr @rb_check_typeddata(i64 noundef %i.bu, ptr noundef nonnull @iseqw_data_type) #20
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !283
  %.not19.i = icmp eq ptr %i.bw, %i.bp
  br i1 %.not19.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.by = load i64, ptr %i.bt, align 8, !tbaa !292
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bx, ptr noundef nonnull @.str.156, i64 noundef %i.by, ptr noundef nonnull %i.bp) #22
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !292
  br label %iseqw_new.exit

bb.r:                                             ; preds = %bb.n
  %i.ca = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.cb = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ca, i64 noundef 8, ptr noundef nonnull @iseqw_data_type) #20 ; 10 uses
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !274
  %i.cf = trunc i64 %i.ce to i1
  %i.cg = getelementptr i8, ptr %i.cc, i64 32     ; 2 uses
  br i1 %i.cf, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.s, %bb.r
  %i.ci = phi ptr [ %i.ch, %bb.s ], [ %i.cg, %bb.r ]
  store i64 %i.bo, ptr %i.ci, align 8, !tbaa !11
  %i.cj = and i64 %i.bo, 7
  %.not24.i = icmp eq i64 %i.cj, 0
  br i1 %.not24.i, label %bb.t, label %rb_obj_write.exit.i

bb.t:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.cb, i64 noundef %i.bo) #20
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.t, %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_obj_freeze_inline(i64 noundef %i.cb) #20
  %i.ck = tail call i64 @rb_obj_set_shareable(i64 noundef %i.cb) #20 ; 0 uses
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !11
  %i.cl = icmp eq i64 %i.cb, 0
  %i.cm = and i64 %i.cb, 7
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = or i1 %i.cl, %i.cn
  br i1 %i.co, label %iseqw_new.exit, label %bb.u

bb.u:                                             ; preds = %rb_obj_write.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.bo, i64 noundef %i.cb) #20
  br label %iseqw_new.exit

iseqw_new.exit:                                   ; preds = %bb.q, %rb_obj_write.exit.i, %bb.u
  %.0.i4 = phi i64 [ %i.bz, %bb.q ], [ %i.cb, %rb_obj_write.exit.i ], [ %i.cb, %bb.u ]
  %i.cp = tail call i64 @rb_yield(i64 noundef %.0.i4) #20 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %iseqw_new.exit, %bb.m, %bb.l, %bb.k
  %i.cq = add i32 %.0.i, 1
  br label %bb.k, !llvm.loop !370

bb.w:                                             ; preds = %bb.k
  %i.cr = zext i8 %i.bc to i32
  %i.cs = add i32 %.151.i, %i.cr                  ; 2 uses
  %i.ct = load i32, ptr %i.aw, align 4, !tbaa !89
  %i.cu = icmp ult i32 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph52.i, label %iseq_iterate_children.exit, !llvm.loop !371

iseq_iterate_children.exit:                       ; preds = %bb.w, %.loopexit.i
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_ruby_default_parser() #20
  %i.b = icmp eq i32 %i.a, 1
  %i.c = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_parsey(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_prism(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_file_prism(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.rb_compile_option_struct, align 4 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.pm_parse_result_t, align 8  ; 9 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %0 to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = tail call i32 @rb_keyword_given_p() #20
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %.thread27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i64 @rb_hash_dup(i64 noundef %i.m) #20
  %i.p = add nsw i32 %0, -1                       ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %.thread27

.thread27:                                        ; preds = %bb.b, %bb.c
  %.1.i31 = phi i32 [ %i.p, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.188.i30 = phi i64 [ %i.o, %bb.c ], [ 4, %bb.b ] ; 3 uses
  %i.r = load i64, ptr %1, align 8, !tbaa !11     ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !11
  %i.s = icmp samesign ugt i32 %.1.i31, 1
  br i1 %i.s, label %rb_scan_args_set.exit, label %.thread34

.thread:                                          ; preds = %bb.a, %bb.c
  %.1.i20 = phi i32 [ 0, %bb.c ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i20, i32 noundef 1, i32 noundef -1) #22
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread27
  %i.t = icmp eq i64 %.188.i30, 4
  %i.u = select i1 %i.t, i32 2, i32 1
  %i.v = icmp samesign ugt i32 %.1.i31, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #22
  unreachable

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %cond = icmp eq i32 %.1.i31, 2
  br i1 %cond, label %bb.f, label %.thread34

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  br label %.thread34

.thread34:                                        ; preds = %.thread27, %bb.e, %bb.f
  %i.y = phi i64 [ %.188.i30, %bb.e ], [ %i.x, %bb.f ], [ %.188.i30, %.thread27 ]
  %i.z = tail call i64 @rb_get_path(i64 noundef %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
end_hunk_0
begin_hunk_1_@make_compile_option:bb.a
  %i.bt = load i16, ptr %0, align 4
  %i.bu = or i16 %i.bt, 512
  br label %.sink.split171.i

bb.ae:                                            ; preds = %rbimpl_intern_const.exit113.i
  %i.bv = load i16, ptr %0, align 4
  %i.bw = and i16 %i.bv, -513
  br label %.sink.split171.i

.sink.split171.i:                                 ; preds = %bb.ae, %bb.ad
  %.sink172.i = phi i16 [ %i.bw, %bb.ae ], [ %i.bu, %bb.ad ]
  store i16 %.sink172.i, ptr %0, align 4
  br label %bb.af

bb.af:                                            ; preds = %.sink.split171.i, %rbimpl_intern_const.exit113.i
  %.pr.i114.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.154, align 8, !tbaa !11 ; 2 uses
  %.not4.i115.i = icmp eq i64 %.pr.i114.i, 0
  br i1 %.not4.i115.i, label %.lr.ph.i117.i, label %rbimpl_intern_const.exit119.i

.lr.ph.i117.i:                                    ; preds = %bb.af, %.lr.ph.i117.i
  %i.bx = tail call i64 @rb_intern2(ptr noundef nonnull @.str.155, i64 noundef 11) #20 ; 3 uses
  store i64 %i.bx, ptr @set_compile_option_from_hash.rbimpl_id.154, align 8, !tbaa !11
  %.not.i118.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i118.i, label %.lr.ph.i117.i, label %rbimpl_intern_const.exit119.i, !llvm.loop !272

rbimpl_intern_const.exit119.i:                    ; preds = %.lr.ph.i117.i, %bb.af
  %.lcssa.i116.i = phi i64 [ %.pr.i114.i, %bb.af ], [ %i.bx, %.lr.ph.i117.i ]
  %i.by = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i116.i) #20
  %i.bz = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.by) #20 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, 4
  br i1 %i.ca, label %set_compile_option_from_hash.exit, label %bb.ag

bb.ag:                                            ; preds = %rbimpl_intern_const.exit119.i
  %i.cb = trunc i64 %i.bz to i1
  br i1 %i.cb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cc = tail call i64 @rb_fix2int(i64 noundef %i.bz) #20
  br label %rb_num2int_inline.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.cd = tail call i64 @rb_num2int(i64 noundef %i.bz) #20
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.ai, %bb.ah
  %.0.i.i = phi i64 [ %i.cc, %bb.ah ], [ %i.cd, %bb.ai ]
  %i.ce = trunc i64 %.0.i.i to i32
  %i.cf = getelementptr i8, ptr %0, i64 4
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !386
  br label %set_compile_option_from_hash.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cg = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.136) #22
  unreachable

set_compile_option_from_hash.exit:                ; preds = %.preheader.preheader, %rb_num2int_inline.exit.i, %rbimpl_intern_const.exit119.i, %bb.c, %bb.b
  ret void
}

declare void @rb_iseq_build_from_ary(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i64 @rb_check_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @iseqw_mark_and_move(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_mark_and_move(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_memsize(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !283
  %i.b = tail call i64 @rb_iseq_memsize(ptr noundef %i.a)
  ret i64 %i.b
}

declare void @rb_ibf_load_iseq_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_local_id(i64 noundef) local_unnamed_addr #18

declare i64 @rb_str_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_st_init_numtable() local_unnamed_addr #2

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @rb_iseq_original_iseq(ptr noundef) local_unnamed_addr #2

declare void @rb_mark_set(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @iseq_iterate_children(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_iseq_original_iseq(ptr noundef %0) #20 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = tail call i64 @rb_ident_hash_new() #20
  %i.e = tail call i64 @rb_obj_hide(i64 noundef %i.d) #20 ; 4 uses
  %i.f = getelementptr i8, ptr %i.c, i64 160      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %i.g, align 1, !tbaa !7
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.i = phi ptr [ %i.q, %bb.d ], [ %i.g, %.preheader ]
  %i.j = getelementptr [32 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 12
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143  ; 3 uses
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = tail call i64 @rb_hash_aref(i64 noundef %i.e, i64 noundef %i.m) #20
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i64 @rb_hash_aset(i64 noundef %i.e, i64 noundef %i.m, i64 noundef 20) #20 ; 0 uses
  tail call void %1(ptr noundef nonnull %i.l, ptr noundef %2) #20, !callees !391
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %i.r = load i32, ptr %i.q, align 1, !tbaa !7
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !369

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.a
  %i.u = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %.not54 = icmp eq i32 %i.v, 0
  br i1 %.not54, label %RHASH_SIZE.exit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.loopexit, %bb.j
  %.151 = phi i32 [ %i.at, %bb.j ], [ 0, %.loopexit ] ; 3 uses
  %i.w = zext i32 %.151 to i64
  %i.x = getelementptr [8 x i8], ptr %i.a, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !90
  %i.ab = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.y
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !296
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.ad
  %i.af = add nuw i32 %.151, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph52
  %.0 = phi i32 [ 0, %.lr.ph52 ], [ %i.ar, %bb.i ] ; 3 uses
  %i.ag = sext i32 %.0 to i64
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !90
  switch i8 %i.ai, label %bb.i [
    i8 0, label %bb.j
    i8 83, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %i.af, %.0
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  %i.an = inttoptr i64 %i.am to ptr
  %.not48 = icmp eq i64 %i.am, 0
  br i1 %.not48, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call i64 @rb_hash_aref(i64 noundef %i.e, i64 noundef %i.am) #20
  %i.ap = icmp eq i64 %i.ao, 4
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call i64 @rb_hash_aset(i64 noundef %i.e, i64 noundef %i.am, i64 noundef 20) #20 ; 0 uses
  tail call void %1(ptr noundef nonnull %i.an, ptr noundef %2) #20, !callees !391
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f
  %i.ar = add i32 %.0, 1
  br label %bb.e, !llvm.loop !370

bb.j:                                             ; preds = %bb.e
  %i.as = zext i8 %i.aa to i32
  %i.at = add i32 %.151, %i.as                    ; 2 uses
  %i.au = load i32, ptr %i.u, align 4, !tbaa !89
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph52, label %RHASH_SIZE.exit, !llvm.loop !371

RHASH_SIZE.exit:                                  ; preds = %bb.j, %.loopexit
  ret void
}

declare void @rb_hook_list_connect_local_tracepoint(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ident_hash_new() local_unnamed_addr #2

declare zeroext i1 @rb_hook_list_remove_local_tracepoint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_hook_list_count(ptr noundef) local_unnamed_addr #2

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_hook_list_free(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_cc_general(ptr noundef) local_unnamed_addr #2

declare noalias ptr @rb_xcalloc_mul_add_mul(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_class_name(i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iseq_data_to_ary(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 24 uses
  %i.h = tail call i64 @rb_ary_new() #20          ; 15 uses
  %i.i = tail call i64 @rb_ary_new() #20          ; 2 uses
  %i.j = tail call i64 @rb_hash_new() #20         ; 12 uses
  %i.k = tail call i64 @rb_ary_new() #20          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call i64 @rb_ary_new() #20          ; 2 uses
  %i.m = tail call i64 @rb_hash_new() #20         ; 8 uses
  %i.n = tail call ptr @rb_st_init_numtable() #20 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.o = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.n, ptr noundef nonnull @label_wrapper) #20
  store i64 %i.o, ptr %i.b, align 8, !tbaa !11
  %i.p = load i64, ptr @iseq_data_to_ary.insn_syms, align 16, !tbaa !11
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.preheader666, label %.loopexit667

.preheader666:                                    ; preds = %bb.a, %.preheader666
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader666 ], [ 0, %bb.a ] ; 3 uses
  %i.r = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !296
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.t
  %i.v = tail call i64 @rb_intern(ptr noundef %i.u) #20
  %i.w = getelementptr [8 x i8], ptr @iseq_data_to_ary.insn_syms, i64 %indvars.iv
  store i64 %i.v, ptr %i.w, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 109
  br i1 %exitcond.not, label %.loopexit667, label %.preheader666, !llvm.loop !392

.loopexit667:                                     ; preds = %.preheader666, %bb.a
  %i.x = load i32, ptr %i.g, align 8, !tbaa !160
  %i.y = tail call fastcc i64 @iseq_type_id(i32 noundef %i.x)
  %i.z = getelementptr i8, ptr %i.g, i64 240      ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !155 ; 2 uses
  %.not751 = icmp eq i32 %i.aa, 0
  br i1 %.not751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit667
  %i.ab = getelementptr i8, ptr %i.g, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.ac = phi i32 [ %i.aa, %.lr.ph ], [ %i.ar, %bb.g ]
  %indvars.iv808 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next809, %bb.g ] ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !95
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv808
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 3 uses
  switch i64 %i.af, label %bb.c [
    i64 0, label %bb.f
    i64 153, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call i64 @rb_id2str(i64 noundef %i.af) #20
  %.not392 = icmp eq i64 %i.ag, 0
  br i1 %.not392, label %._crit_edge832, label %bb.d

._crit_edge832:                                   ; preds = %bb.c
  %.pre = load i32, ptr %i.z, align 8, !tbaa !155
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %i.af) #20
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge832, %bb.b
  %i.ai = phi i32 [ %.pre, %._crit_edge832 ], [ %i.ac, %bb.b ]
  %i.aj = trunc nuw i64 %indvars.iv808 to i32
  %reass.sub = sub i32 %i.ai, %i.aj
  %i.ak = add i32 %reass.sub, 1
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.pr.i = load i64, ptr @iseq_data_to_ary.rbimpl_id.204, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ao = tail call i64 @rb_intern2(ptr noundef nonnull @.str.205, i64 noundef 9) #20 ; 3 uses
  store i64 %i.ao, ptr @iseq_data_to_ary.rbimpl_id.204, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !272

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.f
  %.lcssa.i = phi i64 [ %.pr.i, %bb.f ], [ %i.ao, %.lr.ph.i ]
  %i.ap = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %rbimpl_intern_const.exit
  %.sink = phi i64 [ %i.ah, %bb.d ], [ %i.an, %bb.e ], [ %i.ap, %rbimpl_intern_const.exit ]
  %i.aq = tail call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %.sink) #20 ; 0 uses
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %i.ar = load i32, ptr %i.z, align 8, !tbaa !155 ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next809, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !393

._crit_edge:                                      ; preds = %bb.g, %.loopexit667
  %i.au = getelementptr i8, ptr %i.g, i64 16      ; 10 uses
  %i.av = getelementptr i8, ptr %i.g, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !92 ; 8 uses
  %i.ax = load i16, ptr %i.au, align 8            ; 2 uses
  %i.ay = and i16 %i.ax, 2
  %.not = icmp eq i16 %i.ay, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.az = getelementptr i8, ptr %i.g, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !156 ; 2 uses
  %i.bb = add i32 %i.ba, 1                        ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call i64 @rb_ary_new_capa(i64 noundef %i.bc) #20 ; 2 uses
  %i.be = icmp ult i32 %i.ba, 2147483647
  br i1 %i.be, label %.lr.ph718, label %._crit_edge719

.lr.ph718:                                        ; preds = %bb.h
  %i.bf = getelementptr i8, ptr %i.g, i64 48
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %bb.i

end_hunk_1
