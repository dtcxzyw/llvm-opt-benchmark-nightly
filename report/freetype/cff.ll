Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_make_private_dict:bb.a
middle.block157:                                  ; preds = %vector.body152
  %cmp.n158 = icmp eq i64 %n.vec151, %wide.trip.count111
  br i1 %cmp.n158, label %._crit_edge83, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %.lr.ph82, %middle.block157
  %indvars.iv108.ph = phi i64 [ 0, %.lr.ph82 ], [ %n.vec151, %middle.block157 ]
  br label %scalar.ph148

scalar.ph148:                                     ; preds = %scalar.ph148.preheader, %scalar.ph148
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %scalar.ph148 ], [ %indvars.iv108.ph, %scalar.ph148.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv108
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !116
  %i.cg = add nsw i64 %i.cf, 32768
  %i.ch = lshr i64 %i.cg, 16
  %i.ci = trunc i64 %i.ch to i16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv108
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !66
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge83, label %scalar.ph148, !llvm.loop !545

._crit_edge83:                                    ; preds = %scalar.ph148, %middle.block157, %._crit_edge79
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !237
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !558
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cp = load <2 x i64>, ptr %i.cn, align 8, !tbaa !116
  %i.cq = trunc <2 x i64> %i.cp to <2 x i32>
  store <2 x i32> %i.cq, ptr %i.co, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !559
  %i.ct = trunc i64 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i16 %i.ct, ptr %i.cu, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !560
  %i.cx = trunc i64 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 130
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !561 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i8 %i.da, ptr %i.db, align 4, !tbaa !562
  %.not95 = icmp eq i8 %i.da, 0
  br i1 %.not95, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %._crit_edge83
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %wide.trip.count116 = zext i8 %i.da to i64      ; 3 uses
  %min.iters.check161 = icmp ult i8 %i.da, 4
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph86
  %n.vec163 = and i64 %wide.trip.count116, 252    ; 3 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body164 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index165 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load166 = load <2 x i64>, ptr %i.de, align 8, !tbaa !116
  %wide.load167 = load <2 x i64>, ptr %i.df, align 8, !tbaa !116
  %i.dg = trunc <2 x i64> %wide.load166 to <2 x i16>
  %i.dh = trunc <2 x i64> %wide.load167 to <2 x i16>
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %index165 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store <2 x i16> %i.dg, ptr %i.di, align 2, !tbaa !66
  store <2 x i16> %i.dh, ptr %i.dj, align 2, !tbaa !66
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.dk, label %middle.block169, label %vector.body164, !llvm.loop !546

middle.block169:                                  ; preds = %vector.body164
  %cmp.n170 = icmp eq i64 %n.vec163, %wide.trip.count116
  br i1 %cmp.n170, label %._crit_edge87, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %.lr.ph86, %middle.block169
  %indvars.iv113.ph = phi i64 [ 0, %.lr.ph86 ], [ %n.vec163, %middle.block169 ]
  br label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %scalar.ph160 ], [ %indvars.iv113.ph, %scalar.ph160.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv113
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !116
  %i.dn = trunc i64 %i.dm to i16
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %indvars.iv113
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !66
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge87, label %scalar.ph160, !llvm.loop !547

._crit_edge87:                                    ; preds = %scalar.ph160, %middle.block169, %._crit_edge83
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 753
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !563 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 133
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !564
  %.not96 = icmp eq i8 %i.dq, 0
  br i1 %.not96, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %._crit_edge87
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 162 ; 2 uses
  %wide.trip.count121 = zext i8 %i.dq to i64      ; 3 uses
  %min.iters.check173 = icmp ult i8 %i.dq, 4
  br i1 %min.iters.check173, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph90
  %n.vec175 = and i64 %wide.trip.count121, 252    ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next180, %vector.body176 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index177 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load178 = load <2 x i64>, ptr %i.du, align 8, !tbaa !116
  %wide.load179 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !116
  %i.dw = trunc <2 x i64> %wide.load178 to <2 x i16>
  %i.dx = trunc <2 x i64> %wide.load179 to <2 x i16>
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %index177 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store <2 x i16> %i.dw, ptr %i.dy, align 2, !tbaa !66
  store <2 x i16> %i.dx, ptr %i.dz, align 2, !tbaa !66
  %index.next180 = add nuw i64 %index177, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.ea, label %middle.block181, label %vector.body176, !llvm.loop !548

middle.block181:                                  ; preds = %vector.body176
  %cmp.n182 = icmp eq i64 %n.vec175, %wide.trip.count121
  br i1 %cmp.n182, label %._crit_edge91, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %.lr.ph90, %middle.block181
  %indvars.iv118.ph = phi i64 [ 0, %.lr.ph90 ], [ %n.vec175, %middle.block181 ]
  br label %scalar.ph172

scalar.ph172:                                     ; preds = %scalar.ph172.preheader, %scalar.ph172
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %scalar.ph172 ], [ %indvars.iv118.ph, %scalar.ph172.preheader ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv118
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !116
  %i.ed = trunc i64 %i.ec to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv118
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !66
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge91, label %scalar.ph172, !llvm.loop !549

._crit_edge91:                                    ; preds = %scalar.ph172, %middle.block181, %._crit_edge87
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !565
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 134
  store i8 %i.eg, ptr %i.eh, align 2, !tbaa !566
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !567
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !568
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.en = load i32, ptr %i.em, align 8, !tbaa !236
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !569
  ret void
}

