Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 89
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d14make_arena_rowtKj4_EB6_:bb.a
  %i.cy = sub i64 %.sroa.7217.0.copyload, %.sroa.5216.0242.ph
  %xtraiter90 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol
  %.sroa.5216.0242.prol = phi i64 [ %i.db, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol ], [ %.sroa.5216.0242.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader ] ; 3 uses
  %prol.iter92 = phi i64 [ %prol.iter92.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %.sroa.5216.0242.prol
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %.sroa.5216.0242.prol
  %i.db = add nuw i64 %.sroa.5216.0242.prol, 1    ; 2 uses
  %i.dc = load i16, ptr %i.da, align 2, !noundef !9
  store i16 %i.dc, ptr %i.cz, align 2
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol, !llvm.loop !144

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader
  %.sroa.5216.0242.unr = phi i64 [ %.sroa.5216.0242.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader ], [ %i.db, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol ]
  %i.dd = sub i64 %.sroa.5216.0242.ph, %.sroa.7217.0.copyload
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179
  %.sroa.5216.0242 = phi i64 [ %i.dt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179 ], [ %.sroa.5216.0242.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol.loopexit ] ; 6 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %.sroa.5216.0242
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %.sroa.5216.0242
  %i.dh = add nuw i64 %.sroa.5216.0242, 1         ; 2 uses
  %i.di = load i16, ptr %i.dg, align 2, !noundef !9
  store i16 %i.di, ptr %i.df, align 2
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %i.dh
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %i.dh
  %i.dl = add nuw i64 %.sroa.5216.0242, 2         ; 2 uses
  %i.dm = load i16, ptr %i.dk, align 2, !noundef !9
  store i16 %i.dm, ptr %i.dj, align 2
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %i.dl
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %i.dl
  %i.dp = add nuw i64 %.sroa.5216.0242, 3         ; 2 uses
  %i.dq = load i16, ptr %i.do, align 2, !noundef !9
  store i16 %i.dq, ptr %i.dn, align 2
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %i.dp
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %i.dp
  %i.dt = add nuw i64 %.sroa.5216.0242, 4         ; 2 uses
  %i.du = load i16, ptr %i.ds, align 2, !noundef !9
  store i16 %i.du, ptr %i.dr, align 2
  %exitcond252.not.3 = icmp eq i64 %i.dt, %.sroa.7217.0.copyload
  br i1 %exitcond252.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179, !llvm.loop !145

bb.r:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAtj4_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.dv = add i64 %i.bw, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.dv, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #13
  unreachable

bb.s:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAtj4_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0190.0.copyload, i64 %.sroa.5194.0241 ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.bw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dz)
  %.sroa.0196.0.copyload = load ptr, ptr %i.b, align 8 ; 9 uses
  %.sroa.4198.0.copyload = load ptr, ptr %.sroa.4198.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5200.0.copyload = load i64, ptr %.sroa.5200.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7201.0.copyload = load i64, ptr %.sroa.7201.0..sroa_idx, align 8 ; 5 uses
  %i.ea = icmp ult i64 %.sroa.5200.0.copyload, %.sroa.7201.0.copyload
  br i1 %i.ea, label %iter.check34, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit

iter.check34:                                     ; preds = %bb.s
  %.sroa.4198.0.copyload18 = ptrtoaddr ptr %.sroa.4198.0.copyload to i64
  %.sroa.0196.0.copyload19 = ptrtoaddr ptr %.sroa.0196.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0196.0.copyload), "nonnull"(ptr %.sroa.4198.0.copyload) ]
  %i.eb = sub nuw i64 %.sroa.7201.0.copyload, %.sroa.5200.0.copyload ; 7 uses
  %min.iters.check20 = icmp ult i64 %i.eb, 4
  %i.ec = sub i64 %.sroa.4198.0.copyload18, %.sroa.0196.0.copyload19
  %diff.check22 = icmp ugt i64 %i.ec, -32
  %or.cond84 = select i1 %min.iters.check20, i1 true, i1 %diff.check22
  br i1 %or.cond84, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, label %vector.main.loop.iter.check23

vector.main.loop.iter.check23:                    ; preds = %iter.check34
  %min.iters.check24 = icmp ult i64 %i.eb, 16
  br i1 %min.iters.check24, label %vec.epilog.ph38, label %vector.ph25

vector.ph25:                                      ; preds = %vector.main.loop.iter.check23
  %i.ed = and i64 %i.eb, 12
  %n.vec26 = and i64 %i.eb, -16                   ; 4 uses
  %i.ee = add i64 %.sroa.5200.0.copyload, %n.vec26
  br label %vector.body27

vector.body27:                                    ; preds = %vector.ph25, %vector.body27
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next31, %vector.body27 ] ; 2 uses
  %i.ef = add nuw i64 %.sroa.5200.0.copyload, %index28 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.ef ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load29 = load <8 x i16>, ptr %i.eh, align 2
  %wide.load30 = load <8 x i16>, ptr %i.ei, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <8 x i16> %wide.load29, ptr %i.eg, align 2
  store <8 x i16> %wide.load30, ptr %i.ej, align 2
  %index.next31 = add nuw i64 %index28, 16        ; 2 uses
  %i.ek = icmp eq i64 %index.next31, %n.vec26
  br i1 %i.ek, label %middle.block32, label %vector.body27, !llvm.loop !146

middle.block32:                                   ; preds = %vector.body27
  %cmp.n33 = icmp eq i64 %i.eb, %n.vec26
  br i1 %cmp.n33, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %vec.epilog.iter.check35

vec.epilog.iter.check35:                          ; preds = %middle.block32
  %min.epilog.iters.check37 = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check37, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, label %vec.epilog.ph38, !prof !13

vec.epilog.ph38:                                  ; preds = %vector.main.loop.iter.check23, %vec.epilog.iter.check35
  %vec.epilog.resume.val39 = phi i64 [ %n.vec26, %vec.epilog.iter.check35 ], [ 0, %vector.main.loop.iter.check23 ]
  %n.vec40 = and i64 %i.eb, -4                    ; 3 uses
  %i.el = add i64 %.sroa.5200.0.copyload, %n.vec40
  br label %vec.epilog.vector.body41

vec.epilog.vector.body41:                         ; preds = %vec.epilog.vector.body41, %vec.epilog.ph38
  %index42 = phi i64 [ %vec.epilog.resume.val39, %vec.epilog.ph38 ], [ %index.next44, %vec.epilog.vector.body41 ] ; 2 uses
  %i.em = add nuw i64 %.sroa.5200.0.copyload, %index42 ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.em
  %wide.load43 = load <4 x i16>, ptr %i.eo, align 2
  store <4 x i16> %wide.load43, ptr %i.en, align 2
  %index.next44 = add nuw i64 %index42, 4         ; 2 uses
  %i.ep = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.ep, label %vec.epilog.middle.block45, label %vec.epilog.vector.body41, !llvm.loop !147

