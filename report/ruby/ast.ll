Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ast?download=true
inline.NumInlined: 226
inline.NumDeleted: 46
begin_hunk_0_@rbimpl_intern_const:bb.a
  %.not4 = icmp eq i64 %.pr, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull %1, i64 noundef %i.a) #10 ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !82
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %.pr, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.lcssa
}

declare i64 @rb_enc_from_encoding(ptr noundef) local_unnamed_addr #1

declare i64 @rb_parser_compile_file_path(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_io_close(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_frame_info_p(i64 noundef) local_unnamed_addr #1

declare ptr @rb_get_iseq_from_frame_info(i64 noundef) local_unnamed_addr #1

declare i32 @rb_get_node_id_from_frame_info(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #1

declare ptr @rb_method_iseq(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_iseq_path(ptr noundef) local_unnamed_addr #1

declare i32 @rb_iseq_from_eval_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @node_find(i64 noundef %0, i32 noundef %1) unnamed_addr #0 !guid !210 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !83

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !84

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_node_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !86

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_node_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_node_type) #10
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %.1.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !113
  %i.y = icmp eq i32 %i.x, %1
  br i1 %i.y, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = load i64, ptr %.1.i, align 8, !tbaa !102
  %i.aa = tail call fastcc i64 @node_children(i64 noundef %i.z, ptr noundef nonnull %i.v)
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16     ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 32
  br label %bb.f

bb.f:                                             ; preds = %.thread26, %bb.e
  %.019 = phi i64 [ 0, %bb.e ], [ %i.bb, %.thread26 ] ; 4 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %i.af = and i64 %i.ae, 8192
  %.not.i23 = icmp eq i64 %i.af, 0
  br i1 %.not.i23, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.f
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !73
  %i.ah = icmp slt i64 %.019, %i.ag
  br i1 %i.ah, label %bb.g, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.f
  %i.ai = lshr i64 %i.ae, 15
  %i.aj = and i64 %i.ai, 127
  %i.ak = icmp samesign ult i64 %.019, %i.aj
  br i1 %i.ak, label %RARRAY_AREF.exit, label %.loopexit

bb.g:                                             ; preds = %rb_array_len.exit
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !73
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.g
  %.0.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %rb_array_len.exit.thread ]
  %i.am = getelementptr [8 x i8], ptr %.0.i.i, i64 %.019
  %i.an = load i64, ptr %i.am, align 8, !tbaa !82 ; 7 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = and i64 %i.an, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %RARRAY_AREF.exit
  %i.as = inttoptr i64 %i.an to ptr
  %i.at = getelementptr i8, ptr %i.as, i64 8
  br label %rb_class_of.exit

bb.i:                                             ; preds = %RARRAY_AREF.exit
  switch i64 %i.an, label %bb.l [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit

bb.l:                                             ; preds = %bb.i
  %i.au = trunc i64 %i.an to i1
  br i1 %i.au, label %rb_class_of.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = and i64 %i.an, 254
  %i.aw = icmp eq i64 %i.av, 12
  %spec.select.i = select i1 %i.aw, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i = phi ptr [ %i.at, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i, %bb.m ]
  %.0.i24 = load i64, ptr %.0.in.i, align 8, !tbaa !82
  %i.ax = load i64, ptr @rb_cNode, align 8, !tbaa !82
  %i.ay = icmp eq i64 %.0.i24, %i.ax
  br i1 %i.ay, label %bb.n, label %.thread26

bb.n:                                             ; preds = %rb_class_of.exit
  %i.az = tail call fastcc i64 @node_find(i64 noundef %i.an, i32 noundef %1) ; 2 uses
  %i.ba = and i64 %i.az, -5
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %.thread26, label %.loopexit

.thread26:                                        ; preds = %rb_class_of.exit, %bb.n
  %i.bb = add nuw nsw i64 %.019, 1
  br label %bb.f, !llvm.loop !209

.loopexit:                                        ; preds = %rb_array_len.exit.thread, %rb_array_len.exit, %bb.n, %rbimpl_check_typeddata.exit
  %.4 = phi i64 [ %0, %rbimpl_check_typeddata.exit ], [ 4, %rb_array_len.exit.thread ], [ 4, %rb_array_len.exit ], [ %i.az, %bb.n ]
  ret i64 %.4
}

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #1

declare i64 @rb_parser_compile_array(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @node_children(i64 noundef %0, ptr noundef %1) unnamed_addr #0 !guid !212 {
bb.a:
  %i.a = alloca [22 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i64, ptr %1, align 8, !tbaa !97
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 127                        ; 3 uses
  switch i32 %i.e, label %bb.ib [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.k
    i32 13, label %bb.l
    i32 14, label %bb.m
    i32 15, label %bb.n
    i32 46, label %bb.o
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 18, label %bb.r
    i32 19, label %bb.s
    i32 20, label %bb.t
    i32 21, label %bb.u
    i32 22, label %bb.v
    i32 23, label %bb.v
    i32 24, label %bb.ae
    i32 25, label %bb.al
    i32 26, label %bb.aq
    i32 28, label %bb.av
    i32 30, label %bb.ay
    i32 27, label %bb.bb
    i32 29, label %bb.be
    i32 31, label %bb.bl
    i32 32, label %bb.bs
    i32 33, label %bb.bx
    i32 34, label %bb.cc
    i32 35, label %bb.ch
    i32 36, label %bb.cm
    i32 37, label %bb.cr
    i32 40, label %bb.cw
    i32 38, label %bb.db
    i32 39, label %bb.de
    i32 41, label %bb.df
    i32 42, label %bb.dg
    i32 43, label %bb.dh
    i32 44, label %bb.di
    i32 45, label %bb.dj
    i32 47, label %bb.dk
    i32 48, label %bb.dl
    i32 49, label %bb.dm
    i32 51, label %bb.dn
    i32 52, label %bb.do
    i32 53, label %bb.dp
    i32 50, label %bb.dq
    i32 54, label %bb.dr
    i32 55, label %bb.ds
    i32 56, label %bb.dt
    i32 57, label %bb.du
    i32 58, label %bb.dx
    i32 63, label %bb.dy
    i32 65, label %bb.dy
    i32 59, label %bb.dz
    i32 60, label %bb.ea
    i32 61, label %bb.eb
    i32 62, label %bb.ec
    i32 68, label %bb.ed
    i32 70, label %bb.ee
    i32 64, label %bb.ef
    i32 66, label %bb.ef
    i32 69, label %bb.ef
    i32 102, label %bb.ef
    i32 101, label %bb.el
    i32 67, label %bb.em
    i32 76, label %bb.en
    i32 77, label %bb.eo
    i32 78, label %bb.ep
    i32 79, label %bb.eq
    i32 80, label %bb.er
    i32 81, label %bb.eu
    i32 82, label %bb.ez
    i32 83, label %bb.fa
    i32 84, label %bb.fb
    i32 85, label %bb.fc
    i32 86, label %bb.fd
    i32 87, label %bb.fe
    i32 88, label %bb.ff
    i32 89, label %bb.fi
    i32 90, label %bb.fj
    i32 91, label %bb.fj
    i32 92, label %bb.fj
    i32 93, label %bb.fj
    i32 94, label %bb.fk
    i32 95, label %bb.fl
    i32 96, label %bb.fm
    i32 97, label %bb.fn
    i32 98, label %bb.fo
    i32 99, label %bb.fp
    i32 100, label %bb.fq
    i32 103, label %bb.fr
    i32 104, label %bb.fw
    i32 73, label %bb.fx
    i32 74, label %bb.fy
    i32 75, label %bb.fz
    i32 71, label %bb.ge
    i32 0, label %bb.gu
    i32 105, label %bb.hd
    i32 107, label %bb.hk
    i32 106, label %bb.hp
    i32 109, label %bb.hx
    i32 110, label %bb.hy
    i32 111, label %bb.hz
    i32 108, label %bb.ia
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i64 @dump_block(i64 noundef %0, ptr noundef nonnull %1)
  br label %bb.ic

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.i = getelementptr i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215
  %i.k = getelementptr i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.m = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 3, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %bb.ic

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218
  %i.p = getelementptr i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !219
  %i.r = getelementptr i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !220
  %i.t = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 3, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s)
  br label %bb.ic

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !222
  %i.w = getelementptr i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !223
  %i.y = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.v, ptr noundef %i.x)
  br label %bb.ic

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !225
  %i.ab = getelementptr i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !226
  %i.ad = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.aa, ptr noundef %i.ac)
  br label %bb.ic

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !228
  %i.ag = getelementptr i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !229
  %i.ai = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.af, ptr noundef %i.ah)
  br label %bb.ic

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !231
  %i.al = getelementptr i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !232
  %i.an = getelementptr i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !233
  %i.ap = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 3, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.ao)
  br label %bb.ic