declare hidden void @FT_Select_Metrics(ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden i32 @FT_Request_Metrics(ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_font_load(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef initializes((0, 5048)) %3, ptr nofree noundef readonly captures(none) %4, i8 noundef zeroext range(i8 0, 2) %5, i8 noundef zeroext range(i8 0, 2) %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 39 uses
  %7 = alloca %struct.CFF_IndexRec_, align 8      ; 9 uses
  %8 = alloca %struct.CFF_IndexRec_, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5048) %3, i8 0, i64 5048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1640
  %i.e = tail call i64 @FT_Stream_Pos(ptr noundef %1) #18 ; 10 uses
  store ptr %0, ptr %3, align 8, !tbaa !163
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.g, align 8, !tbaa !138
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 %6, ptr %i.h, align 8, !tbaa !241
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.e, ptr %i.i, align 8, !tbaa !253
  %i.j = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @cff_font_load.cff_header_fields, ptr noundef nonnull %3) #18 ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !67
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not168 = icmp eq i8 %6, 0                     ; 5 uses
  br i1 %.not168, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !228
  %.not171 = icmp eq i8 %i.l, 2
  br i1 %.not171, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 42 ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !573
  %i.o = icmp ult i8 %i.n, 5
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  store i32 2, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.p = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.q, ptr %i.r, align 4, !tbaa !574
  %i.s = load i32, ptr %i.a, align 4, !tbaa !67
  %.not172 = icmp eq i32 %i.s, 0
  br i1 %.not172, label %._crit_edge220, label %.thread

._crit_edge220:                                   ; preds = %bb.f
  %.pre = load i8, ptr %i.m, align 2, !tbaa !573
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.t = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.u = load i32, ptr %i.a, align 4, !tbaa !67
  %.not169 = icmp eq i32 %i.u, 0
  br i1 %.not169, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !228
  %.not170 = icmp eq i8 %i.w, 1
  br i1 %.not170, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 42
  %i.y = load i8, ptr %i.x, align 2, !tbaa !573   ; 2 uses
  %i.z = icmp ult i8 %i.y, 4
  %i.aa = icmp ugt i8 %i.t, 4
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  store i32 2, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.k:                                             ; preds = %._crit_edge220, %bb.i
  %i.ab = phi i8 [ %.pre, %._crit_edge220 ], [ %i.y, %bb.i ]
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.e, %i.ac
  %i.ae = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.ad) #18 ; 2 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !67
  %.not173 = icmp eq i32 %i.ae, 0
  br i1 %.not173, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not198 = icmp eq i8 %5, 0
  br i1 %.not198, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.n:                                             ; preds = %bb.k
  br i1 %.not168, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 1400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false)
  %i.ag = call i64 @FT_Stream_Pos(ptr noundef nonnull %1) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 1432
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !575
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !574
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1440
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !576
  %i.am = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ak) #18 ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !67
  %.not181 = icmp eq i32 %i.am, 0
  br i1 %.not181, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ao = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.an, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !67
  %.not182 = icmp eq i32 %i.ao, 0
  br i1 %.not182, label %bb.ac, label %.thread

