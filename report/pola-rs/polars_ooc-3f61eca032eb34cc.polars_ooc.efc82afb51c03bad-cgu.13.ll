Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.13?download=true
inline.NumInlined: 1035
inline.NumDeleted: 636
begin_hunk_0_@_RINvNtCsh8eZTKRCwoO_3std2io18default_read_exactNtNtB4_2fs4FileECskAlUH1kY1DR_10polars_ooc:bb.a
bb.h:                                             ; preds = %bb.f, %.thread
  %.sroa.0.122 = phi ptr [ %.sroa.0.048, %.thread ], [ %i.k, %bb.f ]
  %.sroa.7.120 = phi i64 [ %.sroa.7.047, %.thread ], [ %i.j, %bb.f ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.7.120, 0, !dbg !3828
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !3828
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtB2_6cursor6CursorRShEEECskAlUH1kY1DR_10polars_ooc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3849 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4100 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !4100, !noundef !470 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !4101
  tail call void @llvm.assume(i1 %i.e), !dbg !4102
  %i.f = load i64, ptr %1, align 8, !dbg !4103, !range !506, !noundef !470 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !4104       ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !4104

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !4105
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit, !dbg !4106, !prof !564

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !4105         ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !4107           ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !4108
  %i.l = sub i64 %3, %i.j, !dbg !4108
  %i.m = add i64 %i.l, 9216, !dbg !4108           ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !4108
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !4109
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !4108 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4110

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ 8192, %bb.a ], !dbg !4111 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !4112    ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !4113
  %i.p = icmp ult i64 %i.o, 32, !dbg !4113
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4113

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ %i.d, %bb.b ], !dbg !4114
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ 8192, %bb.b ], !dbg !4115
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ false, %bb.b ], !dbg !4116
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !4117

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !4044 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !4044
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !4044 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !4118
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !4118

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !4119
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge, !dbg !4119

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !4114
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4119

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %i.cb, %bb.aa ], !dbg !4114 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %i.by, %bb.aa ], !dbg !4120
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !4121 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !4122
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !4123
  call void @llvm.assume(i1 %i.ae), !dbg !4124
  %i.af = load i64, ptr %1, align 8, !dbg !4125, !range !506, !noundef !470 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !4126
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !4126
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !4126

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !4127 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !4128 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !4129
  call void @llvm.assume(i1 %i.ak), !dbg !4130
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !4131
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !4131

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !4056 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !4056
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !4056 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !4132
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !4132

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !4056
  br label %.loopexit, !dbg !4133

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !4134
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !4128 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !4134

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !4127, !range !506
  br label %bb.g, !dbg !4134

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !4135
  call void @llvm.assume(i1 %i.as), !dbg !4136
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !4137
  br label %.loopexit, !dbg !4138

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !4139
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !4139
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !4140
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !4141

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !4142
  %.pre130 = load i64, ptr %1, align 8, !dbg !4143, !range !506
  br label %bb.m, !dbg !4141

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !4143
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !4142 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !4144, !nonnull !470, !noundef !470
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !4145
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !4146
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !4147 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4148
  store ptr %i.az, ptr %i.b, align 8, !dbg !4149
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !4149
  store i64 0, ptr %i.s, align 8, !dbg !4149
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !4150
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !4077 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !4151
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !4151

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !4152
  call void @llvm.assume(i1 %i.bc), !dbg !4153
  store i64 %i.ax, ptr %i.c, align 8, !dbg !4154
  br label %.loopexit149, !dbg !4155

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !470, !align !542 ; 2 uses
  br label %bb.n, !dbg !4151

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4077), !dbg !4156
  call void @llvm.experimental.noalias.scope.decl(metadata !4080), !dbg !4156
  %i.be = load i64, ptr %i.r, align 8, !dbg !4157, !alias.scope !4080, !noundef !470
  %i.bf = load i64, ptr %i.s, align 8, !dbg !4158, !alias.scope !4080, !noundef !470 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !4159
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !4160
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !4160

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !4161, !noalias !4077
  %i.bj = load i64, ptr %i.s, align 8, !dbg !4162, !alias.scope !4080, !noundef !470 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !4163
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !4164
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit, !dbg !4165

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !4166, !alias.scope !4080, !noundef !470 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !4167
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !4168
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !4169, !alias.scope !4080, !nonnull !470, !noundef !470
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !4170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4171, !noalias !4083
  store ptr %i.bo, ptr %i.a, align 8, !dbg !4172, !noalias !4083
  store i64 %i.bd, ptr %i.v, align 8, !dbg !4172, !noalias !4083
  store i64 0, ptr %i.w, align 8, !dbg !4172, !noalias !4083
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !4173, !noalias !4083
  %i.bp = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRShENtB7_4Read8read_bufCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !4174, !noalias !4083
  %i.bq = load i64, ptr %i.w, align 8, !dbg !4175, !noalias !4083, !noundef !470 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !4176, !noalias !4083, !noundef !470
  %i.bs = add i64 %i.bq, %i.bf, !dbg !4177        ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !4177, !alias.scope !4080
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !4178
  %i.bt = add i64 %i.br, %i.bf, !dbg !4179
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i6.i), !dbg !4180
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !4181, !alias.scope !4080
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !4182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4183, !noalias !4083
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit, !dbg !4165

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !4184 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !4184 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !4184, !alias.scope !4077
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !4185 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, label %bb.q, !dbg !4186

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !4187 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !4188
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !4189, !prof !559

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !4190
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4191

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit ], !dbg !4191 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !4192 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !4193 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !4194
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !4195
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !4152
  call void @llvm.assume(i1 %i.ca), !dbg !4153
  %i.cb = add i64 %.pre133, %.pre131, !dbg !4196  ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !4154
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !4197

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !4198
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !4198
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4199

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !4200
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !4200, !range !577, !noundef !470
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !4201
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4199

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !4202 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !4203
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !4203, !range !577, !noundef !470
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !4204
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4199

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !4205
  call void @llvm.assume(i1 %i.ck), !dbg !4206
  %.mask = and i64 %i.bv, -4294967296, !dbg !4207
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !4207
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4199

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !4208 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !4208
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !4208, !nonnull !470, !align !542, !noundef !470 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !4209, !invariant.load !470 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !4209
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !4209

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !4209

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !4210
  %i.cp = load i64, ptr %i.co, align 8, !dbg !4210, !range !506, !invariant.load !470 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !4211
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, label %bb.v, !dbg !4211

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !4210
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !4212, !range !507, !invariant.load !470
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #18, !dbg !4213
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, !dbg !4214

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !4215
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !4215, !range !506, !invariant.load !470 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !4216
  br i1 %i.cw, label %.body, label %bb.x, !dbg !4216

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !4215
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !4217, !range !507, !invariant.load !470
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #18, !dbg !4218
  br label %.body, !dbg !4219

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #18, !dbg !4220
  resume { ptr, i32 } %i.ct, !dbg !4221

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #18, !dbg !4222
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, !dbg !4223

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !4151
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !4151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !4191
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4151

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !4155
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !4155

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !4224
  br label %.loopexit148, !dbg !4225

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !4226
  %i.de = add i32 %.sroa.019.0, 1, !dbg !4226
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !4226 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !4227

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread ], !dbg !4228
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQINtNtB5_6cursor6CursorRShEENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread ], !dbg !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4229
  br label %.loopexit, !dbg !4133

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !4121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4229
  br label %bb.f, !dbg !4117

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !4230
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !4230 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !4231
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !4231
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !4231

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !4232
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !4232
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !4233, !prof !564

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !4234

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !4235
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !4235
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !4236
  br label %bb.ae, !dbg !4237

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !4122
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !4122
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !4236
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !4236
  ret { i64, ptr } %i.dm, !dbg !4236
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQNtNtB4_2fs4FileEECskAlUH1kY1DR_10polars_ooc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4238 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4489 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !4489, !noundef !470 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !4490
  tail call void @llvm.assume(i1 %i.e), !dbg !4491
  %i.f = load i64, ptr %1, align 8, !dbg !4492, !range !506, !noundef !470 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !4493       ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !4493

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !4494
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit, !dbg !4495, !prof !564

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !4494         ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !4496           ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !4497
  %i.l = sub i64 %3, %i.j, !dbg !4497
  %i.m = add i64 %i.l, 9216, !dbg !4497           ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i, !dbg !4497
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m, !dbg !4498
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !4497 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4499

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ 8192, %bb.a ], !dbg !4500 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !4501    ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !4502
  %i.p = icmp ult i64 %i.o, 32, !dbg !4502
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4502

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ %i.d, %bb.b ], !dbg !4503
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ 8192, %bb.b ], !dbg !4504
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit ], [ false, %bb.b ], !dbg !4505
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !4506

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQNtNtB6_2fs4FileEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !4433 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !4433
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !4433 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !4507
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !4507

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !4508
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge, !dbg !4508

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !4503
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4508

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %i.cb, %bb.aa ], !dbg !4503 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %i.by, %bb.aa ], !dbg !4509
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !4510 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0CskAlUH1kY1DR_10polars_ooc.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !4511
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !4512
  call void @llvm.assume(i1 %i.ae), !dbg !4513
  %i.af = load i64, ptr %1, align 8, !dbg !4514, !range !506, !noundef !470 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !4515
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !4515
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !4515

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre127, %._crit_edge ], [ %i.af, %bb.f ], !dbg !4516 ; 3 uses
  %i.aj = phi i64 [ %.pre126, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !4517 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !4518
  call void @llvm.assume(i1 %i.ak), !dbg !4519
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !4520
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !4520

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQNtNtB6_2fs4FileEECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !4445 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !4445
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !4445 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !4521
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !4521

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !4445
  br label %.loopexit, !dbg !4522

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !4523
  %.pre126 = load i64, ptr %i.c, align 8, !dbg !4517 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !4523

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !dbg !4516, !range !506
  br label %bb.g, !dbg !4523

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre126, -1, !dbg !4524
  call void @llvm.assume(i1 %i.as), !dbg !4525
  %i.at = sub nsw i64 %.pre126, %i.d, !dbg !4526
  br label %.loopexit, !dbg !4527

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !4528
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !4528
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !4529
  br i1 %.not, label %._crit_edge128, label %.loopexit, !dbg !4530

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !4531
  %.pre130 = load i64, ptr %1, align 8, !dbg !4532, !range !506
  br label %bb.m, !dbg !4530

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.aw = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ai, %bb.g ], !dbg !4532
  %i.ax = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.aj, %bb.g ], !dbg !4531 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !4533, !nonnull !470, !noundef !470
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !4534
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !4535
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !4536 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4537
  store ptr %i.az, ptr %i.b, align 8, !dbg !4538
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !4538
  store i64 0, ptr %i.s, align 8, !dbg !4538
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !4539
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !4466 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !4540
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !4540

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !4541
  call void @llvm.assume(i1 %i.bc), !dbg !4542
  store i64 %i.ax, ptr %i.c, align 8, !dbg !4543
  br label %.loopexit149, !dbg !4544

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !470, !align !615 ; 2 uses
  br label %bb.n, !dbg !4540

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4466), !dbg !4545
  call void @llvm.experimental.noalias.scope.decl(metadata !4469), !dbg !4545
  %i.be = load i64, ptr %i.r, align 8, !dbg !4546, !alias.scope !4469, !noundef !470
  %i.bf = load i64, ptr %i.s, align 8, !dbg !4547, !alias.scope !4469, !noundef !470 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !4548
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !4549
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !4549

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef ptr @_RNvXsa_NtCsh8eZTKRCwoO_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !4550, !noalias !4466
  %i.bj = load i64, ptr %i.s, align 8, !dbg !4551, !alias.scope !4469, !noundef !470 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !4552
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !4553
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit, !dbg !4554

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !4555, !alias.scope !4469, !noundef !470 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !4556
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !4557
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !4558, !alias.scope !4469, !nonnull !470, !noundef !470
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !4559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4560, !noalias !4472
  store ptr %i.bo, ptr %i.a, align 8, !dbg !4561, !noalias !4472
  store i64 %i.bd, ptr %i.v, align 8, !dbg !4561, !noalias !4472
  store i64 0, ptr %i.w, align 8, !dbg !4561, !noalias !4472
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !4562, !noalias !4472
  %i.bp = call noundef ptr @_RNvXsa_NtCsh8eZTKRCwoO_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !4563, !noalias !4472
  %i.bq = load i64, ptr %i.w, align 8, !dbg !4564, !noalias !4472, !noundef !470 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !4565, !noalias !4472, !noundef !470
  %i.bs = add i64 %i.bq, %i.bf, !dbg !4566        ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !4566, !alias.scope !4469
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !4567
  %i.bt = add i64 %i.br, %i.bf, !dbg !4568
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i6.i), !dbg !4569
  store i64 %.sroa.0.0.i7.i, ptr %i.t, align 8, !dbg !4570, !alias.scope !4469
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !4571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4572, !noalias !4472
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit, !dbg !4554

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.o, %bb.p
  %.pre131136 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !4573 ; 3 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !4573 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !4573, !alias.scope !4466
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null, !dbg !4574 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, label %bb.q, !dbg !4575

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !4576 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !4577
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split100
    i64 1, label %.split99
  ], !dbg !4578, !prof !559

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit, %bb.r, %.split, %.split99, %.split100
  %i.bx = ptrtoint ptr %.sroa.0.0.i65 to i64, !dbg !4579
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4580

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit
  %.pre131 = phi i64 [ %.pre131.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge ], [ %.pre131136, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit ], !dbg !4580 ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit ]
  %.pre132 = load i64, ptr %i.t, align 8, !dbg !4581 ; 2 uses
  %.pre133 = load i64, ptr %i.c, align 8, !dbg !4582 ; 2 uses
  %i.by = sub nuw i64 %.pre132, %.pre131, !dbg !4583
  %i.bz = icmp ne i64 %.pre132, %.sroa.0.0.i, !dbg !4584
  %i.ca = icmp sgt i64 %.pre133, -1, !dbg !4541
  call void @llvm.assume(i1 %i.ca), !dbg !4542
  %i.cb = add i64 %.pre133, %.pre131, !dbg !4585  ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !4543
  br i1 %.not6081.ph, label %bb.y, label %.loopexit148, !dbg !4586