bb.i:                                             ; preds = %bb.a
  %i.aq = getelementptr i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !235
  %i.as = getelementptr i8, ptr %1, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !236
  %i.au = getelementptr i8, ptr %1, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !237
  %i.aw = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 3, ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av)
  br label %bb.ic

bb.j:                                             ; preds = %bb.a, %bb.a
  %i.ax = getelementptr i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !239
  %i.az = getelementptr i8, ptr %1, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !240
  %i.bb = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.ay, ptr noundef %i.ba)
  %i.bc = getelementptr i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !241
  %.not527 = icmp eq i64 %i.bd, 0
  %i.be = select i1 %.not527, i64 0, i64 20
  %i.bf = tail call i64 @rb_ary_push(i64 noundef %i.bb, i64 noundef %i.be) #10
  br label %bb.ic

end_hunk_0
begin_hunk_1_@node_children:bb.a

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %i.kb = phi i64 [ %i.ka, %bb.ck ], [ 4, %bb.cj ]
  %i.kc = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.ju, i64 noundef %i.jx, i64 noundef %i.kb) #10
  br label %bb.ic

bb.cm:                                            ; preds = %bb.a
  %i.kd = getelementptr i8, ptr %1, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !315 ; 2 uses
  %.not499 = icmp eq ptr %i.ke, null
  br i1 %.not499, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kf = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.ke)
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.kg = phi i64 [ %i.kf, %bb.cn ], [ 4, %bb.cm ]
  %i.kh = getelementptr i8, ptr %1, i64 40
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !316
  %i.kj = tail call i64 @rb_id2sym(i64 noundef %i.ki) #10
  %i.kk = getelementptr i8, ptr %1, i64 48
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !317 ; 2 uses
  %.not500 = icmp eq ptr %i.kl, null
  br i1 %.not500, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.km = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.kl)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.kn = phi i64 [ %i.km, %bb.cp ], [ 4, %bb.co ]
  %i.ko = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.kg, i64 noundef %i.kj, i64 noundef %i.kn) #10
  br label %bb.ic