bb.q:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aq = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.ap, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !67
  %.not174 = icmp eq i32 %i.aq, 0
  br i1 %.not174, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not180 = icmp eq i8 %5, 0
  br i1 %.not180, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.t:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !577 ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.av = load i64, ptr %i.au, align 8, !tbaa !578
  %i.aw = zext i32 %i.as to i64
  %i.ax = icmp ult i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not179 = icmp eq i8 %5, 0
  %i.ay = select i1 %.not179, i32 3, i32 2
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %i.ba = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.az, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !67
  %.not175 = icmp eq i32 %i.ba, 0
  br i1 %.not175, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.bb = call fastcc i32 @cff_index_init(ptr noundef nonnull %7, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !67
  %.not176 = icmp eq i32 %i.bb, 0
  br i1 %.not176, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.bd = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.bc, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !67
  %.not177 = icmp eq i32 %i.bd, 0
  br i1 %.not177, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1616
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1624
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 1632
  %i.bh = call fastcc i32 @cff_index_get_pointers(ptr noundef nonnull %7, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) ; 2 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !67
  %.not178 = icmp eq i32 %i.bh, 0
  br i1 %.not178, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.bi = load i32, ptr %i.ar, align 4, !tbaa !577
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 1420
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !579
  %i.bl = icmp ugt i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.ac:                                            ; preds = %bb.aa, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !285
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 1608
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !125
  %.not183 = icmp ne i8 %5, 0                     ; 2 uses
  br i1 %.not183, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bp = and i32 %2, 65535                       ; 2 uses
  %i.bq = icmp slt i32 %2, 1
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !577 ; 2 uses
  %.not184 = icmp ult i32 %i.bp, %i.bs
  %or.cond231 = select i1 %i.bq, i1 true, i1 %.not184
  br i1 %or.cond231, label %._crit_edge221, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 6, ptr %i.a, align 4, !tbaa !67
  br label %.thread

._crit_edge221:                                   ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !107
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !577
  %i.bw = icmp ugt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 3, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.ah:                                            ; preds = %bb.af, %._crit_edge221
  %.0160 = phi i32 [ %i.bp, %._crit_edge221 ], [ 0, %bb.af ] ; 2 uses
  %i.bx = icmp slt i32 %2, 0
  br i1 %i.bx, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %.not168.not = icmp ne i8 %6, 0                 ; 3 uses
  %i.bz = select i1 %.not168.not, i32 12288, i32 4096
  %i.ca = call fastcc i32 @cff_subfont_load(ptr noundef nonnull %i.d, ptr noundef nonnull %i.by, i32 noundef %.0160, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.bz, ptr noundef nonnull %3, ptr noundef %4) ; 2 uses
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !67
  %.not185 = icmp eq i32 %i.ca, 0
  br i1 %.not185, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 1824 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !580
  %i.cd = add i64 %i.cc, %i.e
  %i.ce = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.cd) #18 ; 2 uses
  store i32 %i.ce, ptr %i.a, align 4, !tbaa !67
  %.not186 = icmp eq i32 %i.ce, 0
  br i1 %.not186, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 1336
  %i.cg = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.cf, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %6) ; 2 uses
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !67
  %.not187 = icmp eq i32 %i.cg, 0
  br i1 %.not187, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 1860 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !110
  %9 = icmp ne i32 %i.ci, 65535
  %or.cond5 = or i1 %.not168.not, %9
  br i1 %or.cond5, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 5008
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 1944
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !581
  %i.cm = call fastcc i32 @cff_vstore_load(ptr noundef nonnull %i.cj, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.cl) ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !67
  %.not188 = icmp eq i32 %i.cm, 0
  br i1 %.not188, label %bb.an, label %.thread203

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 1920
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !582
  %i.cp = add i64 %i.co, %i.e
  %i.cq = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.cp) #18 ; 2 uses
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !67
  %.not189 = icmp eq i32 %i.cq, 0
  br i1 %.not189, label %bb.ao, label %.thread203