.split:                                           ; preds = %bb.q
  %.mask103 = and i64 %i.bv, -4294967296, !dbg !4587
  %i.cc = icmp eq i64 %.mask103, 17179869184, !dbg !4587
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4588

.split100:                                        ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16, !dbg !4589
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !4589, !range !577, !noundef !470
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !4590
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4588

.split99:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1, !dbg !4591 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i65, i64 15, !dbg !4592
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !4592, !range !577, !noundef !470
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !4593
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4588

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr), !dbg !4594
  call void @llvm.assume(i1 %i.ck), !dbg !4595
  %.mask = and i64 %i.bv, -4294967296, !dbg !4596
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !4596
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexitsplit, !dbg !4588

bb.s:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !4597 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i65, i64 7, !dbg !4597
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !4597, !nonnull !470, !align !542, !noundef !470 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !4598, !invariant.load !470 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !4598
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !4598

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !4598

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !4599
  %i.cp = load i64, ptr %i.co, align 8, !dbg !4599, !range !506, !invariant.load !470 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !4600
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, label %bb.v, !dbg !4600

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !4599
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !4601, !range !507, !invariant.load !470
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #18, !dbg !4602
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, !dbg !4603

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !4604
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !4604, !range !506, !invariant.load !470 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !4605
  br i1 %i.cw, label %.body, label %bb.x, !dbg !4605

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !4604
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !4606, !range !507, !invariant.load !470
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #18, !dbg !4607
  br label %.body, !dbg !4608

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #18, !dbg !4609
  resume { ptr, i32 } %i.ct, !dbg !4610

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #18, !dbg !4611
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit, !dbg !4612

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.r, %.split, %.split100, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !4540
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !4540

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskAlUH1kY1DR_10polars_ooc.exit
  %.pre131.pre = load i64, ptr %i.s, align 8, !dbg !4580
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread, !dbg !4540

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread
  %i.da = icmp eq i64 %.pre131, 0, !dbg !4544
  br i1 %i.da, label %.loopexit149, label %bb.z, !dbg !4544