bb.cr:                                            ; preds = %bb.a
  %i.kp = getelementptr i8, ptr %1, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !319 ; 2 uses
  %.not497 = icmp eq ptr %i.kq, null
  br i1 %.not497, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kr = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.kq)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.ks = phi i64 [ %i.kr, %bb.cs ], [ 4, %bb.cr ]
  %i.kt = getelementptr i8, ptr %1, i64 40
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !320
  %i.kv = tail call i64 @rb_id2sym(i64 noundef %i.ku) #10
  %i.kw = getelementptr i8, ptr %1, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !321 ; 2 uses
  %.not498 = icmp eq ptr %i.kx, null
  br i1 %.not498, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ky = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.kx)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.kz = phi i64 [ %i.ky, %bb.cu ], [ 4, %bb.ct ]
  %i.la = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.ks, i64 noundef %i.kv, i64 noundef %i.kz) #10
  br label %bb.ic

bb.cw:                                            ; preds = %bb.a
  %i.lb = getelementptr i8, ptr %1, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !323 ; 2 uses
  %.not495 = icmp eq ptr %i.lc, null
  br i1 %.not495, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ld = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.lc)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.le = phi i64 [ %i.ld, %bb.cx ], [ 4, %bb.cw ]
  %i.lf = getelementptr i8, ptr %1, i64 40
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !324
  %i.lh = tail call i64 @rb_id2sym(i64 noundef %i.lg) #10
  %i.li = getelementptr i8, ptr %1, i64 48
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !325 ; 2 uses
  %.not496 = icmp eq ptr %i.lj, null
  br i1 %.not496, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lk = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.lj)
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.ll = phi i64 [ %i.lk, %bb.cz ], [ 4, %bb.cy ]
  %i.lm = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.le, i64 noundef %i.lh, i64 noundef %i.ll) #10
  br label %bb.ic