bb.ao:                                            ; preds = %bb.an
  %i.cr = call fastcc i32 @cff_index_init(ptr noundef nonnull %8, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %6) ; 2 uses
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !67
  %.not190 = icmp eq i32 %i.cr, 0
  br i1 %.not190, label %bb.ap, label %.thread203

bb.ap:                                            ; preds = %bb.ao
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !285 ; 3 uses
  %i.cu = icmp ugt i32 %i.ct, 256
  br i1 %i.cu, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 2856
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !120
  %i.cw = zext nneg i32 %i.ct to i64
  %i.cx = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 1216, i64 noundef 0, i64 noundef %i.cw, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !67
  %.not191 = icmp eq i32 %i.cy, 0
  br i1 %.not191, label %.preheader208, label %.loopexit

.preheader208:                                    ; preds = %bb.aq
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !285 ; 3 uses
  %.not213 = icmp eq i32 %i.cz, 0
  br i1 %.not213, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %.preheader208
  br i1 %.not168, label %bb.at, label %.loopexit

.lr.ph:                                           ; preds = %.preheader208
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 2864 ; 2 uses
  %wide.trip.count = zext i32 %i.cz to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.cz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [1216 x i8], ptr %i.cx, <2 x i64> %vec.ind
  %wide.gep232 = getelementptr inbounds nuw [1216 x i8], ptr %i.cx, <2 x i64> %step.add
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x ptr> %wide.gep, ptr %i.db, align 8, !tbaa !121
  store <2 x ptr> %wide.gep232, ptr %i.dc, align 8, !tbaa !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !570

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph212, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph212:                                        ; preds = %scalar.ph, %middle.block
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 2864
  %i.df = select i1 %.not168.not, i32 16384, i32 4096
  br label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [1216 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph212, label %scalar.ph, !llvm.loop !571

bb.ar:                                            ; preds = %bb.as
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.di = load i32, ptr %i.cs, align 4, !tbaa !285 ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %indvars.iv.next218, %i.dj
  br i1 %i.dk, label %bb.as, label %._crit_edge, !llvm.loop !572

bb.as:                                            ; preds = %.lr.ph212, %bb.ar
  %indvars.iv217 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next218, %bb.ar ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv217
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !121
  %i.dn = trunc nuw i64 %indvars.iv217 to i32
  %i.do = call fastcc i32 @cff_subfont_load(ptr noundef %i.dm, ptr noundef nonnull %8, i32 noundef %i.dn, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.df, ptr noundef nonnull %3, ptr noundef %4) ; 2 uses
  store i32 %i.do, ptr %i.a, align 4, !tbaa !67
  %.not192 = icmp eq i32 %i.do, 0
  br i1 %.not192, label %bb.ar, label %.loopexit

._crit_edge:                                      ; preds = %bb.ar
  %i.dp = icmp ugt i32 %i.di, 1
  %i.dq = or i1 %.not168, %i.dp
  br i1 %i.dq, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.preheader.thread, %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4912
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !123
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 1928
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !583
  %i.dw = add i64 %i.dv, %i.e
  %i.dx = call fastcc i32 @CFF_Load_FD_Select(ptr noundef nonnull %i.dr, i32 noundef %i.dt, ptr noundef nonnull %1, i64 noundef %i.dw)
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !67
  br label %.loopexit

.loopexit:                                        ; preds = %bb.as, %.preheader.thread, %bb.at, %._crit_edge, %bb.aq, %bb.ap
  call fastcc void @cff_index_done(ptr noundef %8)
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !67
  %.not193 = icmp eq i32 %i.dy, 0
  br i1 %.not193, label %bb.au, label %.thread203

.thread203:                                       ; preds = %bb.ao, %bb.am, %bb.an, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.thread

bb.au:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.aw

bb.av:                                            ; preds = %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 2856
  store i32 0, ptr %i.dz, align 8, !tbaa !120
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.ea = load i64, ptr %i.cb, align 8, !tbaa !580
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 3, ptr %i.a, align 4, !tbaa !67
  br label %.thread

bb.ay:                                            ; preds = %bb.aw
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !123
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !94
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 1600
  %i.eh = call fastcc i32 @cff_index_get_pointers(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg, ptr noundef null, ptr noundef null) ; 2 uses
  store i32 %i.eh, ptr %i.a, align 4, !tbaa !67
  %.not194 = icmp eq i32 %i.eh, 0
  br i1 %.not194, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  br i1 %.not168, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ei = load i32, ptr %i.ee, align 4, !tbaa !94 ; 2 uses
  %.not195 = icmp eq i32 %i.ei, 0
  br i1 %.not195, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ej = load i32, ptr %i.ch, align 4, !tbaa !110
  %i.ek = icmp ne i32 %i.ej, 65535
  %i.el = and i1 %.not183, %i.ek
  %i.em = zext i1 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 1296 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !584
  %i.eq = call fastcc i32 @cff_charset_load(ptr noundef nonnull %i.en, i32 noundef %i.ei, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.ep, i8 noundef zeroext %i.em) ; 2 uses
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !67
  %.not196 = icmp eq i32 %i.eq, 0
  br i1 %.not196, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.er = load i32, ptr %i.ch, align 4, !tbaa !110
  %i.es = icmp eq i32 %i.er, 65535
  br i1 %i.es, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.eu = load i32, ptr %i.ee, align 4, !tbaa !94
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !585
  %i.ex = call fastcc i32 @cff_encoding_load(ptr noundef nonnull %i.et, ptr noundef nonnull %i.en, i32 noundef %i.eu, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.ew) ; 2 uses
  store i32 %i.ex, ptr %i.a, align 4, !tbaa !67
  %.not197 = icmp eq i32 %i.ex, 0
  br i1 %.not197, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %i.ey = call fastcc ptr @cff_index_get_name(ptr noundef nonnull %3, i32 noundef %.0160)
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 1592
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !153
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bb, %bb.j, %bb.g, %.thread203, %bb.ay, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.x, %bb.y, %bb.z, %bb.r, %bb.s, %bb.p, %bb.o, %bb.l, %bb.m, %bb.f, %bb.a, %bb.be, %bb.ax, %bb.ag, %bb.ae, %bb.ab, %bb.v, %bb.e
  %i.fa = load ptr, ptr %7, align 8, !tbaa !139   ; 3 uses
  %.not.i = icmp eq ptr %i.fa, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.bf

bb.bf:                                            ; preds = %.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !141
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !142
  %.not10.i = icmp eq ptr %i.fe, null
  br i1 %.not10.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fd) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !143
  call void @ft_mem_free(ptr noundef %i.fc, ptr noundef %i.fg) #18
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %.thread, %bb.bh
  %i.fh = load i32, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.fh
}

declare i32 @FT_Set_Named_Instance(ptr noundef, i32 noundef) local_unnamed_addr #9

declare hidden void @FT_Matrix_Multiply_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden void @FT_Vector_Transform_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cff_index_get_name(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %cff_index_forget_element.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.h = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.h, ptr %i.c, align 4, !tbaa !67
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.c, label %cff_index_forget_element.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !116  ; 3 uses
  %i.j = add i64 %i.i, 1
  %i.k = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %i.c) #18 ; 4 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !67
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.m, i64 %i.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.n, align 1, !tbaa !130
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