.loopexit149:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !4613
  br label %.loopexit148, !dbg !4614

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre131, %.sroa.0.0.i, !dbg !4615
  %i.de = add i32 %.sroa.019.0, 1, !dbg !4615
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !4615 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !4616

.loopexit148:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread, %.loopexit149
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit149 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread ], !dbg !4617
  %.sroa.010.0 = phi i64 [ 0, %.loopexit149 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCskAlUH1kY1DR_10polars_ooc.exit.thread ], !dbg !4617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4618
  br label %.loopexit, !dbg !4522

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !4510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4618
  br label %bb.f, !dbg !4506

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !4619
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !4619 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !4620
  %i.dh = icmp eq i64 %.pre131, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !4620
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !4620

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !4621
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !4621
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !4622, !prof !564

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !4623

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit148
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit148 ], [ 163208757251, %bb.l ], !dbg !4624
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit148 ], [ 1, %bb.l ], !dbg !4624
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !4625
  br label %bb.ae, !dbg !4626

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !4511
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !4511
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !4625
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !4625
  ret { i64, ptr } %i.dm, !dbg !4625
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native5eager7destroyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextECskAlUH1kY1DR_10polars_ooc(ptr noundef initializes((72, 73)) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !4627 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4706
  store i8 2, ptr %i.a, align 1, !dbg !4707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4692), !dbg !4708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4693), !dbg !4709
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4694), !dbg !4710
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4695), !dbg !4711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4696), !dbg !4712
  %i.c = load i64, ptr %i.b, align 8, !dbg !4713, !range !4697, !alias.scope !4698, !noundef !470 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2, !dbg !4713
  br i1 %i.d, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE0ECskAlUH1kY1DR_10polars_ooc.exit, label %bb.b, !dbg !4713

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4699), !dbg !4713
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4714 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0, !dbg !4714
  br i1 %i.f, label %bb.c, label %bb.e, !dbg !4714

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4700), !dbg !4714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4701), !dbg !4715
  %i.g = load ptr, ptr %i.e, align 8, !dbg !4716, !alias.scope !4702, !nonnull !470, !noundef !470
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !4717, !noalias !4702
  %i.i = icmp eq i64 %i.h, 1, !dbg !4718
  br i1 %i.i, label %bb.d, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE0ECskAlUH1kY1DR_10polars_ooc.exit, !dbg !4718

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !4719
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE0ECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.g, !dbg !4720

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4703), !dbg !4714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4704), !dbg !4721
  %i.j = load ptr, ptr %i.e, align 8, !dbg !4722, !alias.scope !4705, !nonnull !470, !noundef !470
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !dbg !4723, !noalias !4705
  %i.l = icmp eq i64 %i.k, 1, !dbg !4724
  br i1 %i.l, label %bb.f, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE0ECskAlUH1kY1DR_10polars_ooc.exit, !dbg !4724

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !4725
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #20
end_hunk_0