bb.db:                                            ; preds = %bb.a
  %i.ln = getelementptr i8, ptr %1, i64 32
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !327
  %i.lp = tail call i64 @rb_id2sym(i64 noundef %i.lo) #10
  %i.lq = getelementptr i8, ptr %1, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !328 ; 2 uses
  %.not494 = icmp eq ptr %i.lr, null
  br i1 %.not494, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ls = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.lr)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %i.lt = phi i64 [ %i.ls, %bb.dc ], [ 4, %bb.db ]
  %i.lu = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.lp, i64 noundef %i.lt) #10
  br label %bb.ic

bb.de:                                            ; preds = %bb.a
  %i.lv = getelementptr i8, ptr %1, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !330
  %i.lx = tail call i64 @rb_id2sym(i64 noundef %i.lw) #10
  %i.ly = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.lx) #10
  br label %bb.ic

bb.df:                                            ; preds = %bb.a
  %i.lz = getelementptr i8, ptr %1, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !332
  %i.mb = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.ma)
  br label %bb.ic

bb.dg:                                            ; preds = %bb.a
  %i.mc = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.dh:                                            ; preds = %bb.a
  %i.md = tail call fastcc i64 @dump_array(i64 noundef %0, ptr noundef nonnull %1)
  br label %bb.ic

bb.di:                                            ; preds = %bb.a
  %i.me = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.dj:                                            ; preds = %bb.a
  %i.mf = getelementptr i8, ptr %1, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !334
  %i.mh = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.mg)
  br label %bb.ic

bb.dk:                                            ; preds = %bb.a
  %i.mi = getelementptr i8, ptr %1, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !336
  %i.mk = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.mj)
  br label %bb.ic

bb.dl:                                            ; preds = %bb.a
  %i.ml = getelementptr i8, ptr %1, i64 32
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !338
  %i.mn = tail call fastcc i64 @var_name(i64 noundef %i.mm)
  %i.mo = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mn) #10
  br label %bb.ic

bb.dm:                                            ; preds = %bb.a
  %i.mp = getelementptr i8, ptr %1, i64 32
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !340
  %i.mr = tail call fastcc i64 @var_name(i64 noundef %i.mq)
  %i.ms = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mr) #10
  br label %bb.ic

bb.dn:                                            ; preds = %bb.a
  %i.mt = getelementptr i8, ptr %1, i64 32
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !342
  %i.mv = tail call i64 @rb_id2sym(i64 noundef %i.mu) #10
  %i.mw = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mv) #10
  br label %bb.ic

bb.do:                                            ; preds = %bb.a
  %i.mx = getelementptr i8, ptr %1, i64 32
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !344
  %i.mz = tail call i64 @rb_id2sym(i64 noundef %i.my) #10
  %i.na = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mz) #10
  br label %bb.ic

bb.dp:                                            ; preds = %bb.a
  %i.nb = getelementptr i8, ptr %1, i64 32
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !346
  %i.nd = tail call i64 @rb_id2sym(i64 noundef %i.nc) #10
  %i.ne = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nd) #10
  br label %bb.ic

bb.dq:                                            ; preds = %bb.a
  %i.nf = getelementptr i8, ptr %1, i64 32
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !348
  %i.nh = tail call i64 @rb_id2sym(i64 noundef %i.ng) #10
  %i.ni = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nh) #10
  br label %bb.ic