vec.epilog.middle.block45:                        ; preds = %vec.epilog.vector.body41
  %cmp.n46 = icmp eq i64 %i.eb, %n.vec40
  br i1 %cmp.n46, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader: ; preds = %iter.check34, %vec.epilog.iter.check35, %vec.epilog.middle.block45
  %.sroa.5200.0240.ph = phi i64 [ %.sroa.5200.0.copyload, %iter.check34 ], [ %i.ee, %vec.epilog.iter.check35 ], [ %i.el, %vec.epilog.middle.block45 ] ; 4 uses
  %i.eq = sub i64 %.sroa.7201.0.copyload, %.sroa.5200.0240.ph
  %xtraiter87 = and i64 %i.eq, 3                  ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol
  %.sroa.5200.0240.prol = phi i64 [ %i.et, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ], [ %.sroa.5200.0240.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ] ; 3 uses
  %prol.iter89 = phi i64 [ %prol.iter89.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ]
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %.sroa.5200.0240.prol
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %.sroa.5200.0240.prol
  %i.et = add nuw i64 %.sroa.5200.0240.prol, 1    ; 2 uses
  %i.eu = load i16, ptr %i.es, align 2, !noundef !9
  store i16 %i.eu, ptr %i.er, align 2
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol, !llvm.loop !148

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader
  %.sroa.5200.0240.unr = phi i64 [ %.sroa.5200.0240.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ], [ %i.et, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ]
  %i.ev = sub i64 %.sroa.5200.0240.ph, %.sroa.7201.0.copyload
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184
  %.sroa.5200.0240 = phi i64 [ %i.fl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184 ], [ %.sroa.5200.0240.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %.sroa.5200.0240
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %.sroa.5200.0240
  %i.ez = add nuw i64 %.sroa.5200.0240, 1         ; 2 uses
  %i.fa = load i16, ptr %i.ey, align 2, !noundef !9
  store i16 %i.fa, ptr %i.ex, align 2
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.ez
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.ez
  %i.fd = add nuw i64 %.sroa.5200.0240, 2         ; 2 uses
  %i.fe = load i16, ptr %i.fc, align 2, !noundef !9
  store i16 %i.fe, ptr %i.fb, align 2
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.fd
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.fd
  %i.fh = add nuw i64 %.sroa.5200.0240, 3         ; 2 uses
  %i.fi = load i16, ptr %i.fg, align 2, !noundef !9
  store i16 %i.fi, ptr %i.ff, align 2
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.fh
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.fh
  %i.fl = add nuw i64 %.sroa.5200.0240, 4         ; 2 uses
  %i.fm = load i16, ptr %i.fk, align 2, !noundef !9
  store i16 %i.fm, ptr %i.fj, align 2
  %exitcond249.not.3 = icmp eq i64 %i.fl, %.sroa.7201.0.copyload
  br i1 %exitcond249.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184, !llvm.loop !149

bb.t:                                             ; preds = %bb.d, %bb.c
  store i8 7, ptr %0, align 8
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.5138.0..sroa_idx, align 8
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj1_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 19 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 9 uses
  %i.d = and i64 %3, 2305843009213693948          ; 16 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 4 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.a, 4                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %.lr.ph168.split.us, label %.lr.ph168.split.preheader

.lr.ph168.split.preheader:                        ; preds = %.lr.ph168
  %i.l = add nuw nsw i64 %5, 3
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph168.split

.lr.ph168.split.us:                               ; preds = %.lr.ph168
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 3 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %6 = add nuw nsw i64 %i.w, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph168.split.us
  %7 = lshr i64 %1, 2
  %8 = add nsw i64 %i.f, -16
  %9 = lshr i64 %8, 4
  %umin358 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9)
  %umin359 = tail call i64 @llvm.umin.i64(i64 %umin358, i64 %i.r)
  %mul = shl nuw nsw i64 %umin359, 4
  %10 = getelementptr i8, ptr %2, i64 %mul
  %11 = icmp ult ptr %10, %2
  br i1 %11, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.x = and i64 %6, 3                            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 4, i64 %i.x
  %n.vec = sub nsw i64 %6, %i.z                   ; 3 uses
  %i.aa = shl i64 %n.vec, 4
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ac = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ae = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.ae
  %.idx358 = shl i64 %index, 4
  %i.af = getelementptr i8, ptr %0, i64 %.idx358  ; 4 uses
  %.idx359 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %0, i64 %.idx359  ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %.idx360 = shl i64 %index, 4
  %i.ai = getelementptr i8, ptr %0, i64 %.idx360  ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.idx361 = shl i64 %index, 4
  %i.ak = getelementptr i8, ptr %0, i64 %.idx361  ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %i.am = load float, ptr %i.af, align 4
  %i.an = load float, ptr %i.ah, align 4
  %i.ao = load float, ptr %i.aj, align 4
  %i.ap = load float, ptr %i.al, align 4
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.av = getelementptr i8, ptr %i.ag, i64 20
  %i.aw = getelementptr i8, ptr %i.ai, i64 36
  %i.ax = getelementptr i8, ptr %i.ak, i64 52
  %i.ay = load float, ptr %i.au, align 4
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bh = getelementptr i8, ptr %i.ag, i64 24
  %i.bi = getelementptr i8, ptr %i.ai, i64 40
  %i.bj = getelementptr i8, ptr %i.ak, i64 56
  %i.bk = load float, ptr %i.bg, align 4
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.bt = getelementptr i8, ptr %i.ag, i64 28
  %i.bu = getelementptr i8, ptr %i.ai, i64 44
  %i.bv = getelementptr i8, ptr %i.ak, i64 60
  %i.bw = load float, ptr %i.bs, align 4
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = shufflevector <4 x float> %i.at, <4 x float> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = fmul <8 x float> %i.ac, %i.ce
  %i.cg = shufflevector <4 x float> %i.br, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = fmul <8 x float> %i.ad, %i.cg
  %interleaved.vec = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %scalar.ph.preheader, label %vector.body, !llvm.loop !150

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph168.split.us
  %.sroa.079.0166.us.ph = phi ptr [ %2, %vector.scevcheck ], [ %2, %.lr.ph168.split.us ], [ %i.ab, %vector.body ]
  %.sroa.7.0165.us.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph168.split.us ], [ %n.vec, %vector.body ]
  %i.cj = insertelement <4 x float> poison, float %i.c, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.079.0166.us = phi ptr [ %i.cl, %bb.d ], [ %.sroa.079.0166.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0165.us = phi i64 [ %i.cm, %bb.d ], [ %.sroa.7.0165.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.079.0166.us, i64 16 ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.7.0165.us, 1
  %i.cn = shl nuw nsw i64 %.sroa.7.0165.us, 2     ; 3 uses
  %exitcond242 = icmp eq i64 %.sroa.7.0165.us, %i.r
  br i1 %exitcond242, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.co = sub nuw nsw i64 %1, %i.cn               ; 2 uses
  %.not65.us = icmp samesign ugt i64 %i.i, %i.co
  br i1 %.not65.us, label %.split171.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %0, i64 %i.cn
  %i.cp = load <4 x float>, ptr %gep, align 4
  %i.cq = fmul <4 x float> %i.ck, %i.cp
  store <4 x float> %i.cq, ptr %.sroa.079.0166.us, align 4
  %i.cr = icmp eq ptr %i.cl, %i.g
  br i1 %i.cr, label %._crit_edge169, label %scalar.ph, !llvm.loop !151

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph168.split:                                  ; preds = %.lr.ph168.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %1, %.lr.ph168.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.079.0166 = phi ptr [ %2, %.lr.ph168.split.preheader ], [ %i.cs, %._crit_edge ] ; 2 uses
  %.sroa.7.0165 = phi i64 [ 0, %.lr.ph168.split.preheader ], [ %i.ct, %._crit_edge ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.079.0166, i64 16 ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.7.0165, 1
  %i.cu = shl nuw nsw i64 %.sroa.7.0165, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0165, %i.n
  br i1 %exitcond, label %.split.us, label %bb.aa, !prof !5

._crit_edge169:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx194 = and i64 %i.f, 12                     ; 5 uses
  %i.cv = icmp samesign eq i64 %.idx194, 0
  br i1 %i.cv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge169
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5 ; 3 uses
  %i.cx = icmp eq i64 %i.a, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.cy = sub nsw i64 %1, %i.d                    ; 6 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.cy) ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.da = icmp samesign ugt i64 %i.d, %1
  br i1 %i.da, label %.split187.us, label %bb.l, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dc = icmp samesign ugt i64 %i.d, %1
  br i1 %i.dc, label %.split187.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.not266 = icmp eq i64 %1, %i.d
  br i1 %.not266, label %.split190.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gep193 = getelementptr [4 x i8], ptr %0, i64 %i.d
  %i.dd = load float, ptr %gep193, align 4, !noundef !9
  %i.de = fmul float %i.c, %i.dd
  store float %i.de, ptr %i.e, align 4
  %i.df = icmp samesign eq i64 %.idx194, 4
  br i1 %i.df, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dh = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not423 = icmp samesign ult i64 %i.d, %1
  br i1 %.not423, label %bb.h, label %.split187.us, !prof !4

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %.not266.1 = icmp eq i64 %1, %i.dh
  br i1 %.not266.1, label %.split190.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %gep193.1 = getelementptr [4 x i8], ptr %0, i64 %i.dh
  %i.di = load float, ptr %gep193.1, align 4, !noundef !9
  %i.dj = fmul float %i.c, %i.di
  store float %i.dj, ptr %i.db, align 4
  %i.dk = icmp samesign eq i64 %.idx194, 8
  br i1 %i.dk, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2: ; preds = %bb.i
  %i.dl = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.dm = icmp samesign ugt i64 %i.dl, %1
  br i1 %i.dm, label %.split187.us, label %bb.j, !prof !5

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %.not266.2 = icmp eq i64 %1, %i.dl
  br i1 %.not266.2, label %.split190.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep193.2 = getelementptr [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load float, ptr %gep193.2, align 4, !noundef !9
  %i.do = fmul float %i.c, %i.dn
  store float %i.do, ptr %i.dg, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge180, %._crit_edge180.1, %._crit_edge180.2, %bb.g, %bb.i, %bb.k, %._crit_edge169
  ret void

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader
  %i.dp = sub nuw nsw i64 %1, %i.d                ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.dr = icmp samesign ult i64 %i.a, %i.dp
  br i1 %i.dr, label %.lr.ph179, label %.split190.us

.split187.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %.us-phi188 = phi i64 [ %i.dl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.dh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.ee, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1 ], [ %i.fc, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2 ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi188, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph179:                                        ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.a
  %i.dt = load float, ptr %i.ds, align 4, !noundef !9
  %i.du = fmul float %i.c, %i.dt
  %.not64.first_iter = icmp ugt i64 %5, %i.cy
  br label %bb.m

.split190.us:                                     ; preds = %bb.l, %bb.o, %bb.t, %bb.f, %bb.h, %bb.j
  %.us-phi191 = phi i64 [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.h ], [ %umin, %bb.t ], [ %umin, %bb.o ], [ %umin, %bb.l ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %.us-phi191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.m:                                             ; preds = %.lr.ph179, %bb.z
  %.sroa.026.0177 = phi float [ %i.du, %.lr.ph179 ], [ %i.gi, %bb.z ] ; 2 uses
  %.sroa.1089.0176 = phi i64 [ 0, %.lr.ph179 ], [ %i.dy, %bb.z ] ; 5 uses
  %.sroa.788.0175 = phi i64 [ %i.a, %.lr.ph179 ], [ %i.dv, %bb.z ]
  %.sroa.086.0174 = phi ptr [ %4, %.lr.ph179 ], [ %i.dx, %bb.z ] ; 3 uses
  %i.dv = add nsw i64 %.sroa.788.0175, -1         ; 2 uses
  %i.dw = icmp eq ptr %.sroa.086.0174, %i.cw
  br i1 %i.dw, label %._crit_edge180, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.086.0174, i64 4
  %i.dy = add nuw nsw i64 %.sroa.1089.0176, 1
  %i.dz = load float, ptr %.sroa.086.0174, align 4, !noundef !9
  %i.ea = sub nsw i64 %5, %.sroa.1089.0176        ; 2 uses
  %i.eb = add nsw i64 %i.ea, -1                   ; 2 uses
  %exitcond246.not = icmp eq i64 %.sroa.1089.0176, %i.cy
  br i1 %exitcond246.not, label %.loopexit, label %bb.y, !prof !6

._crit_edge180:                                   ; preds = %bb.m, %bb.z
  %.sroa.026.0.lcssa = phi float [ %i.gi, %bb.z ], [ %.sroa.026.0177, %bb.m ]
  store float %.sroa.026.0.lcssa, ptr %i.e, align 4
  %i.ec = icmp samesign eq i64 %.idx194, 4
  %indvars.iv.next244 = add nsw i64 %i.cy, -1     ; 3 uses
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1: ; preds = %._crit_edge180
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ee = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not422 = icmp samesign ult i64 %i.d, %1
  br i1 %.not422, label %bb.o, label %.split187.us, !prof !4

bb.o:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1
  %i.ef = sub nuw nsw i64 %1, %i.ee               ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ee ; 3 uses
  %i.eh = icmp samesign ult i64 %i.a, %i.ef
  br i1 %i.eh, label %.lr.ph179.1, label %.split190.us

.lr.ph179.1:                                      ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.a
  %i.ej = load float, ptr %i.ei, align 4, !noundef !9
  %i.ek = fmul float %i.c, %i.ej
  %.not64.first_iter.1 = icmp ugt i64 %5, %indvars.iv.next244
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph179.1
  %.sroa.026.0177.1 = phi float [ %i.ek, %.lr.ph179.1 ], [ %i.ez, %bb.s ] ; 2 uses
  %.sroa.1089.0176.1 = phi i64 [ 0, %.lr.ph179.1 ], [ %i.eo, %bb.s ] ; 5 uses
  %.sroa.788.0175.1 = phi i64 [ %i.a, %.lr.ph179.1 ], [ %i.el, %bb.s ]
  %.sroa.086.0174.1 = phi ptr [ %4, %.lr.ph179.1 ], [ %i.en, %bb.s ] ; 3 uses
  %i.el = add nsw i64 %.sroa.788.0175.1, -1       ; 2 uses
  %i.em = icmp eq ptr %.sroa.086.0174.1, %i.cw
  br i1 %i.em, label %._crit_edge180.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.086.0174.1, i64 4
  %i.eo = add nuw nsw i64 %.sroa.1089.0176.1, 1
  %i.ep = load float, ptr %.sroa.086.0174.1, align 4, !noundef !9
  %i.eq = sub nsw i64 %5, %.sroa.1089.0176.1      ; 2 uses
  %i.er = add nsw i64 %i.eq, -1                   ; 2 uses
  %exitcond246.not.1 = icmp eq i64 %.sroa.1089.0176.1, %indvars.iv.next244
  br i1 %exitcond246.not.1, label %.loopexit, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  %i.es = icmp eq i64 %5, %.sroa.1089.0176.1
  %or.cond69.1 = or i1 %i.es, %.not64.first_iter.1
  br i1 %or.cond69.1, label %.loopexit407, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.sroa.1089.0176.1
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.er
  %i.ev = load float, ptr %i.et, align 4, !noundef !9
  %i.ew = load float, ptr %i.eu, align 4, !noundef !9
  %i.ex = fadd float %i.ev, %i.ew
  %i.ey = fmul float %i.ep, %i.ex
  %i.ez = fadd float %.sroa.026.0177.1, %i.ey     ; 2 uses
  %i.fa = icmp eq i64 %i.el, 0
  br i1 %i.fa, label %._crit_edge180.1, label %bb.p

._crit_edge180.1:                                 ; preds = %bb.s, %bb.p
  %.sroa.026.0.lcssa.1 = phi float [ %i.ez, %bb.s ], [ %.sroa.026.0177.1, %bb.p ]
  store float %.sroa.026.0.lcssa.1, ptr %i.cz, align 4
  %i.fb = icmp samesign eq i64 %.idx194, 8
  %indvars.iv.next244.1 = add nsw i64 %i.cy, -2   ; 3 uses
  br i1 %i.fb, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2: ; preds = %._crit_edge180.1
  %i.fc = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.fd = icmp samesign ugt i64 %i.fc, %1
  br i1 %i.fd, label %.split187.us, label %bb.t, !prof !5

bb.t:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2
  %i.fe = sub nuw nsw i64 %1, %i.fc               ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fc ; 3 uses
  %i.fg = icmp samesign ult i64 %i.a, %i.fe
  br i1 %i.fg, label %.lr.ph179.2, label %.split190.us

.lr.ph179.2:                                      ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.a
  %i.fi = load float, ptr %i.fh, align 4, !noundef !9
  %i.fj = fmul float %i.c, %i.fi
  %.not64.first_iter.2 = icmp ugt i64 %5, %indvars.iv.next244.1
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph179.2
  %.sroa.026.0177.2 = phi float [ %i.fj, %.lr.ph179.2 ], [ %i.fy, %bb.x ] ; 2 uses
  %.sroa.1089.0176.2 = phi i64 [ 0, %.lr.ph179.2 ], [ %i.fn, %bb.x ] ; 5 uses
  %.sroa.788.0175.2 = phi i64 [ %i.a, %.lr.ph179.2 ], [ %i.fk, %bb.x ]
  %.sroa.086.0174.2 = phi ptr [ %4, %.lr.ph179.2 ], [ %i.fm, %bb.x ] ; 3 uses
  %i.fk = add nsw i64 %.sroa.788.0175.2, -1       ; 2 uses
  %i.fl = icmp eq ptr %.sroa.086.0174.2, %i.cw
  br i1 %i.fl, label %._crit_edge180.2, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.086.0174.2, i64 4
  %i.fn = add nuw nsw i64 %.sroa.1089.0176.2, 1
  %i.fo = load float, ptr %.sroa.086.0174.2, align 4, !noundef !9
  %i.fp = sub nsw i64 %5, %.sroa.1089.0176.2      ; 2 uses
  %i.fq = add nsw i64 %i.fp, -1                   ; 2 uses
  %exitcond246.not.2 = icmp eq i64 %.sroa.1089.0176.2, %indvars.iv.next244.1
  br i1 %exitcond246.not.2, label %.loopexit, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.fr = icmp eq i64 %5, %.sroa.1089.0176.2
  %or.cond69.2 = or i1 %i.fr, %.not64.first_iter.2
  br i1 %or.cond69.2, label %.loopexit407, label %bb.x, !prof !6

bb.x:                                             ; preds = %bb.w
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.sroa.1089.0176.2
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fq
  %i.fu = load float, ptr %i.fs, align 4, !noundef !9
  %i.fv = load float, ptr %i.ft, align 4, !noundef !9
  %i.fw = fadd float %i.fu, %i.fv
  %i.fx = fmul float %i.fo, %i.fw
  %i.fy = fadd float %.sroa.026.0177.2, %i.fx     ; 2 uses
  %i.fz = icmp eq i64 %i.fk, 0
  br i1 %i.fz, label %._crit_edge180.2, label %bb.u

._crit_edge180.2:                                 ; preds = %bb.x, %bb.u
  %.sroa.026.0.lcssa.2 = phi float [ %i.fy, %bb.x ], [ %.sroa.026.0177.2, %bb.u ]
  store float %.sroa.026.0.lcssa.2, ptr %i.ed, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.n
  %.lcssa381 = phi i64 [ %i.dp, %bb.n ], [ %i.ef, %bb.q ], [ %i.fe, %bb.v ]
  %indvars.iv243.lcssa377 = phi i64 [ %i.cy, %bb.n ], [ %indvars.iv.next244, %bb.q ], [ %indvars.iv.next244.1, %bb.v ] ; 2 uses
  %i.ga = add i64 %indvars.iv243.lcssa377, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %indvars.iv243.lcssa377, i64 noundef %i.ga, i64 noundef %.lcssa381, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.y:                                             ; preds = %bb.n
  %i.gb = icmp eq i64 %5, %.sroa.1089.0176
  %or.cond69 = or i1 %i.gb, %.not64.first_iter
  br i1 %or.cond69, label %.loopexit407, label %bb.z, !prof !6

.loopexit407:                                     ; preds = %bb.w, %bb.r, %bb.y
  %.lcssa382 = phi i64 [ %i.dp, %bb.y ], [ %i.ef, %bb.r ], [ %i.fe, %bb.w ]
  %.lcssa370 = phi i64 [ %i.ea, %bb.y ], [ %i.eq, %bb.r ], [ %i.fp, %bb.w ]
  %.lcssa368 = phi i64 [ %i.eb, %bb.y ], [ %i.er, %bb.r ], [ %i.fq, %bb.w ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa368, i64 noundef %.lcssa370, i64 noundef %.lcssa382, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.sroa.1089.0176
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.eb
  %i.ge = load float, ptr %i.gc, align 4, !noundef !9
  %i.gf = load float, ptr %i.gd, align 4, !noundef !9
  %i.gg = fadd float %i.ge, %i.gf
  %i.gh = fmul float %i.dz, %i.gg
  %i.gi = fadd float %.sroa.026.0177, %i.gh       ; 2 uses
  %i.gj = icmp eq i64 %i.dv, 0
  br i1 %i.gj, label %._crit_edge180, label %bb.m

bb.aa:                                            ; preds = %.lr.ph168.split
  %i.gk = sub nuw nsw i64 %1, %i.cu               ; 5 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cu ; 3 uses
  %.not65 = icmp samesign ugt i64 %i.i, %i.gk
  br i1 %.not65, label %.split171.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph168.split, %scalar.ph
  %.us-phi = phi i64 [ %i.cn, %scalar.ph ], [ %i.cu, %.lr.ph168.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split171.us:                                     ; preds = %bb.aa, %bb.c
  %.us-phi172 = phi i64 [ %i.co, %bb.c ], [ %i.gk, %bb.aa ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.i, i64 noundef %.us-phi172, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.a
  %i.gn = load <4 x float>, ptr %i.gm, align 4
  %i.go = fmul <4 x float> %i.p, %i.gn
  %.not68.first_iter = icmp ugt i64 %i.l, %indvars.iv
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ag
  %.sroa.080.0152 = phi ptr [ %4, %.lr.ph ], [ %i.gs, %bb.ag ] ; 3 uses
  %.sroa.782.0151 = phi i64 [ %i.a, %.lr.ph ], [ %i.gq, %bb.ag ]
  %.sroa.10.0150 = phi i64 [ 0, %.lr.ph ], [ %i.gt, %bb.ag ] ; 5 uses
  %i.gp = phi <4 x float> [ %i.go, %.lr.ph ], [ %i.hk, %bb.ag ] ; 2 uses
  %i.gq = add nsw i64 %.sroa.782.0151, -1         ; 2 uses
  %i.gr = icmp eq ptr %.sroa.080.0152, %i.j
  br i1 %i.gr, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.080.0152, i64 4
  %i.gt = add nuw nsw i64 %.sroa.10.0150, 1
  %i.gu = load float, ptr %.sroa.080.0152, align 4, !noundef !9
  %i.gv = xor i64 %.sroa.10.0150, -1
  %i.gw = add nsw i64 %5, %i.gv                   ; 4 uses
  %i.gx = add nuw nsw i64 %.sroa.10.0150, 4       ; 2 uses
  %.not67 = icmp samesign ugt i64 %i.gx, %i.gk
  br i1 %.not67, label %bb.ad, label %bb.ae, !prof !6

._crit_edge:                                      ; preds = %bb.ab, %bb.ag
  %i.gy = phi <4 x float> [ %i.hk, %bb.ag ], [ %i.gp, %bb.ab ]
  store <4 x float> %i.gy, ptr %.sroa.079.0166, align 4
  %i.gz = icmp eq ptr %i.cs, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  br i1 %i.gz, label %._crit_edge169, label %.lr.ph168.split

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.10.0150, i64 noundef %i.gx, i64 noundef %i.gk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ha = icmp ugt i64 %i.gw, -5
  %or.cond71 = or i1 %i.ha, %.not68.first_iter
  br i1 %or.cond71, label %bb.af, label %bb.ag, !prof !6

bb.af:                                            ; preds = %bb.ae
  %i.hb = add nsw i64 %i.gw, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.gw, i64 noundef %i.hb, i64 noundef %i.gk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.sroa.10.0150
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gw
  %i.he = load <4 x float>, ptr %i.hc, align 4
  %i.hf = load <4 x float>, ptr %i.hd, align 4
  %i.hg = fadd <4 x float> %i.he, %i.hf
  %i.hh = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = fmul <4 x float> %i.hi, %i.hg
  %i.hk = fadd <4 x float> %i.gp, %i.hj           ; 2 uses
  %i.hl = icmp eq i64 %i.gq, 0
  br i1 %i.hl, label %._crit_edge, label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj2_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 9 uses
  %i.d = and i64 %3, 2305843009213693948          ; 15 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 4 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %bb.b
  %i.i = and i64 %5, 2305843009213693950          ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph173.split.us, label %.lr.ph173.split.preheader

.lr.ph173.split.preheader:                        ; preds = %.lr.ph173
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph173.split

.lr.ph173.split.us:                               ; preds = %.lr.ph173
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 3 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %6 = add nuw nsw i64 %i.w, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph173.split.us
  %7 = lshr i64 %1, 2
  %8 = add nsw i64 %i.f, -16
  %9 = lshr i64 %8, 4
  %umin355 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9)
  %umin356 = tail call i64 @llvm.umin.i64(i64 %umin355, i64 %i.r)
  %mul = shl nuw nsw i64 %umin356, 4
  %10 = getelementptr i8, ptr %2, i64 %mul
  %11 = icmp ult ptr %10, %2
  br i1 %11, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.x = and i64 %6, 3                            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 4, i64 %i.x
  %n.vec = sub nsw i64 %6, %i.z                   ; 3 uses
  %i.aa = shl i64 %n.vec, 4
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ac = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ae = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.ae
  %.idx356 = shl i64 %index, 4
  %i.af = getelementptr i8, ptr %invariant.gep, i64 %.idx356 ; 4 uses
  %.idx357 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx357 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %.idx358 = shl i64 %index, 4
  %i.ai = getelementptr i8, ptr %invariant.gep, i64 %.idx358 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.idx359 = shl i64 %index, 4
  %i.ak = getelementptr i8, ptr %invariant.gep, i64 %.idx359 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %i.am = load float, ptr %i.af, align 4
  %i.an = load float, ptr %i.ah, align 4
  %i.ao = load float, ptr %i.aj, align 4
  %i.ap = load float, ptr %i.al, align 4
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.av = getelementptr i8, ptr %i.ag, i64 20
  %i.aw = getelementptr i8, ptr %i.ai, i64 36
  %i.ax = getelementptr i8, ptr %i.ak, i64 52
  %i.ay = load float, ptr %i.au, align 4
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bh = getelementptr i8, ptr %i.ag, i64 24
  %i.bi = getelementptr i8, ptr %i.ai, i64 40
  %i.bj = getelementptr i8, ptr %i.ak, i64 56
  %i.bk = load float, ptr %i.bg, align 4
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.bt = getelementptr i8, ptr %i.ag, i64 28
  %i.bu = getelementptr i8, ptr %i.ai, i64 44
  %i.bv = getelementptr i8, ptr %i.ak, i64 60
  %i.bw = load float, ptr %i.bs, align 4
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = shufflevector <4 x float> %i.at, <4 x float> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = fmul <8 x float> %i.ac, %i.ce
  %i.cg = shufflevector <4 x float> %i.br, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = fmul <8 x float> %i.ad, %i.cg
  %interleaved.vec = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %scalar.ph.preheader, label %vector.body, !llvm.loop !152

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph173.split.us
  %.sroa.081.0171.us.ph = phi ptr [ %2, %vector.scevcheck ], [ %2, %.lr.ph173.split.us ], [ %i.ab, %vector.body ]
  %.sroa.7.0170.us.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph173.split.us ], [ %n.vec, %vector.body ]
  %i.cj = insertelement <4 x float> poison, float %i.c, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0171.us = phi ptr [ %i.cl, %bb.d ], [ %.sroa.081.0171.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0170.us = phi i64 [ %i.cm, %bb.d ], [ %.sroa.7.0170.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.081.0171.us, i64 16 ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.7.0170.us, 1
  %i.cn = shl nuw nsw i64 %.sroa.7.0170.us, 2     ; 3 uses
  %exitcond244 = icmp eq i64 %.sroa.7.0170.us, %i.r
  br i1 %exitcond244, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.co = sub nuw nsw i64 %1, %i.cn               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.co
  br i1 %.not69.us, label %.split176.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cn
  %i.cp = load <4 x float>, ptr %gep, align 4
  %i.cq = fmul <4 x float> %i.ck, %i.cp
  store <4 x float> %i.cq, ptr %.sroa.081.0171.us, align 4
  %i.cr = icmp eq ptr %i.cl, %i.g
  br i1 %i.cr, label %._crit_edge174, label %scalar.ph, !llvm.loop !153

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph173.split:                                  ; preds = %.lr.ph173.split.preheader, %._crit_edge
  %.sroa.081.0171 = phi ptr [ %i.cs, %._crit_edge ], [ %2, %.lr.ph173.split.preheader ] ; 2 uses
  %.sroa.7.0170 = phi i64 [ %i.ct, %._crit_edge ], [ 0, %.lr.ph173.split.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.081.0171, i64 16 ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.7.0170, 1
  %i.cu = shl nuw nsw i64 %.sroa.7.0170, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0170, %i.n
  br i1 %exitcond, label %.split.us, label %bb.aa, !prof !5

._crit_edge174:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx201 = and i64 %i.f, 12                     ; 5 uses
  %i.cv = icmp samesign eq i64 %.idx201, 0
  br i1 %i.cv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge174
  %i.cw = and i64 %5, 2305843009213693950         ; 11 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5 ; 3 uses
  %i.cy = icmp eq i64 %i.a, 0
  br i1 %i.cy, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep199 = getelementptr [4 x i8], ptr %0, i64 %i.cw ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.da = icmp samesign ugt i64 %i.d, %1
  br i1 %i.da, label %.split193.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.db = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.dc = icmp samesign ult i64 %i.cw, %i.db
  br i1 %i.dc, label %bb.g, label %.split196.us

bb.g:                                             ; preds = %bb.f
  %gep200 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.d
  %i.dd = load float, ptr %gep200, align 4, !noundef !9
  %i.de = fmul float %i.c, %i.dd
  store float %i.de, ptr %i.e, align 4
  %i.df = icmp samesign eq i64 %.idx201, 4
  br i1 %i.df, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dh = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not416 = icmp samesign ult i64 %i.d, %1
  br i1 %.not416, label %bb.h, label %.split193.us, !prof !4

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %i.di = sub nuw nsw i64 %1, %i.dh               ; 2 uses
  %i.dj = icmp samesign ult i64 %i.cw, %i.di
  br i1 %i.dj, label %bb.i, label %.split196.us

bb.i:                                             ; preds = %bb.h
  %gep200.1 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.dh
  %i.dk = load float, ptr %gep200.1, align 4, !noundef !9
  %i.dl = fmul float %i.c, %i.dk
  store float %i.dl, ptr %i.cz, align 4
  %i.dm = icmp samesign eq i64 %.idx201, 8
  br i1 %i.dm, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2: ; preds = %bb.i
  %i.dn = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.do = icmp samesign ugt i64 %i.dn, %1
  br i1 %i.do, label %.split193.us, label %bb.j, !prof !5

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %i.dp = sub nuw nsw i64 %1, %i.dn               ; 2 uses
  %i.dq = icmp samesign ult i64 %i.cw, %i.dp
  br i1 %i.dq, label %bb.k, label %.split196.us

bb.k:                                             ; preds = %bb.j
  %gep200.2 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.dn
  %i.dr = load float, ptr %gep200.2, align 4, !noundef !9
  %i.ds = fmul float %i.c, %i.dr
  store float %i.ds, ptr %i.dg, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.du = icmp samesign ugt i64 %i.d, %1
  br i1 %i.du, label %.split193.us, label %bb.l, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge186, %._crit_edge186.1, %._crit_edge186.2, %bb.g, %bb.i, %bb.k, %._crit_edge174
  ret void

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.dv = sub nuw nsw i64 %1, %i.d                ; 6 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.dx = icmp samesign ult i64 %i.cw, %i.dv
  br i1 %i.dx, label %.lr.ph185, label %.split196.us

.split193.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %.us-phi194 = phi i64 [ %i.dn, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.ej, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1 ], [ %i.fi, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2 ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi194, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph185:                                        ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cw
  %i.dz = load float, ptr %i.dy, align 4, !noundef !9
  %i.ea = fmul float %i.c, %i.dz
  br label %bb.m

.split196.us:                                     ; preds = %bb.l, %bb.o, %bb.t, %bb.f, %bb.h, %bb.j
  %.us-phi197 = phi i64 [ %i.dp, %bb.j ], [ %i.db, %bb.f ], [ %i.di, %bb.h ], [ %i.dv, %bb.l ], [ %i.ek, %bb.o ], [ %i.fk, %bb.t ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %.us-phi197, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.m:                                             ; preds = %.lr.ph185, %bb.z
  %.sroa.026.0183 = phi float [ %i.ea, %.lr.ph185 ], [ %i.gs, %bb.z ] ; 2 uses
  %.sroa.1091.0182 = phi i64 [ 0, %.lr.ph185 ], [ %i.ee, %bb.z ] ; 3 uses
  %.sroa.790.0181 = phi i64 [ %i.a, %.lr.ph185 ], [ %i.eb, %bb.z ]
  %.sroa.088.0180 = phi ptr [ %4, %.lr.ph185 ], [ %i.ed, %bb.z ] ; 3 uses
  %i.eb = add nsw i64 %.sroa.790.0181, -1         ; 2 uses
  %i.ec = icmp eq ptr %.sroa.088.0180, %i.cx
  br i1 %i.ec, label %._crit_edge186, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.088.0180, i64 4
  %i.ee = add nuw nsw i64 %.sroa.1091.0182, 1
  %i.ef = load float, ptr %.sroa.088.0180, align 4, !noundef !9
  %i.eg = shl nuw nsw i64 %.sroa.1091.0182, 1     ; 3 uses
  %.not67.not = icmp samesign ult i64 %i.eg, %i.dv
  br i1 %.not67.not, label %bb.y, label %.loopexit, !prof !4

._crit_edge186:                                   ; preds = %bb.m, %bb.z
  %.sroa.026.0.lcssa = phi float [ %i.gs, %bb.z ], [ %.sroa.026.0183, %bb.m ]
  store float %.sroa.026.0.lcssa, ptr %i.e, align 4
  %i.eh = icmp samesign eq i64 %.idx201, 4
  br i1 %i.eh, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1: ; preds = %._crit_edge186
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ej = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not415 = icmp samesign ult i64 %i.d, %1
  br i1 %.not415, label %bb.o, label %.split193.us, !prof !4

bb.o:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1
  %i.ek = sub nuw nsw i64 %1, %i.ej               ; 6 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej ; 3 uses
  %i.em = icmp samesign ult i64 %i.cw, %i.ek
  br i1 %i.em, label %.lr.ph185.1, label %.split196.us

.lr.ph185.1:                                      ; preds = %bb.o
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.cw
  %i.eo = load float, ptr %i.en, align 4, !noundef !9
  %i.ep = fmul float %i.c, %i.eo
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph185.1
  %.sroa.026.0183.1 = phi float [ %i.ep, %.lr.ph185.1 ], [ %i.ff, %bb.s ] ; 2 uses
  %.sroa.1091.0182.1 = phi i64 [ 0, %.lr.ph185.1 ], [ %i.et, %bb.s ] ; 3 uses
  %.sroa.790.0181.1 = phi i64 [ %i.a, %.lr.ph185.1 ], [ %i.eq, %bb.s ]
  %.sroa.088.0180.1 = phi ptr [ %4, %.lr.ph185.1 ], [ %i.es, %bb.s ] ; 3 uses
  %i.eq = add nsw i64 %.sroa.790.0181.1, -1       ; 2 uses
  %i.er = icmp eq ptr %.sroa.088.0180.1, %i.cx
  br i1 %i.er, label %._crit_edge186.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.088.0180.1, i64 4
  %i.et = add nuw nsw i64 %.sroa.1091.0182.1, 1
  %i.eu = load float, ptr %.sroa.088.0180.1, align 4, !noundef !9
  %i.ev = shl nuw nsw i64 %.sroa.1091.0182.1, 1   ; 3 uses
  %.not67.not.1 = icmp samesign ult i64 %i.ev, %i.ek
  br i1 %.not67.not.1, label %bb.r, label %.loopexit, !prof !4

bb.r:                                             ; preds = %bb.q
  %i.ew = xor i64 %.sroa.1091.0182.1, -1
  %i.ex = add nsw i64 %5, %i.ew
  %i.ey = shl nsw i64 %i.ex, 1                    ; 3 uses
  %.not68.not.1 = icmp ult i64 %i.ey, %i.ek
  br i1 %.not68.not.1, label %bb.s, label %.loopexit402, !prof !4

bb.s:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ev
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ey
  %i.fb = load float, ptr %i.ez, align 4, !noundef !9
  %i.fc = load float, ptr %i.fa, align 4, !noundef !9
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.eu, %i.fd
  %i.ff = fadd float %.sroa.026.0183.1, %i.fe     ; 2 uses
  %i.fg = icmp eq i64 %i.eq, 0
  br i1 %i.fg, label %._crit_edge186.1, label %bb.p

._crit_edge186.1:                                 ; preds = %bb.s, %bb.p
  %.sroa.026.0.lcssa.1 = phi float [ %i.ff, %bb.s ], [ %.sroa.026.0183.1, %bb.p ]
  store float %.sroa.026.0.lcssa.1, ptr %i.dt, align 4
  %i.fh = icmp samesign eq i64 %.idx201, 8
  br i1 %i.fh, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2: ; preds = %._crit_edge186.1
  %i.fi = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.fj = icmp samesign ugt i64 %i.fi, %1
  br i1 %i.fj, label %.split193.us, label %bb.t, !prof !5

bb.t:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2
  %i.fk = sub nuw nsw i64 %1, %i.fi               ; 6 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fi ; 3 uses
  %i.fm = icmp samesign ult i64 %i.cw, %i.fk
  br i1 %i.fm, label %.lr.ph185.2, label %.split196.us

.lr.ph185.2:                                      ; preds = %bb.t
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.cw
  %i.fo = load float, ptr %i.fn, align 4, !noundef !9
  %i.fp = fmul float %i.c, %i.fo
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph185.2
  %.sroa.026.0183.2 = phi float [ %i.fp, %.lr.ph185.2 ], [ %i.gf, %bb.x ] ; 2 uses
  %.sroa.1091.0182.2 = phi i64 [ 0, %.lr.ph185.2 ], [ %i.ft, %bb.x ] ; 3 uses
  %.sroa.790.0181.2 = phi i64 [ %i.a, %.lr.ph185.2 ], [ %i.fq, %bb.x ]
  %.sroa.088.0180.2 = phi ptr [ %4, %.lr.ph185.2 ], [ %i.fs, %bb.x ] ; 3 uses
  %i.fq = add nsw i64 %.sroa.790.0181.2, -1       ; 2 uses
  %i.fr = icmp eq ptr %.sroa.088.0180.2, %i.cx
  br i1 %i.fr, label %._crit_edge186.2, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.088.0180.2, i64 4
  %i.ft = add nuw nsw i64 %.sroa.1091.0182.2, 1
  %i.fu = load float, ptr %.sroa.088.0180.2, align 4, !noundef !9
  %i.fv = shl nuw nsw i64 %.sroa.1091.0182.2, 1   ; 3 uses
  %.not67.not.2 = icmp samesign ult i64 %i.fv, %i.fk
  br i1 %.not67.not.2, label %bb.w, label %.loopexit, !prof !4

bb.w:                                             ; preds = %bb.v
  %i.fw = xor i64 %.sroa.1091.0182.2, -1
  %i.fx = add nsw i64 %5, %i.fw
  %i.fy = shl nsw i64 %i.fx, 1                    ; 3 uses
  %.not68.not.2 = icmp ult i64 %i.fy, %i.fk
  br i1 %.not68.not.2, label %bb.x, label %.loopexit402, !prof !4

bb.x:                                             ; preds = %bb.w
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fv
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fy
  %i.gb = load float, ptr %i.fz, align 4, !noundef !9
  %i.gc = load float, ptr %i.ga, align 4, !noundef !9
  %i.gd = fadd float %i.gb, %i.gc
  %i.ge = fmul float %i.fu, %i.gd
  %i.gf = fadd float %.sroa.026.0183.2, %i.ge     ; 2 uses
  %i.gg = icmp eq i64 %i.fq, 0
  br i1 %i.gg, label %._crit_edge186.2, label %bb.u

._crit_edge186.2:                                 ; preds = %bb.x, %bb.u
  %.sroa.026.0.lcssa.2 = phi float [ %i.gf, %bb.x ], [ %.sroa.026.0183.2, %bb.u ]
  store float %.sroa.026.0.lcssa.2, ptr %i.ei, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.n
  %.lcssa376 = phi i64 [ %i.dv, %bb.n ], [ %i.ek, %bb.q ], [ %i.fk, %bb.v ]
  %.lcssa367 = phi i64 [ %i.eg, %bb.n ], [ %i.ev, %bb.q ], [ %i.fv, %bb.v ] ; 2 uses
  %i.gh = or disjoint i64 %.lcssa367, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa367, i64 noundef %i.gh, i64 noundef %.lcssa376, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.y:                                             ; preds = %bb.n
  %i.gi = xor i64 %.sroa.1091.0182, -1
  %i.gj = add nsw i64 %5, %i.gi
  %i.gk = shl nsw i64 %i.gj, 1                    ; 3 uses
  %.not68.not = icmp ult i64 %i.gk, %i.dv
  br i1 %.not68.not, label %bb.z, label %.loopexit402, !prof !4

.loopexit402:                                     ; preds = %bb.w, %bb.r, %bb.y
  %.lcssa377 = phi i64 [ %i.dv, %bb.y ], [ %i.ek, %bb.r ], [ %i.fk, %bb.w ]
  %.lcssa369 = phi i64 [ %i.gk, %bb.y ], [ %i.ey, %bb.r ], [ %i.fy, %bb.w ] ; 2 uses
  %i.gl = or disjoint i64 %.lcssa369, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa369, i64 noundef %i.gl, i64 noundef %.lcssa377, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eg
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gk
  %i.go = load float, ptr %i.gm, align 4, !noundef !9
  %i.gp = load float, ptr %i.gn, align 4, !noundef !9
  %i.gq = fadd float %i.go, %i.gp
  %i.gr = fmul float %i.ef, %i.gq
  %i.gs = fadd float %.sroa.026.0183, %i.gr       ; 2 uses
  %i.gt = icmp eq i64 %i.eb, 0
  br i1 %i.gt, label %._crit_edge186, label %bb.m

bb.aa:                                            ; preds = %.lr.ph173.split
  %i.gu = sub nuw nsw i64 %1, %i.cu               ; 6 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cu ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.gu
  br i1 %.not69, label %.split176.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph173.split, %scalar.ph
  %.us-phi = phi i64 [ %i.cn, %scalar.ph ], [ %i.cu, %.lr.ph173.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split176.us:                                     ; preds = %bb.aa, %bb.c
  %.us-phi177 = phi i64 [ %i.co, %bb.c ], [ %i.gu, %bb.aa ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.aa
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.i
  %i.gx = load <4 x float>, ptr %i.gw, align 4
  %i.gy = fmul <4 x float> %i.p, %i.gx
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ag
  %.sroa.082.0157 = phi ptr [ %4, %.lr.ph ], [ %i.hc, %bb.ag ] ; 3 uses
  %.sroa.784.0156 = phi i64 [ %i.a, %.lr.ph ], [ %i.ha, %bb.ag ]
  %.sroa.10.0155 = phi i64 [ 0, %.lr.ph ], [ %i.hd, %bb.ag ] ; 3 uses
  %i.gz = phi <4 x float> [ %i.gy, %.lr.ph ], [ %i.hw, %bb.ag ] ; 2 uses
  %i.ha = add nsw i64 %.sroa.784.0156, -1         ; 2 uses
  %i.hb = icmp eq ptr %.sroa.082.0157, %i.k
  br i1 %i.hb, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.082.0157, i64 4
  %i.hd = add nuw nsw i64 %.sroa.10.0155, 1
  %i.he = load float, ptr %.sroa.082.0157, align 4, !noundef !9
  %i.hf = shl nuw nsw i64 %.sroa.10.0155, 1       ; 3 uses
  %i.hg = add nuw nsw i64 %i.hf, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.hg, %i.gu
  br i1 %.not71, label %bb.ad, label %bb.ae, !prof !6

._crit_edge:                                      ; preds = %bb.ab, %bb.ag
  %i.hh = phi <4 x float> [ %i.hw, %bb.ag ], [ %i.gz, %bb.ab ]
  store <4 x float> %i.hh, ptr %.sroa.081.0171, align 4
  %i.hi = icmp eq ptr %i.cs, %i.g
  br i1 %i.hi, label %._crit_edge174, label %.lr.ph173.split

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.hf, i64 noundef %i.hg, i64 noundef %i.gu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.hj = xor i64 %.sroa.10.0155, -1
  %i.hk = add nsw i64 %5, %i.hj
  %i.hl = shl nsw i64 %i.hk, 1                    ; 4 uses
  %i.hm = add nsw i64 %i.hl, 4                    ; 2 uses
  %i.hn = icmp ugt i64 %i.hl, -5
  %.not72 = icmp ugt i64 %i.hm, %i.gu
  %or.cond73 = or i1 %i.hn, %.not72
  br i1 %or.cond73, label %bb.af, label %bb.ag, !prof !6

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.hl, i64 noundef %i.hm, i64 noundef %i.gu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hf
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hl
  %i.hq = load <4 x float>, ptr %i.ho, align 4
  %i.hr = load <4 x float>, ptr %i.hp, align 4
  %i.hs = fadd <4 x float> %i.hq, %i.hr
  %i.ht = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = fmul <4 x float> %i.hu, %i.hs
  %i.hw = fadd <4 x float> %i.gz, %i.hv           ; 2 uses
  %i.hx = icmp eq i64 %i.ha, 0
  br i1 %i.hx, label %._crit_edge, label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj3_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 10 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 9 uses
  %i.d = and i64 %3, 2305843009213693948          ; 15 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 4 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.a, 3                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph178.split.us, label %.lr.ph178.split.preheader

.lr.ph178.split.preheader:                        ; preds = %.lr.ph178
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph178.split

.lr.ph178.split.us:                               ; preds = %.lr.ph178
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 3 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %6 = add nuw nsw i64 %i.w, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph178.split.us
  %7 = lshr i64 %1, 2
  %8 = add nsw i64 %i.f, -16
  %9 = lshr i64 %8, 4
  %umin363 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9)
  %umin364 = tail call i64 @llvm.umin.i64(i64 %umin363, i64 %i.r)
  %mul = shl nuw nsw i64 %umin364, 4
  %10 = getelementptr i8, ptr %2, i64 %mul
  %11 = icmp ult ptr %10, %2
  br i1 %11, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.x = and i64 %6, 3                            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 4, i64 %i.x
  %n.vec = sub nsw i64 %6, %i.z                   ; 3 uses
  %i.aa = shl i64 %n.vec, 4
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ac = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ae = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.ae
  %.idx364 = shl i64 %index, 4
  %i.af = getelementptr i8, ptr %invariant.gep, i64 %.idx364 ; 4 uses
  %.idx365 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx365 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %.idx366 = shl i64 %index, 4
  %i.ai = getelementptr i8, ptr %invariant.gep, i64 %.idx366 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.idx367 = shl i64 %index, 4
  %i.ak = getelementptr i8, ptr %invariant.gep, i64 %.idx367 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %i.am = load float, ptr %i.af, align 4
  %i.an = load float, ptr %i.ah, align 4
  %i.ao = load float, ptr %i.aj, align 4
  %i.ap = load float, ptr %i.al, align 4
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.av = getelementptr i8, ptr %i.ag, i64 20
  %i.aw = getelementptr i8, ptr %i.ai, i64 36
  %i.ax = getelementptr i8, ptr %i.ak, i64 52
  %i.ay = load float, ptr %i.au, align 4
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bh = getelementptr i8, ptr %i.ag, i64 24
  %i.bi = getelementptr i8, ptr %i.ai, i64 40
  %i.bj = getelementptr i8, ptr %i.ak, i64 56
  %i.bk = load float, ptr %i.bg, align 4
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.bt = getelementptr i8, ptr %i.ag, i64 28
  %i.bu = getelementptr i8, ptr %i.ai, i64 44
  %i.bv = getelementptr i8, ptr %i.ak, i64 60
  %i.bw = load float, ptr %i.bs, align 4
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = shufflevector <4 x float> %i.at, <4 x float> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = fmul <8 x float> %i.ac, %i.ce
  %i.cg = shufflevector <4 x float> %i.br, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = fmul <8 x float> %i.ad, %i.cg
  %interleaved.vec = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %scalar.ph.preheader, label %vector.body, !llvm.loop !154

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph178.split.us
  %.sroa.083.0176.us.ph = phi ptr [ %2, %vector.scevcheck ], [ %2, %.lr.ph178.split.us ], [ %i.ab, %vector.body ]
  %.sroa.7.0175.us.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph178.split.us ], [ %n.vec, %vector.body ]
  %i.cj = insertelement <4 x float> poison, float %i.c, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.083.0176.us = phi ptr [ %i.cl, %bb.d ], [ %.sroa.083.0176.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0175.us = phi i64 [ %i.cm, %bb.d ], [ %.sroa.7.0175.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.083.0176.us, i64 16 ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.7.0175.us, 1
  %i.cn = shl nuw nsw i64 %.sroa.7.0175.us, 2     ; 3 uses
  %exitcond252 = icmp eq i64 %.sroa.7.0175.us, %i.r
  br i1 %exitcond252, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.co = sub nuw nsw i64 %1, %i.cn               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.co
  br i1 %.not69.us, label %.split181.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cn
  %i.cp = load <4 x float>, ptr %gep, align 4
  %i.cq = fmul <4 x float> %i.ck, %i.cp
  store <4 x float> %i.cq, ptr %.sroa.083.0176.us, align 4
  %i.cr = icmp eq ptr %i.cl, %i.g
  br i1 %i.cr, label %._crit_edge179, label %scalar.ph, !llvm.loop !155

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph178.split:                                  ; preds = %.lr.ph178.split.preheader, %._crit_edge
  %.sroa.083.0176 = phi ptr [ %i.cs, %._crit_edge ], [ %2, %.lr.ph178.split.preheader ] ; 2 uses
  %.sroa.7.0175 = phi i64 [ %i.ct, %._crit_edge ], [ 0, %.lr.ph178.split.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.083.0176, i64 16 ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.7.0175, 1
  %i.cu = shl nuw nsw i64 %.sroa.7.0175, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0175, %i.n
  br i1 %exitcond, label %.split.us, label %bb.aa, !prof !5

._crit_edge179:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx206 = and i64 %i.f, 12                     ; 5 uses
  %i.cv = icmp samesign eq i64 %.idx206, 0
  br i1 %i.cv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge179
  %i.cw = mul nuw nsw i64 %i.a, 3                 ; 11 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5 ; 3 uses
  %i.cy = icmp eq i64 %i.a, 0
  br i1 %i.cy, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep204 = getelementptr [4 x i8], ptr %0, i64 %i.cw ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.da = icmp samesign ugt i64 %i.d, %1
  br i1 %i.da, label %.split198.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.db = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.dc = icmp samesign ult i64 %i.cw, %i.db
  br i1 %i.dc, label %bb.g, label %.split201.us

bb.g:                                             ; preds = %bb.f
  %gep205 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.d
  %i.dd = load float, ptr %gep205, align 4, !noundef !9
  %i.de = fmul float %i.c, %i.dd
  store float %i.de, ptr %i.e, align 4
  %i.df = icmp samesign eq i64 %.idx206, 4
  br i1 %i.df, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dh = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not427 = icmp samesign ult i64 %i.d, %1
  br i1 %.not427, label %bb.h, label %.split198.us, !prof !4

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %i.di = sub nuw nsw i64 %1, %i.dh               ; 2 uses
  %i.dj = icmp samesign ult i64 %i.cw, %i.di
  br i1 %i.dj, label %bb.i, label %.split201.us

bb.i:                                             ; preds = %bb.h
  %gep205.1 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.dh
  %i.dk = load float, ptr %gep205.1, align 4, !noundef !9
  %i.dl = fmul float %i.c, %i.dk
  store float %i.dl, ptr %i.cz, align 4
  %i.dm = icmp samesign eq i64 %.idx206, 8
  br i1 %i.dm, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2: ; preds = %bb.i
  %i.dn = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.do = icmp samesign ugt i64 %i.dn, %1
  br i1 %i.do, label %.split198.us, label %bb.j, !prof !5

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %i.dp = sub nuw nsw i64 %1, %i.dn               ; 2 uses
  %i.dq = icmp samesign ult i64 %i.cw, %i.dp
  br i1 %i.dq, label %bb.k, label %.split201.us

bb.k:                                             ; preds = %bb.j
  %gep205.2 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.dn
  %i.dr = load float, ptr %gep205.2, align 4, !noundef !9
  %i.ds = fmul float %i.c, %i.dr
  store float %i.ds, ptr %i.dg, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.du = icmp samesign ugt i64 %i.d, %1
  br i1 %i.du, label %.split198.us, label %bb.l, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge191, %._crit_edge191.1, %._crit_edge191.2, %bb.g, %bb.i, %bb.k, %._crit_edge179
  ret void

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.dv = sub nuw nsw i64 %1, %i.d                ; 6 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.dx = icmp samesign ult i64 %i.cw, %i.dv
  br i1 %i.dx, label %.lr.ph190, label %.split201.us

.split198.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %.us-phi199 = phi i64 [ %i.dn, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.ej, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1 ], [ %i.fj, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2 ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi199, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph190:                                        ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cw
  %i.dz = load float, ptr %i.dy, align 4, !noundef !9
  %i.ea = fmul float %i.c, %i.dz
  br label %bb.m

.split201.us:                                     ; preds = %bb.l, %bb.o, %bb.t, %bb.f, %bb.h, %bb.j
  %.us-phi202 = phi i64 [ %i.dp, %bb.j ], [ %i.db, %bb.f ], [ %i.di, %bb.h ], [ %i.dv, %bb.l ], [ %i.ek, %bb.o ], [ %i.fl, %bb.t ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %.us-phi202, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.m:                                             ; preds = %.lr.ph190, %bb.z
  %.sroa.026.0188 = phi float [ %i.ea, %.lr.ph190 ], [ %i.gu, %bb.z ] ; 2 uses
  %.sroa.1093.0187 = phi i64 [ 0, %.lr.ph190 ], [ %i.ee, %bb.z ] ; 3 uses
  %.sroa.792.0186 = phi i64 [ %i.a, %.lr.ph190 ], [ %i.eb, %bb.z ]
  %.sroa.090.0185 = phi ptr [ %4, %.lr.ph190 ], [ %i.ed, %bb.z ] ; 3 uses
  %i.eb = add nsw i64 %.sroa.792.0186, -1         ; 2 uses
  %i.ec = icmp eq ptr %.sroa.090.0185, %i.cx
  br i1 %i.ec, label %._crit_edge191, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.090.0185, i64 4
  %i.ee = add nuw nsw i64 %.sroa.1093.0187, 1
  %i.ef = load float, ptr %.sroa.090.0185, align 4, !noundef !9
  %i.eg = mul nuw nsw i64 %.sroa.1093.0187, 3     ; 3 uses
  %.not67.not = icmp samesign ult i64 %i.eg, %i.dv
  br i1 %.not67.not, label %bb.y, label %.loopexit, !prof !11

._crit_edge191:                                   ; preds = %bb.m, %bb.z
  %.sroa.026.0.lcssa = phi float [ %i.gu, %bb.z ], [ %.sroa.026.0188, %bb.m ]
  store float %.sroa.026.0.lcssa, ptr %i.e, align 4
  %i.eh = icmp samesign eq i64 %.idx206, 4
  br i1 %i.eh, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1: ; preds = %._crit_edge191
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ej = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not426 = icmp samesign ult i64 %i.d, %1
  br i1 %.not426, label %bb.o, label %.split198.us, !prof !4

bb.o:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1
  %i.ek = sub nuw nsw i64 %1, %i.ej               ; 6 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej ; 3 uses
  %i.em = icmp samesign ult i64 %i.cw, %i.ek
  br i1 %i.em, label %.lr.ph190.1, label %.split201.us

.lr.ph190.1:                                      ; preds = %bb.o
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.cw
  %i.eo = load float, ptr %i.en, align 4, !noundef !9
  %i.ep = fmul float %i.c, %i.eo
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph190.1
  %.sroa.026.0188.1 = phi float [ %i.ep, %.lr.ph190.1 ], [ %i.fg, %bb.s ] ; 2 uses
  %.sroa.1093.0187.1 = phi i64 [ 0, %.lr.ph190.1 ], [ %i.et, %bb.s ] ; 3 uses
  %.sroa.792.0186.1 = phi i64 [ %i.a, %.lr.ph190.1 ], [ %i.eq, %bb.s ]
  %.sroa.090.0185.1 = phi ptr [ %4, %.lr.ph190.1 ], [ %i.es, %bb.s ] ; 3 uses
  %i.eq = add nsw i64 %.sroa.792.0186.1, -1       ; 2 uses
  %i.er = icmp eq ptr %.sroa.090.0185.1, %i.cx
  br i1 %i.er, label %._crit_edge191.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.090.0185.1, i64 4
  %i.et = add nuw nsw i64 %.sroa.1093.0187.1, 1
  %i.eu = load float, ptr %.sroa.090.0185.1, align 4, !noundef !9
  %i.ev = mul nuw nsw i64 %.sroa.1093.0187.1, 3   ; 3 uses
  %.not67.not.1 = icmp samesign ult i64 %i.ev, %i.ek
  br i1 %.not67.not.1, label %bb.r, label %.loopexit, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ew = xor i64 %.sroa.1093.0187.1, -1
  %i.ex = add nsw i64 %5, %i.ew
  %i.ey = mul nsw i64 %i.ex, 3                    ; 3 uses
  %i.ez = add nsw i64 %i.ey, 1                    ; 2 uses
  %.not68.1 = icmp ugt i64 %i.ez, %i.ek
  br i1 %.not68.1, label %.loopexit411, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ev
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ey
  %i.fc = load float, ptr %i.fa, align 4, !noundef !9
  %i.fd = load float, ptr %i.fb, align 4, !noundef !9
  %i.fe = fadd float %i.fc, %i.fd
  %i.ff = fmul float %i.eu, %i.fe
  %i.fg = fadd float %.sroa.026.0188.1, %i.ff     ; 2 uses
  %i.fh = icmp eq i64 %i.eq, 0
  br i1 %i.fh, label %._crit_edge191.1, label %bb.p

._crit_edge191.1:                                 ; preds = %bb.s, %bb.p
  %.sroa.026.0.lcssa.1 = phi float [ %i.fg, %bb.s ], [ %.sroa.026.0188.1, %bb.p ]
  store float %.sroa.026.0.lcssa.1, ptr %i.dt, align 4
  %i.fi = icmp samesign eq i64 %.idx206, 8
  br i1 %i.fi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2: ; preds = %._crit_edge191.1
  %i.fj = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.fk = icmp samesign ugt i64 %i.fj, %1
  br i1 %i.fk, label %.split198.us, label %bb.t, !prof !5

bb.t:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2
  %i.fl = sub nuw nsw i64 %1, %i.fj               ; 6 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fj ; 3 uses
  %i.fn = icmp samesign ult i64 %i.cw, %i.fl
  br i1 %i.fn, label %.lr.ph190.2, label %.split201.us

.lr.ph190.2:                                      ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.cw
  %i.fp = load float, ptr %i.fo, align 4, !noundef !9
  %i.fq = fmul float %i.c, %i.fp
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph190.2
  %.sroa.026.0188.2 = phi float [ %i.fq, %.lr.ph190.2 ], [ %i.gh, %bb.x ] ; 2 uses
  %.sroa.1093.0187.2 = phi i64 [ 0, %.lr.ph190.2 ], [ %i.fu, %bb.x ] ; 3 uses
  %.sroa.792.0186.2 = phi i64 [ %i.a, %.lr.ph190.2 ], [ %i.fr, %bb.x ]
  %.sroa.090.0185.2 = phi ptr [ %4, %.lr.ph190.2 ], [ %i.ft, %bb.x ] ; 3 uses
  %i.fr = add nsw i64 %.sroa.792.0186.2, -1       ; 2 uses
  %i.fs = icmp eq ptr %.sroa.090.0185.2, %i.cx
  br i1 %i.fs, label %._crit_edge191.2, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.090.0185.2, i64 4
  %i.fu = add nuw nsw i64 %.sroa.1093.0187.2, 1
  %i.fv = load float, ptr %.sroa.090.0185.2, align 4, !noundef !9
  %i.fw = mul nuw nsw i64 %.sroa.1093.0187.2, 3   ; 3 uses
  %.not67.not.2 = icmp samesign ult i64 %i.fw, %i.fl
  br i1 %.not67.not.2, label %bb.w, label %.loopexit, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.fx = xor i64 %.sroa.1093.0187.2, -1
  %i.fy = add nsw i64 %5, %i.fx
  %i.fz = mul nsw i64 %i.fy, 3                    ; 3 uses
  %i.ga = add nsw i64 %i.fz, 1                    ; 2 uses
  %.not68.2 = icmp ugt i64 %i.ga, %i.fl
  br i1 %.not68.2, label %.loopexit411, label %bb.x, !prof !6

bb.x:                                             ; preds = %bb.w
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fw
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fz
  %i.gd = load float, ptr %i.gb, align 4, !noundef !9
  %i.ge = load float, ptr %i.gc, align 4, !noundef !9
  %i.gf = fadd float %i.gd, %i.ge
  %i.gg = fmul float %i.fv, %i.gf
  %i.gh = fadd float %.sroa.026.0188.2, %i.gg     ; 2 uses
  %i.gi = icmp eq i64 %i.fr, 0
  br i1 %i.gi, label %._crit_edge191.2, label %bb.u

._crit_edge191.2:                                 ; preds = %bb.x, %bb.u
  %.sroa.026.0.lcssa.2 = phi float [ %i.gh, %bb.x ], [ %.sroa.026.0188.2, %bb.u ]
  store float %.sroa.026.0.lcssa.2, ptr %i.ei, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.n
  %.lcssa385 = phi i64 [ %i.dv, %bb.n ], [ %i.ek, %bb.q ], [ %i.fl, %bb.v ]
  %.lcssa375 = phi i64 [ %i.eg, %bb.n ], [ %i.ev, %bb.q ], [ %i.fw, %bb.v ] ; 2 uses
  %i.gj = add nuw nsw i64 %.lcssa375, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa375, i64 noundef %i.gj, i64 noundef %.lcssa385, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.y:                                             ; preds = %bb.n
  %i.gk = xor i64 %.sroa.1093.0187, -1
  %i.gl = add nsw i64 %5, %i.gk
  %i.gm = mul nsw i64 %i.gl, 3                    ; 3 uses
  %i.gn = add nsw i64 %i.gm, 1                    ; 2 uses
  %.not68 = icmp ugt i64 %i.gn, %i.dv
  br i1 %.not68, label %.loopexit411, label %bb.z, !prof !6

.loopexit411:                                     ; preds = %bb.w, %bb.r, %bb.y
  %.lcssa386 = phi i64 [ %i.dv, %bb.y ], [ %i.ek, %bb.r ], [ %i.fl, %bb.w ]
  %.lcssa378 = phi i64 [ %i.gm, %bb.y ], [ %i.ey, %bb.r ], [ %i.fz, %bb.w ]
  %.lcssa377 = phi i64 [ %i.gn, %bb.y ], [ %i.ez, %bb.r ], [ %i.ga, %bb.w ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa378, i64 noundef %.lcssa377, i64 noundef %.lcssa386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eg
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gm
  %i.gq = load float, ptr %i.go, align 4, !noundef !9
  %i.gr = load float, ptr %i.gp, align 4, !noundef !9
  %i.gs = fadd float %i.gq, %i.gr
  %i.gt = fmul float %i.ef, %i.gs
  %i.gu = fadd float %.sroa.026.0188, %i.gt       ; 2 uses
  %i.gv = icmp eq i64 %i.eb, 0
  br i1 %i.gv, label %._crit_edge191, label %bb.m

bb.aa:                                            ; preds = %.lr.ph178.split
  %i.gw = sub nuw nsw i64 %1, %i.cu               ; 6 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cu ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.gw
  br i1 %.not69, label %.split181.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph178.split, %scalar.ph
  %.us-phi = phi i64 [ %i.cn, %scalar.ph ], [ %i.cu, %.lr.ph178.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split181.us:                                     ; preds = %bb.aa, %bb.c
  %.us-phi182 = phi i64 [ %i.co, %bb.c ], [ %i.gw, %bb.aa ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.aa
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.i
  %i.gz = load <4 x float>, ptr %i.gy, align 4
  %i.ha = fmul <4 x float> %i.p, %i.gz
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ag
  %.sroa.084.0162 = phi ptr [ %4, %.lr.ph ], [ %i.he, %bb.ag ] ; 3 uses
  %.sroa.786.0161 = phi i64 [ %i.a, %.lr.ph ], [ %i.hc, %bb.ag ]
  %.sroa.10.0160 = phi i64 [ 0, %.lr.ph ], [ %i.hf, %bb.ag ] ; 3 uses
  %i.hb = phi <4 x float> [ %i.ha, %.lr.ph ], [ %i.hy, %bb.ag ] ; 2 uses
  %i.hc = add nsw i64 %.sroa.786.0161, -1         ; 2 uses
  %i.hd = icmp eq ptr %.sroa.084.0162, %i.k
  br i1 %i.hd, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.084.0162, i64 4
  %i.hf = add nuw nsw i64 %.sroa.10.0160, 1
  %i.hg = load float, ptr %.sroa.084.0162, align 4, !noundef !9
  %i.hh = mul nuw nsw i64 %.sroa.10.0160, 3       ; 3 uses
  %i.hi = add nuw nsw i64 %i.hh, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.hi, %i.gw
  br i1 %.not71, label %bb.ad, label %bb.ae, !prof !6

._crit_edge:                                      ; preds = %bb.ab, %bb.ag
  %i.hj = phi <4 x float> [ %i.hy, %bb.ag ], [ %i.hb, %bb.ab ]
  store <4 x float> %i.hj, ptr %.sroa.083.0176, align 4
  %i.hk = icmp eq ptr %i.cs, %i.g
  br i1 %i.hk, label %._crit_edge179, label %.lr.ph178.split

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.hh, i64 noundef %i.hi, i64 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.hl = xor i64 %.sroa.10.0160, -1
  %i.hm = add nsw i64 %5, %i.hl
  %i.hn = mul nsw i64 %i.hm, 3                    ; 4 uses
  %i.ho = add nsw i64 %i.hn, 4                    ; 2 uses
  %i.hp = icmp ugt i64 %i.hn, -5
  %.not72 = icmp ugt i64 %i.ho, %i.gw
  %or.cond75 = or i1 %i.hp, %.not72
  br i1 %or.cond75, label %bb.af, label %bb.ag, !prof !6

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.hn, i64 noundef %i.ho, i64 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.hh
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.hn
  %i.hs = load <4 x float>, ptr %i.hq, align 4
  %i.ht = load <4 x float>, ptr %i.hr, align 4
  %i.hu = fadd <4 x float> %i.hs, %i.ht
  %i.hv = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = fmul <4 x float> %i.hw, %i.hu
  %i.hy = fadd <4 x float> %i.hb, %i.hx           ; 2 uses
  %i.hz = icmp eq i64 %i.hc, 0
  br i1 %i.hz, label %._crit_edge, label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj4_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 10 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 9 uses
  %i.d = and i64 %3, 2305843009213693948          ; 15 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 4 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.a, 2                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph170.split.us, label %.lr.ph170.split.preheader

.lr.ph170.split.preheader:                        ; preds = %.lr.ph170
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph170.split

.lr.ph170.split.us:                               ; preds = %.lr.ph170
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 3 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %6 = add nuw nsw i64 %i.w, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph170.split.us
  %7 = lshr i64 %1, 2
  %8 = add nsw i64 %i.f, -16
  %9 = lshr i64 %8, 4
  %umin343 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9)
  %umin344 = tail call i64 @llvm.umin.i64(i64 %umin343, i64 %i.r)
  %mul = shl nuw nsw i64 %umin344, 4
  %10 = getelementptr i8, ptr %2, i64 %mul
  %11 = icmp ult ptr %10, %2
  br i1 %11, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.x = and i64 %6, 3                            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 4, i64 %i.x
  %n.vec = sub nsw i64 %6, %i.z                   ; 3 uses
  %i.aa = shl i64 %n.vec, 4
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ac = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ae = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.ae
  %.idx344 = shl i64 %index, 4
  %i.af = getelementptr i8, ptr %invariant.gep, i64 %.idx344 ; 4 uses
  %.idx345 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx345 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %.idx346 = shl i64 %index, 4
  %i.ai = getelementptr i8, ptr %invariant.gep, i64 %.idx346 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.idx347 = shl i64 %index, 4
  %i.ak = getelementptr i8, ptr %invariant.gep, i64 %.idx347 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %i.am = load float, ptr %i.af, align 4
  %i.an = load float, ptr %i.ah, align 4
  %i.ao = load float, ptr %i.aj, align 4
  %i.ap = load float, ptr %i.al, align 4
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.av = getelementptr i8, ptr %i.ag, i64 20
  %i.aw = getelementptr i8, ptr %i.ai, i64 36
  %i.ax = getelementptr i8, ptr %i.ak, i64 52
  %i.ay = load float, ptr %i.au, align 4
  %i.az = load float, ptr %i.av, align 4
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %i.ax, align 4
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bh = getelementptr i8, ptr %i.ag, i64 24
  %i.bi = getelementptr i8, ptr %i.ai, i64 40
  %i.bj = getelementptr i8, ptr %i.ak, i64 56
  %i.bk = load float, ptr %i.bg, align 4
  %i.bl = load float, ptr %i.bh, align 4
  %i.bm = load float, ptr %i.bi, align 4
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.bt = getelementptr i8, ptr %i.ag, i64 28
  %i.bu = getelementptr i8, ptr %i.ai, i64 44
  %i.bv = getelementptr i8, ptr %i.ak, i64 60
  %i.bw = load float, ptr %i.bs, align 4
  %i.bx = load float, ptr %i.bt, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = load float, ptr %i.bv, align 4
  %i.ca = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = shufflevector <4 x float> %i.at, <4 x float> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = fmul <8 x float> %i.ac, %i.ce
  %i.cg = shufflevector <4 x float> %i.br, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = fmul <8 x float> %i.ad, %i.cg
  %interleaved.vec = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %scalar.ph.preheader, label %vector.body, !llvm.loop !156

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph170.split.us
  %.sroa.081.0168.us.ph = phi ptr [ %2, %vector.scevcheck ], [ %2, %.lr.ph170.split.us ], [ %i.ab, %vector.body ]
  %.sroa.7.0167.us.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph170.split.us ], [ %n.vec, %vector.body ]
  %i.cj = insertelement <4 x float> poison, float %i.c, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0168.us = phi ptr [ %i.cl, %bb.d ], [ %.sroa.081.0168.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0167.us = phi i64 [ %i.cm, %bb.d ], [ %.sroa.7.0167.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.081.0168.us, i64 16 ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.7.0167.us, 1
  %i.cn = shl nuw nsw i64 %.sroa.7.0167.us, 2     ; 3 uses
  %exitcond238 = icmp eq i64 %.sroa.7.0167.us, %i.r
  br i1 %exitcond238, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.co = sub nuw nsw i64 %1, %i.cn               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.co
  br i1 %.not69.us, label %.split173.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cn
  %i.cp = load <4 x float>, ptr %gep, align 4
  %i.cq = fmul <4 x float> %i.ck, %i.cp
  store <4 x float> %i.cq, ptr %.sroa.081.0168.us, align 4
  %i.cr = icmp eq ptr %i.cl, %i.g
  br i1 %i.cr, label %._crit_edge171, label %scalar.ph, !llvm.loop !157

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph170.split:                                  ; preds = %.lr.ph170.split.preheader, %._crit_edge
  %.sroa.081.0168 = phi ptr [ %i.cs, %._crit_edge ], [ %2, %.lr.ph170.split.preheader ] ; 2 uses
  %.sroa.7.0167 = phi i64 [ %i.ct, %._crit_edge ], [ 0, %.lr.ph170.split.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.081.0168, i64 16 ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.7.0167, 1
  %i.cu = shl nuw nsw i64 %.sroa.7.0167, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0167, %i.n
  br i1 %exitcond, label %.split.us, label %bb.aa, !prof !5

._crit_edge171:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx198 = and i64 %i.f, 12                     ; 5 uses
  %i.cv = icmp samesign eq i64 %.idx198, 0
  br i1 %i.cv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge171
  %i.cw = shl nuw nsw i64 %i.a, 2                 ; 11 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5 ; 3 uses
  %i.cy = icmp eq i64 %i.a, 0
  br i1 %i.cy, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep196 = getelementptr [4 x i8], ptr %0, i64 %i.cw ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.da = icmp samesign ugt i64 %i.d, %1
  br i1 %i.da, label %.split190.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.db = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.dc = icmp samesign ult i64 %i.cw, %i.db
  br i1 %i.dc, label %bb.g, label %.split193.us

bb.g:                                             ; preds = %bb.f
  %gep197 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.d
  %i.dd = load float, ptr %gep197, align 4, !noundef !9
  %i.de = fmul float %i.c, %i.dd
  store float %i.de, ptr %i.e, align 4
  %i.df = icmp samesign eq i64 %.idx198, 4
  br i1 %i.df, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dh = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not401 = icmp samesign ult i64 %i.d, %1
  br i1 %.not401, label %bb.h, label %.split190.us, !prof !4

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %i.di = sub nuw nsw i64 %1, %i.dh               ; 2 uses
  %i.dj = icmp samesign ult i64 %i.cw, %i.di
  br i1 %i.dj, label %bb.i, label %.split193.us

bb.i:                                             ; preds = %bb.h
  %gep197.1 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.dh
  %i.dk = load float, ptr %gep197.1, align 4, !noundef !9
  %i.dl = fmul float %i.c, %i.dk
  store float %i.dl, ptr %i.cz, align 4
  %i.dm = icmp samesign eq i64 %.idx198, 8
  br i1 %i.dm, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2: ; preds = %bb.i
  %i.dn = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.do = icmp samesign ugt i64 %i.dn, %1
  br i1 %i.do, label %.split190.us, label %bb.j, !prof !5

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %i.dp = sub nuw nsw i64 %1, %i.dn               ; 2 uses
  %i.dq = icmp samesign ult i64 %i.cw, %i.dp
  br i1 %i.dq, label %bb.k, label %.split193.us

bb.k:                                             ; preds = %bb.j
  %gep197.2 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.dn
  %i.dr = load float, ptr %gep197.2, align 4, !noundef !9
  %i.ds = fmul float %i.c, %i.dr
  store float %i.ds, ptr %i.dg, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.du = icmp samesign ugt i64 %i.d, %1
  br i1 %i.du, label %.split190.us, label %bb.l, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge183, %._crit_edge183.1, %._crit_edge183.2, %bb.g, %bb.i, %bb.k, %._crit_edge171
  ret void

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.dv = sub nuw nsw i64 %1, %i.d                ; 6 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.dx = icmp samesign ult i64 %i.cw, %i.dv
  br i1 %i.dx, label %.lr.ph182, label %.split193.us

.split190.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %.us-phi191 = phi i64 [ %i.dn, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.ej, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1 ], [ %i.fi, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2 ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi191, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph182:                                        ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cw
  %i.dz = load float, ptr %i.dy, align 4, !noundef !9
  %i.ea = fmul float %i.c, %i.dz
  br label %bb.m

.split193.us:                                     ; preds = %bb.l, %bb.o, %bb.t, %bb.f, %bb.h, %bb.j
  %.us-phi194 = phi i64 [ %i.dp, %bb.j ], [ %i.db, %bb.f ], [ %i.di, %bb.h ], [ %i.dv, %bb.l ], [ %i.ek, %bb.o ], [ %i.fk, %bb.t ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %.us-phi194, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.m:                                             ; preds = %.lr.ph182, %bb.z
  %.sroa.026.0180 = phi float [ %i.ea, %.lr.ph182 ], [ %i.gs, %bb.z ] ; 2 uses
  %.sroa.1091.0179 = phi i64 [ 0, %.lr.ph182 ], [ %i.ee, %bb.z ] ; 3 uses
  %.sroa.790.0178 = phi i64 [ %i.a, %.lr.ph182 ], [ %i.eb, %bb.z ]
  %.sroa.088.0177 = phi ptr [ %4, %.lr.ph182 ], [ %i.ed, %bb.z ] ; 3 uses
  %i.eb = add nsw i64 %.sroa.790.0178, -1         ; 2 uses
  %i.ec = icmp eq ptr %.sroa.088.0177, %i.cx
  br i1 %i.ec, label %._crit_edge183, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.088.0177, i64 4
  %i.ee = add nuw nsw i64 %.sroa.1091.0179, 1
  %i.ef = load float, ptr %.sroa.088.0177, align 4, !noundef !9
  %i.eg = shl nuw nsw i64 %.sroa.1091.0179, 2     ; 3 uses
  %.not67.not = icmp samesign ult i64 %i.eg, %i.dv
  br i1 %.not67.not, label %bb.y, label %.loopexit, !prof !4

._crit_edge183:                                   ; preds = %bb.m, %bb.z
  %.sroa.026.0.lcssa = phi float [ %i.gs, %bb.z ], [ %.sroa.026.0180, %bb.m ]
  store float %.sroa.026.0.lcssa, ptr %i.e, align 4
  %i.eh = icmp samesign eq i64 %.idx198, 4
  br i1 %i.eh, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1: ; preds = %._crit_edge183
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ej = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not400 = icmp samesign ult i64 %i.d, %1
  br i1 %.not400, label %bb.o, label %.split190.us, !prof !4

bb.o:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1
  %i.ek = sub nuw nsw i64 %1, %i.ej               ; 6 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej ; 3 uses
  %i.em = icmp samesign ult i64 %i.cw, %i.ek
  br i1 %i.em, label %.lr.ph182.1, label %.split193.us

.lr.ph182.1:                                      ; preds = %bb.o
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.cw
  %i.eo = load float, ptr %i.en, align 4, !noundef !9
  %i.ep = fmul float %i.c, %i.eo
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph182.1
  %.sroa.026.0180.1 = phi float [ %i.ep, %.lr.ph182.1 ], [ %i.ff, %bb.s ] ; 2 uses
  %.sroa.1091.0179.1 = phi i64 [ 0, %.lr.ph182.1 ], [ %i.et, %bb.s ] ; 3 uses
  %.sroa.790.0178.1 = phi i64 [ %i.a, %.lr.ph182.1 ], [ %i.eq, %bb.s ]
  %.sroa.088.0177.1 = phi ptr [ %4, %.lr.ph182.1 ], [ %i.es, %bb.s ] ; 3 uses
  %i.eq = add nsw i64 %.sroa.790.0178.1, -1       ; 2 uses
  %i.er = icmp eq ptr %.sroa.088.0177.1, %i.cx
  br i1 %i.er, label %._crit_edge183.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.088.0177.1, i64 4
  %i.et = add nuw nsw i64 %.sroa.1091.0179.1, 1
  %i.eu = load float, ptr %.sroa.088.0177.1, align 4, !noundef !9
  %i.ev = shl nuw nsw i64 %.sroa.1091.0179.1, 2   ; 3 uses
  %.not67.not.1 = icmp samesign ult i64 %i.ev, %i.ek
  br i1 %.not67.not.1, label %bb.r, label %.loopexit, !prof !4

bb.r:                                             ; preds = %bb.q
  %i.ew = xor i64 %.sroa.1091.0179.1, -1
  %i.ex = add nsw i64 %5, %i.ew
  %i.ey = shl nsw i64 %i.ex, 2                    ; 3 uses
  %.not68.not.1 = icmp ult i64 %i.ey, %i.ek
  br i1 %.not68.not.1, label %bb.s, label %.loopexit387, !prof !4

end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image
; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold }
attributes #13 = { noinline noreturn }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 4001, i32 4000000}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"branch_weights", i32 4000000, i32 4001}
!12 = !{!"branch_weights", i32 8, i32 24}
!13 = !{!"branch_weights", i32 4, i32 12}
!14 = !{i64 0, i64 2}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = !{i8 -1, i8 10}
!17 = !{!"address", !"read_provenance"}
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7, !8}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7, !8}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7, !8}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7, !8}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7, !8}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7, !8}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7, !8}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7, !8}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7, !8}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7, !8}
!55 = distinct !{!55, !7, !8}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7, !8}
!59 = distinct !{!59, !7, !8}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7, !8}
!63 = distinct !{!63, !7, !8}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7, !8}
!67 = distinct !{!67, !7, !8}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7, !8}
!71 = distinct !{!71, !7, !8}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7, !8}
!75 = distinct !{!75, !7, !8}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7, !8}
!79 = distinct !{!79, !7, !8}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7, !8}
!83 = distinct !{!83, !7, !8}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !7}
!86 = distinct !{!86, !7, !8}
!87 = distinct !{!87, !7, !8}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !7}
!90 = distinct !{!90, !7, !8}
!91 = distinct !{!91, !7, !8}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !7}
!94 = distinct !{!94, !7, !8}
!95 = distinct !{!95, !7, !8}
!96 = distinct !{!96, !10}
!97 = distinct !{!97, !7}
!98 = distinct !{!98, !7, !8}
!99 = distinct !{!99, !7, !8}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !7}
!102 = distinct !{!102, !7, !8}
!103 = distinct !{!103, !7, !8}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !7}
!106 = distinct !{!106, !7, !8}
!107 = distinct !{!107, !7, !8}
!108 = distinct !{!108, !10}
!109 = distinct !{!109, !7}
!110 = distinct !{!110, !7, !8}
!111 = distinct !{!111, !7, !8}
!112 = distinct !{!112, !10}
!113 = distinct !{!113, !7}
!114 = distinct !{!114, !7, !8}
!115 = distinct !{!115, !7, !8}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !7}
!118 = distinct !{!118, !7, !8}
!119 = distinct !{!119, !7, !8}
!120 = distinct !{!120, !10}
!121 = distinct !{!121, !7}
!122 = distinct !{!122, !7, !8}
!123 = distinct !{!123, !7, !8}
!124 = distinct !{!124, !10}
!125 = distinct !{!125, !7}
!126 = distinct !{!126, !7, !8}
!127 = distinct !{!127, !7, !8}
!128 = distinct !{!128, !10}
!129 = distinct !{!129, !7}
!130 = distinct !{!130, !7, !8}
!131 = distinct !{!131, !7, !8}
!132 = distinct !{!132, !10}
!133 = distinct !{!133, !7}
!134 = distinct !{!134, !7, !8}
!135 = distinct !{!135, !7, !8}
!136 = distinct !{!136, !10}
!137 = distinct !{!137, !7}
!138 = distinct !{!138, !7, !8}
!139 = distinct !{!139, !7, !8}
!140 = distinct !{!140, !10}
!141 = distinct !{!141, !7}
!142 = distinct !{!142, !7, !8}
!143 = distinct !{!143, !7, !8}
!144 = distinct !{!144, !10}
!145 = distinct !{!145, !7}
!146 = distinct !{!146, !7, !8}
!147 = distinct !{!147, !7, !8}
!148 = distinct !{!148, !10}
!149 = distinct !{!149, !7}
!150 = distinct !{!150, !7, !8}
!151 = distinct !{!151, !7}
!152 = distinct !{!152, !7, !8}
!153 = distinct !{!153, !7}
!154 = distinct !{!154, !7, !8}
!155 = distinct !{!155, !7}
!156 = distinct !{!156, !7, !8}
!157 = distinct !{!157, !7}
!158 = distinct !{!158, !7}
!159 = distinct !{!159, i1 true, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutfEINtBU_4IterfEENtNtNtBa_6traits8iterator8Iterator3zipRSfECsa5QsYiPB8Gl_5image"}
!160 = distinct !{!160, !159, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutfEINtBU_4IterfEENtNtNtBa_6traits8iterator8Iterator3zipRSfECsa5QsYiPB8Gl_5image: argument 2"}
!161 = distinct !{!161, !159, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutfEINtBU_4IterfEENtNtNtBa_6traits8iterator8Iterator3zipRSfECsa5QsYiPB8Gl_5image: argument 1"}
!162 = distinct !{!162, !159, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutfEINtBU_4IterfEENtNtNtBa_6traits8iterator8Iterator3zipRSfECsa5QsYiPB8Gl_5image: argument 0"}
!163 = distinct !{!163, !7}
!164 = distinct !{!164, !7}
!165 = distinct !{!165, !7, !8}
!166 = distinct !{!166, !10}
!167 = distinct !{!167, i1 false, !"LVerDomain"}
!168 = distinct !{!168, !167}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !167}
!171 = distinct !{!171, !7, !8}
!172 = distinct !{!172, !7, !8}
!173 = distinct !{!173, !10}
!174 = !{i64 4}
!175 = !{!162, !161, !160}
!176 = !{!161}
!177 = !{!168}
!178 = !{!170, !169}
!179 = !{!170}
!180 = !{!169}
!181 = distinct !{!181, !7}
!182 = distinct !{!182, !7}
!183 = distinct !{!183, i1 true, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image"}
!184 = distinct !{!184, !183, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 2"}
!185 = distinct !{!185, !183, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 1"}
!186 = distinct !{!186, !183, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 0"}
!187 = distinct !{!187, !7}
!188 = distinct !{!188, i1 true, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image"}
!189 = distinct !{!189, !188, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 2"}
!190 = distinct !{!190, !188, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 1"}
!191 = distinct !{!191, !188, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 0"}
!192 = distinct !{!192, !7}
!193 = distinct !{!193, !7}
!194 = distinct !{!194, !7}
!195 = distinct !{!195, i1 false, !"LVerDomain"}
!196 = distinct !{!196, !195}
!197 = distinct !{!197, !195}
!198 = distinct !{!198, !7, !8}
!199 = distinct !{!199, !10}
!200 = distinct !{!200, i1 false, !"LVerDomain"}
!201 = distinct !{!201, !200}
!202 = distinct !{!202, !200}
!203 = distinct !{!203, !7, !8}
!204 = distinct !{!204, !10}
!205 = distinct !{!205, i1 false, !"LVerDomain"}
!206 = distinct !{!206, !205}
!207 = distinct !{!207, !205}
!208 = distinct !{!208, !205}
!209 = distinct !{!209, !7, !8}
!210 = distinct !{!210, i1 false, !"LVerDomain"}
!211 = distinct !{!211, !210}
!212 = distinct !{!212, !210}
!213 = distinct !{!213, !210}
!214 = distinct !{!214, !7, !8}
!215 = distinct !{!215, i1 false, !"LVerDomain"}
!216 = distinct !{!216, !215}
!217 = distinct !{!217, !215}
!218 = distinct !{!218, !7, !8}
!219 = distinct !{!219, i1 false, !"LVerDomain"}
!220 = distinct !{!220, !219}
!221 = distinct !{!221, !219}
!222 = distinct !{!222, !7, !8}
!223 = distinct !{!223, i1 false, !"LVerDomain"}
!224 = distinct !{!224, !223}
!225 = distinct !{!225, !223}
!226 = distinct !{!226, !7, !8}
!227 = distinct !{!227, !10}
!228 = distinct !{!228, !7}
!229 = distinct !{!229, i1 true, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image"}
!230 = distinct !{!230, !229, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 2"}
!231 = distinct !{!231, !229, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 1"}
!232 = distinct !{!232, !229, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4IterhEENtNtNtBa_6traits8iterator8Iterator3zipRShECsa5QsYiPB8Gl_5image: argument 0"}
!233 = distinct !{!233, i1 false, !"LVerDomain"}
!234 = distinct !{!234, !233}
!235 = distinct !{!235, !233}
!236 = distinct !{!236, !233}
!237 = distinct !{!237, !7, !8}
!238 = distinct !{!238, !7}
!239 = distinct !{!239, i1 false, !"LVerDomain"}
!240 = distinct !{!240, !239}
!241 = distinct !{!241, !239}
!242 = distinct !{!242, !7, !8}
!243 = distinct !{!243, !7}
!244 = !{!186, !185, !184}
!245 = !{!185}
!246 = !{!191, !190, !189}
!247 = !{!190}
!248 = !{!196}
!249 = !{!197}
!250 = !{!201}
!251 = !{!202}
!252 = !{!206}
!253 = !{!208, !207}
!254 = !{!208}
!255 = !{!207}
!256 = !{!211}
!257 = !{!213, !212}
!258 = !{!213}
!259 = !{!212}
!260 = !{!216}
!261 = !{!217}
!262 = !{!220}
!263 = !{!221}
!264 = !{!224}
!265 = !{!225}
!266 = !{!232, !231, !230}
!267 = !{!231}
!268 = !{!234}
!269 = !{!236, !235}
!270 = !{!236}
!271 = !{!235}
!272 = !{!240}
!273 = !{!241}
!274 = distinct !{!274, !7}
!275 = distinct !{!275, i1 true, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4ItertEENtNtNtBa_6traits8iterator8Iterator3zipRStECsa5QsYiPB8Gl_5image"}
!276 = distinct !{!276, !275, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4ItertEENtNtNtBa_6traits8iterator8Iterator3zipRStECsa5QsYiPB8Gl_5image: argument 2"}
!277 = distinct !{!277, !275, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4ItertEENtNtNtBa_6traits8iterator8Iterator3zipRStECsa5QsYiPB8Gl_5image: argument 1"}
!278 = distinct !{!278, !275, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutmEINtBU_4ItertEENtNtNtBa_6traits8iterator8Iterator3zipRStECsa5QsYiPB8Gl_5image: argument 0"}
!279 = distinct !{!279, !7}
!280 = distinct !{!280, !7}
!281 = distinct !{!281, i1 false, !"LVerDomain"}
!282 = distinct !{!282, !281}
!283 = distinct !{!283, !281}
!284 = distinct !{!284, !7, !8}
!285 = distinct !{!285, !10}
!286 = distinct !{!286, i1 false, !"LVerDomain"}
!287 = distinct !{!287, !286}
!288 = distinct !{!288, !286}
!289 = distinct !{!289, !286}
!290 = distinct !{!290, !7, !8}
!291 = distinct !{!291, i1 false, !"LVerDomain"}
!292 = distinct !{!292, !291}
!293 = distinct !{!293, !291}
!294 = distinct !{!294, !7, !8}
!295 = !{i64 2}
!296 = !{!278, !277, !276}
!297 = !{!277}
!298 = !{!282}
!299 = !{!283}
!300 = !{!287}
!301 = !{!289, !288}
!302 = !{!289}
!303 = !{!288}
!304 = !{!292}
!305 = !{!293}
!306 = distinct !{!306, i1 true, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!307 = distinct !{!307, !306, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!308 = distinct !{!308, !306, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 1"}
!309 = !{!307}
!310 = !{!307, !308}
!311 = distinct !{!311, i1 true, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!312 = distinct !{!312, !311, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!313 = distinct !{!313, !311, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 1"}
!314 = !{!312}
!315 = !{!312, !313}
!316 = distinct !{!316, i1 true, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_EB6_"}
!317 = distinct !{!317, !316, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_EB6_: argument 0"}
!318 = distinct !{!318, !316, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_EB6_: argument 4"}
!319 = distinct !{!319, !316, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_EB6_: argument 3"}
!320 = distinct !{!320, !316, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_EB6_: argument 2"}
!321 = distinct !{!321, !316, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_EB6_: argument 1"}
!322 = distinct !{!322, i1 true, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d30filter_2d_separable_ring_queuehmKj2_EB6_"}
!323 = distinct !{!323, !322, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d30filter_2d_separable_ring_queuehmKj2_EB6_: argument 0"}
!324 = distinct !{!324, !322, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d30filter_2d_separable_ring_queuehmKj2_EB6_: argument 4"}
!325 = distinct !{!325, !322, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d30filter_2d_separable_ring_queuehmKj2_EB6_: argument 3"}
!326 = distinct !{!326, !322, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d30filter_2d_separable_ring_queuehmKj2_EB6_: argument 2"}
!327 = distinct !{!327, !322, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d30filter_2d_separable_ring_queuehmKj2_EB6_: argument 1"}
!328 = distinct !{!328, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!329 = distinct !{!329, !328, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!330 = distinct !{!330, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!331 = distinct !{!331, !330, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!332 = distinct !{!332, !7, !8}
!333 = distinct !{!333, !7, !8}
!334 = distinct !{!334, !10}
!335 = distinct !{!335, !7}
!336 = distinct !{!336, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!337 = distinct !{!337, !336, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!338 = distinct !{!338, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!339 = distinct !{!339, !338, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!340 = distinct !{!340, i1 true, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19make_columns_arenashKj2_EB6_"}
!341 = distinct !{!341, !340, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19make_columns_arenashKj2_EB6_: argument 1"}
!342 = distinct !{!342, !340, !"_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19make_columns_arenashKj2_EB6_: argument 0"}
!343 = distinct !{!343, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!344 = distinct !{!344, !343, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!345 = distinct !{!345, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image"}
!346 = distinct !{!346, !345, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image: argument 0"}
!347 = distinct !{!347, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtBa_5slice4iter14ChunksExactMuthEECsa5QsYiPB8Gl_5image"}
!348 = distinct !{!348, !347, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtBa_5slice4iter14ChunksExactMuthEECsa5QsYiPB8Gl_5image: argument 1"}
!349 = distinct !{!349, !347, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtBa_5slice4iter14ChunksExactMuthEECsa5QsYiPB8Gl_5image: argument 0"}
!350 = distinct !{!350, i1 true, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB8_5slice4iter14ChunksExactMuthENtB2_12IntoIterator9into_iterCsa5QsYiPB8Gl_5image"}
!351 = distinct !{!351, !350, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB8_5slice4iter14ChunksExactMuthENtB2_12IntoIterator9into_iterCsa5QsYiPB8Gl_5image: argument 1"}
!352 = distinct !{!352, !350, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB8_5slice4iter14ChunksExactMuthENtB2_12IntoIterator9into_iterCsa5QsYiPB8Gl_5image: argument 0"}
!353 = distinct !{!353, i1 true, !"_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter14ChunksExactMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image"}
!354 = distinct !{!354, !353, !"_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter14ChunksExactMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image: argument 1"}
!355 = distinct !{!355, i1 true, !"_RNvXs8_NtNtCsj6eKBz9Db1c_4core5clone5implsjNtB7_5Clone5clone"}
!356 = distinct !{!356, !355, !"_RNvXs8_NtNtCsj6eKBz9Db1c_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!357 = distinct !{!357, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtBa_5slice4iter14ChunksExactMuthEECsa5QsYiPB8Gl_5image"}
end_hunk_1