bb.dr:                                            ; preds = %bb.a
  %i.nj = getelementptr i8, ptr %1, i64 32
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !350
  %i.nl = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 22, ptr noundef nonnull @.str.33, i64 noundef %i.nk) #10 ; 0 uses
  %i.nm = call i64 @rb_intern(ptr noundef nonnull %i.a) #10
  %i.nn = call i64 @rb_id2sym(i64 noundef %i.nm) #10
  %i.no = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nn) #10
  br label %bb.ic

bb.ds:                                            ; preds = %bb.a
  store i8 36, ptr %i.a, align 16, !tbaa !73
  %i.np = getelementptr i8, ptr %1, i64 32
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !352
  %2 = trunc i64 %i.nq to i8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %2, ptr %3, align 1, !tbaa !73
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.nr, align 2, !tbaa !73
  %i.ns = call i64 @rb_intern(ptr noundef nonnull %i.a) #10
  %i.nt = call i64 @rb_id2sym(i64 noundef %i.ns) #10
  %i.nu = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nt) #10
  br label %bb.ic

bb.dt:                                            ; preds = %bb.a
  %i.nv = tail call i64 @rb_node_regx_string_val(ptr noundef nonnull %1) #10
  %i.nw = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nv) #10
  br label %bb.ic

bb.du:                                            ; preds = %bb.a
  %i.nx = getelementptr i8, ptr %1, i64 48
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !354 ; 2 uses
  %.not493 = icmp eq ptr %i.ny, null
  %i.nz = getelementptr i8, ptr %1, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !355 ; 2 uses
  %i.ob = getelementptr i8, ptr %1, i64 40
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !356 ; 2 uses
  br i1 %.not493, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.od = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 3, ptr noundef %i.oa, ptr noundef %i.oc, ptr noundef nonnull %i.ny)
  br label %bb.ic

bb.dw:                                            ; preds = %bb.du
  %i.oe = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.oa, ptr noundef %i.oc)
  br label %bb.ic

bb.dx:                                            ; preds = %bb.a
  %i.of = getelementptr i8, ptr %1, i64 32
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !358
  %i.oh = getelementptr i8, ptr %1, i64 40
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !359
  %i.oj = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.og, ptr noundef %i.oi)
  br label %bb.ic

bb.dy:                                            ; preds = %bb.a, %bb.a
  %i.ok = tail call i64 @rb_node_str_string_val(ptr noundef nonnull %1) #10
  %i.ol = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.ok) #10
  br label %bb.ic

bb.dz:                                            ; preds = %bb.a
  %i.om = tail call i64 @rb_node_integer_literal_val(ptr noundef nonnull %1) #10
  %i.on = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.om) #10
  br label %bb.ic

bb.ea:                                            ; preds = %bb.a
  %i.oo = tail call i64 @rb_node_float_literal_val(ptr noundef nonnull %1) #10
  %i.op = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.oo) #10
  br label %bb.ic

bb.eb:                                            ; preds = %bb.a
  %i.oq = tail call i64 @rb_node_rational_literal_val(ptr noundef nonnull %1) #10
  %i.or = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.oq) #10
  br label %bb.ic

bb.ec:                                            ; preds = %bb.a
  %i.os = tail call i64 @rb_node_imaginary_literal_val(ptr noundef nonnull %1) #10
  %i.ot = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.os) #10
  br label %bb.ic

bb.ed:                                            ; preds = %bb.a
  %i.ou = tail call i64 @rb_node_regx_string_val(ptr noundef nonnull %1) #10
  %i.ov = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.ou) #10
  br label %bb.ic

bb.ee:                                            ; preds = %bb.a
  %i.ow = getelementptr i8, ptr %1, i64 32
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !361
  %i.oy = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.ox)
  br label %bb.ic

bb.ef:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.oz = getelementptr i8, ptr %1, i64 48
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !364 ; 3 uses
  %.not490 = icmp eq ptr %i.pa, null
  br i1 %.not490, label %bb.ek, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pb = getelementptr i8, ptr %i.pa, i64 32
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !120 ; 2 uses
  %.not491 = icmp eq ptr %i.pc, null
  br i1 %.not491, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pd = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.pc)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.pe = phi i64 [ %i.pd, %bb.eh ], [ 4, %bb.eg ] ; 2 uses
  %i.pf = getelementptr i8, ptr %i.pa, i64 48
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !121 ; 2 uses
  %.not492 = icmp eq ptr %i.pg, null
  br i1 %.not492, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ph = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.pg)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.ef
  %.0402 = phi i64 [ 4, %bb.ef ], [ %i.pe, %bb.ei ], [ %i.pe, %bb.ej ]
  %.0401 = phi i64 [ 4, %bb.ef ], [ 4, %bb.ei ], [ %i.ph, %bb.ej ]
  %i.pi = tail call i64 @rb_node_dstr_string_val(ptr noundef nonnull %1) #10
  %i.pj = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.pi, i64 noundef %.0402, i64 noundef %.0401) #10
  br label %bb.ic

bb.el:                                            ; preds = %bb.a
  %i.pk = tail call i64 @rb_node_sym_string_val(ptr noundef nonnull %1) #10
  %i.pl = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.pk) #10
  br label %bb.ic

bb.em:                                            ; preds = %bb.a
  %i.pm = getelementptr i8, ptr %1, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !366
  %i.po = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.pn)
  br label %bb.ic

bb.en:                                            ; preds = %bb.a
  %i.pp = getelementptr i8, ptr %1, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !368
  %i.pr = getelementptr i8, ptr %1, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !369
  %i.pt = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.pq, ptr noundef %i.ps)
  br label %bb.ic

bb.eo:                                            ; preds = %bb.a
  %i.pu = getelementptr i8, ptr %1, i64 32
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !371
  %i.pw = getelementptr i8, ptr %1, i64 40
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !372
  %i.py = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.pv, ptr noundef %i.px)
  br label %bb.ic

bb.ep:                                            ; preds = %bb.a
  %i.pz = getelementptr i8, ptr %1, i64 32
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !374
  %i.qb = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.qa)
  br label %bb.ic

bb.eq:                                            ; preds = %bb.a
  %i.qc = getelementptr i8, ptr %1, i64 32
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !376
  %i.qe = getelementptr i8, ptr %1, i64 40
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !377
  %i.qg = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.qd, ptr noundef %i.qf)
  br label %bb.ic

bb.er:                                            ; preds = %bb.a
  %i.qh = getelementptr i8, ptr %1, i64 32
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !379
  %i.qj = tail call i64 @rb_id2sym(i64 noundef %i.qi) #10
  %i.qk = getelementptr i8, ptr %1, i64 40
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !380 ; 2 uses
  %.not489 = icmp eq ptr %i.ql, null
  br i1 %.not489, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qm = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.ql)
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es
  %i.qn = phi i64 [ %i.qm, %bb.es ], [ 4, %bb.er ]
  %i.qo = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.qj, i64 noundef %i.qn) #10
  br label %bb.ic

bb.eu:                                            ; preds = %bb.a
  %i.qp = getelementptr i8, ptr %1, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !382 ; 2 uses
  %.not487 = icmp eq ptr %i.qq, null
  br i1 %.not487, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qr = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.qq)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.qs = phi i64 [ %i.qr, %bb.ev ], [ 4, %bb.eu ]
  %i.qt = getelementptr i8, ptr %1, i64 40
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !383
  %i.qv = tail call i64 @rb_id2sym(i64 noundef %i.qu) #10
  %i.qw = getelementptr i8, ptr %1, i64 48
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !384 ; 2 uses
  %.not488 = icmp eq ptr %i.qx, null
  br i1 %.not488, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.qy = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.qx)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %i.qz = phi i64 [ %i.qy, %bb.ex ], [ 4, %bb.ew ]
  %i.ra = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.qs, i64 noundef %i.qv, i64 noundef %i.qz) #10
  br label %bb.ic

bb.ez:                                            ; preds = %bb.a
  %i.rb = getelementptr i8, ptr %1, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !386
  %i.rd = getelementptr i8, ptr %1, i64 40
end_hunk_1
