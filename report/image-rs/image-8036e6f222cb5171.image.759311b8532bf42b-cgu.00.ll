Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d14make_arena_rowtKj4_EB6_:bb.a
  %.sroa.5216.0242.ph = phi i64 [ %.sroa.5216.0.copyload, %iter.check60 ], [ %i.cm, %vec.epilog.iter.check62 ], [ %i.ct, %vec.epilog.middle.block70 ] ; 4 uses
  %i.cy = sub i64 %.sroa.7217.0.copyload, %.sroa.5216.0242.ph
  %xtraiter81 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol
  %.sroa.5216.0242.prol = phi i64 [ %i.db, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol ], [ %.sroa.5216.0242.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader ] ; 3 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.preheader ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %.sroa.5216.0242.prol
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %.sroa.5216.0242.prol
  %i.db = add nuw i64 %.sroa.5216.0242.prol, 1    ; 2 uses
  %i.dc = load i16, ptr %i.da, align 2, !noundef !10
  store i16 %i.dc, ptr %i.cz, align 2
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.prol, !llvm.loop !140

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
  %i.di = load i16, ptr %i.dg, align 2, !noundef !10
  store i16 %i.di, ptr %i.df, align 2
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %i.dh
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %i.dh
  %i.dl = add nuw i64 %.sroa.5216.0242, 2         ; 2 uses
  %i.dm = load i16, ptr %i.dk, align 2, !noundef !10
  store i16 %i.dm, ptr %i.dj, align 2
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %i.dl
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %i.dl
  %i.dp = add nuw i64 %.sroa.5216.0242, 3         ; 2 uses
  %i.dq = load i16, ptr %i.do, align 2, !noundef !10
  store i16 %i.dq, ptr %i.dn, align 2
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0212.0.copyload, i64 %i.dp
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4214.0.copyload, i64 %i.dp
  %i.dt = add nuw i64 %.sroa.5216.0242, 4         ; 2 uses
  %i.du = load i16, ptr %i.ds, align 2, !noundef !10
  store i16 %i.du, ptr %i.dr, align 2
  %exitcond252.not.3 = icmp eq i64 %i.dt, %.sroa.7217.0.copyload
  br i1 %exitcond252.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit179, !llvm.loop !141

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
  br i1 %i.ea, label %iter.check30, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit

iter.check30:                                     ; preds = %bb.s
  %.sroa.4198.0.copyload15 = ptrtoaddr ptr %.sroa.4198.0.copyload to i64
  %.sroa.0196.0.copyload14 = ptrtoaddr ptr %.sroa.0196.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0196.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4198.0.copyload) ]
  %i.eb = sub nuw i64 %.sroa.7201.0.copyload, %.sroa.5200.0.copyload ; 7 uses
  %min.iters.check17 = icmp ult i64 %i.eb, 4
  %i.ec = sub i64 %.sroa.4198.0.copyload15, %.sroa.0196.0.copyload14
  %diff.check16 = icmp ugt i64 %i.ec, -32
  %or.cond75 = select i1 %min.iters.check17, i1 true, i1 %diff.check16
  br i1 %or.cond75, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, label %vector.main.loop.iter.check18

vector.main.loop.iter.check18:                    ; preds = %iter.check30
  %min.iters.check19 = icmp ult i64 %i.eb, 16
  br i1 %min.iters.check19, label %vec.epilog.ph34, label %vector.ph20

vector.ph20:                                      ; preds = %vector.main.loop.iter.check18
  %i.ed = and i64 %i.eb, 12
  %n.vec21 = and i64 %i.eb, -16                   ; 4 uses
  %i.ee = add i64 %.sroa.5200.0.copyload, %n.vec21
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next26, %vector.body22 ] ; 2 uses
  %i.ef = add nuw i64 %.sroa.5200.0.copyload, %index23 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.ef ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load24 = load <8 x i16>, ptr %i.eh, align 2
  %wide.load25 = load <8 x i16>, ptr %i.ei, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <8 x i16> %wide.load24, ptr %i.eg, align 2
  store <8 x i16> %wide.load25, ptr %i.ej, align 2
  %index.next26 = add nuw i64 %index23, 16        ; 2 uses
  %i.ek = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.ek, label %middle.block27, label %vector.body22, !llvm.loop !142

middle.block27:                                   ; preds = %vector.body22
  %cmp.n28 = icmp eq i64 %i.eb, %n.vec21
  br i1 %cmp.n28, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %vec.epilog.iter.check32

vec.epilog.iter.check32:                          ; preds = %middle.block27
  %min.epilog.iters.check33 = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check33, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, label %vec.epilog.ph34, !prof !98

vec.epilog.ph34:                                  ; preds = %vector.main.loop.iter.check18, %vec.epilog.iter.check32
  %vec.epilog.resume.val29 = phi i64 [ %n.vec21, %vec.epilog.iter.check32 ], [ 0, %vector.main.loop.iter.check18 ]
  %n.vec35 = and i64 %i.eb, -4                    ; 3 uses
  %i.el = add i64 %.sroa.5200.0.copyload, %n.vec35
  br label %vec.epilog.vector.body36

vec.epilog.vector.body36:                         ; preds = %vec.epilog.vector.body36, %vec.epilog.ph34
  %index37 = phi i64 [ %vec.epilog.resume.val29, %vec.epilog.ph34 ], [ %index.next39, %vec.epilog.vector.body36 ] ; 2 uses
  %i.em = add nuw i64 %.sroa.5200.0.copyload, %index37 ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.em
  %wide.load38 = load <4 x i16>, ptr %i.eo, align 2
  store <4 x i16> %wide.load38, ptr %i.en, align 2
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.ep = icmp eq i64 %index.next39, %n.vec35
  br i1 %i.ep, label %vec.epilog.middle.block40, label %vec.epilog.vector.body36, !llvm.loop !143

vec.epilog.middle.block40:                        ; preds = %vec.epilog.vector.body36
  %cmp.n41 = icmp eq i64 %i.eb, %n.vec35
  br i1 %cmp.n41, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader: ; preds = %iter.check30, %vec.epilog.iter.check32, %vec.epilog.middle.block40
  %.sroa.5200.0240.ph = phi i64 [ %.sroa.5200.0.copyload, %iter.check30 ], [ %i.ee, %vec.epilog.iter.check32 ], [ %i.el, %vec.epilog.middle.block40 ] ; 4 uses
  %i.eq = sub i64 %.sroa.7201.0.copyload, %.sroa.5200.0240.ph
  %xtraiter78 = and i64 %i.eq, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol
  %.sroa.5200.0240.prol = phi i64 [ %i.et, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ], [ %.sroa.5200.0240.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.preheader ]
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %.sroa.5200.0240.prol
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %.sroa.5200.0240.prol
  %i.et = add nuw i64 %.sroa.5200.0240.prol, 1    ; 2 uses
  %i.eu = load i16, ptr %i.es, align 2, !noundef !10
  store i16 %i.eu, ptr %i.er, align 2
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.prol, !llvm.loop !144

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
  %i.fa = load i16, ptr %i.ey, align 2, !noundef !10
  store i16 %i.fa, ptr %i.ex, align 2
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.ez
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.ez
  %i.fd = add nuw i64 %.sroa.5200.0240, 2         ; 2 uses
  %i.fe = load i16, ptr %i.fc, align 2, !noundef !10
  store i16 %i.fe, ptr %i.fb, align 2
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.fd
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.fd
  %i.fh = add nuw i64 %.sroa.5200.0240, 3         ; 2 uses
  %i.fi = load i16, ptr %i.fg, align 2, !noundef !10
  store i16 %i.fi, ptr %i.ff, align 2
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0196.0.copyload, i64 %i.fh
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4198.0.copyload, i64 %i.fh
  %i.fl = add nuw i64 %.sroa.5200.0240, 4         ; 2 uses
  %i.fm = load i16, ptr %i.fk, align 2, !noundef !10
  store i16 %i.fm, ptr %i.fj, align 2
  %exitcond249.not.3 = icmp eq i64 %i.fl, %.sroa.7201.0.copyload
  br i1 %exitcond249.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit184, !llvm.loop !145

bb.t:                                             ; preds = %bb.d, %bb.c
  store i8 7, ptr %0, align 8
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.5138.0..sroa_idx, align 8
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj1_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 13 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !10 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
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
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph168.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx371 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %0, i64 %.idx371  ; 4 uses
  %.idx372 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %0, i64 %.idx372  ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx373 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %0, i64 %.idx373  ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx374 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %0, i64 %.idx374  ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !10
  %i.ao = load float, ptr %i.ai, align 4, !noundef !10
  %i.ap = load float, ptr %i.ak, align 4, !noundef !10
  %i.aq = load float, ptr %i.am, align 4, !noundef !10
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !10
  %i.ba = load float, ptr %i.aw, align 4, !noundef !10
  %i.bb = load float, ptr %i.ax, align 4, !noundef !10
  %i.bc = load float, ptr %i.ay, align 4, !noundef !10
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !10
  %i.bm = load float, ptr %i.bi, align 4, !noundef !10
  %i.bn = load float, ptr %i.bj, align 4, !noundef !10
  %i.bo = load float, ptr %i.bk, align 4, !noundef !10
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !10
  %i.by = load float, ptr %i.bu, align 4, !noundef !10
  %i.bz = load float, ptr %i.bv, align 4, !noundef !10
  %i.ca = load float, ptr %i.bw, align 4, !noundef !10
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !146

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph168.split.us
  %.sroa.079.0166.us.ph = phi ptr [ %2, %.lr.ph168.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0165.us.ph = phi i64 [ 0, %.lr.ph168.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.079.0166.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.079.0166.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0165.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0165.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.079.0166.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0165.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0165.us, 2     ; 3 uses
  %exitcond242 = icmp eq i64 %.sroa.7.0165.us, %i.r
  br i1 %exitcond242, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not65.us = icmp samesign ugt i64 %i.i, %i.cp
  br i1 %.not65.us, label %.split171.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %0, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.079.0166.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge169, label %scalar.ph, !llvm.loop !147

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph168.split:                                  ; preds = %.lr.ph168.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %1, %.lr.ph168.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.079.0166 = phi ptr [ %2, %.lr.ph168.split.preheader ], [ %i.ct, %._crit_edge ] ; 2 uses
  %.sroa.7.0165 = phi i64 [ 0, %.lr.ph168.split.preheader ], [ %i.cu, %._crit_edge ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.079.0166, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0165, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0165, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0165, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge169:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx194 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx194 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx194, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge169
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.cz = icmp eq i64 %i.a, 0
  br i1 %i.cz, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.da = add nsw i64 %.idx194, -4
  %i.db = lshr exact i64 %i.da, 2
  %6 = sub nsw i64 %1, %i.d
  %i.dc = add nuw nsw i64 %1, 1
  %i.dd = tail call i64 @llvm.usub.sat.i64(i64 %i.dc, i64 %i.d)
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %6)
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.de, i64 %i.dd) ; 2 uses
  %min.iters.check358 = icmp samesign ult i64 %i.df, 8
  br i1 %min.iters.check358, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader375, label %vector.ph359

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader375: ; preds = %vector.body363, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.083.0185.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.dl, %vector.body363 ]
  %.sroa.785.0184.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %n.vec360, %vector.body363 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

vector.ph359:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %i.dh = and i64 %i.dg, 7                        ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 8, i64 %i.dh
  %n.vec360 = sub nsw i64 %i.dg, %i.dj            ; 3 uses
  %i.dk = shl i64 %n.vec360, 2
  %i.dl = getelementptr i8, ptr %i.e, i64 %i.dk
  %broadcast.splatinsert361 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat362 = shufflevector <4 x float> %broadcast.splatinsert361, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.d
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph359
  %index364 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body363 ] ; 3 uses
  %i.dm = shl i64 %index364, 2
  %next.gep365 = getelementptr i8, ptr %i.e, i64 %i.dm ; 2 uses
  %gep460 = getelementptr [4 x i8], ptr %invariant.gep, i64 %index364 ; 2 uses
  %i.dn = getelementptr i8, ptr %gep460, i64 16
  %wide.load = load <4 x float>, ptr %gep460, align 4
  %wide.load366 = load <4 x float>, ptr %i.dn, align 4
  %i.do = fmul <4 x float> %broadcast.splat362, %wide.load
  %i.dp = fmul <4 x float> %broadcast.splat362, %wide.load366
  %i.dq = getelementptr i8, ptr %next.gep365, i64 16
  store <4 x float> %i.do, ptr %next.gep365, align 4
  store <4 x float> %i.dp, ptr %i.dq, align 4
  %index.next367 = add nuw i64 %index364, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.dr, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader375, label %vector.body363, !llvm.loop !148

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.ds = sub nsw i64 %1, %i.d                    ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.ds)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader375, %bb.g
  %.sroa.083.0185.us = phi ptr [ %i.dt, %bb.g ], [ %.sroa.083.0185.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader375 ] ; 2 uses
  %.sroa.785.0184.us = phi i64 [ %i.du, %bb.g ], [ %.sroa.785.0184.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader375 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.083.0185.us, i64 4 ; 2 uses
  %i.du = add nuw nsw i64 %.sroa.785.0184.us, 1
  %i.dv = add nuw nsw i64 %.sroa.785.0184.us, %i.d ; 4 uses
  %i.dw = icmp samesign ugt i64 %i.dv, %1
  br i1 %i.dw, label %.split187.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.not265 = icmp eq i64 %1, %i.dv
  br i1 %.not265, label %.split190.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gep193 = getelementptr [4 x i8], ptr %0, i64 %i.dv
  %i.dx = load float, ptr %gep193, align 4, !noundef !10
  %i.dy = fmul float %i.c, %i.dx
  store float %i.dy, ptr %.sroa.083.0185.us, align 4
  %i.dz = icmp eq ptr %i.dt, %i.cw
  br i1 %i.dz, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !149

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge180
  %indvars.iv243 = phi i64 [ %i.ds, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %indvars.iv.next244, %._crit_edge180 ] ; 5 uses
  %.sroa.083.0185 = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.ea, %._crit_edge180 ] ; 2 uses
  %.sroa.785.0184 = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.eb, %._crit_edge180 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.083.0185, i64 4 ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.785.0184, 1
  %i.ec = add nuw nsw i64 %.sroa.785.0184, %i.d   ; 4 uses
  %i.ed = icmp samesign ugt i64 %i.ec, %1
  br i1 %i.ed, label %.split187.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge180, %bb.g, %._crit_edge169
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ee = sub nuw nsw i64 %1, %i.ec               ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ec ; 3 uses
  %i.eg = icmp samesign ult i64 %i.a, %i.ee
  br i1 %i.eg, label %.lr.ph179, label %.split190.us

.split187.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi188 = phi i64 [ %i.dv, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ec, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi188, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph179:                                        ; preds = %bb.h
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.a
  %i.ei = load float, ptr %i.eh, align 4, !noundef !10
  %i.ej = fmul float %i.c, %i.ei
  %.not64.first_iter = icmp ugt i64 %5, %indvars.iv243
  br label %bb.i

.split190.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi191 = phi i64 [ 0, %bb.f ], [ %umin, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %.us-phi191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph179, %bb.n
  %.sroa.026.0177 = phi float [ %i.ej, %.lr.ph179 ], [ %i.fa, %bb.n ] ; 2 uses
  %.sroa.1089.0176 = phi i64 [ 0, %.lr.ph179 ], [ %i.en, %bb.n ] ; 5 uses
  %.sroa.788.0175 = phi i64 [ %i.a, %.lr.ph179 ], [ %i.ek, %bb.n ]
  %.sroa.086.0174 = phi ptr [ %4, %.lr.ph179 ], [ %i.em, %bb.n ] ; 3 uses
  %i.ek = add nsw i64 %.sroa.788.0175, -1         ; 2 uses
  %i.el = icmp eq ptr %.sroa.086.0174, %i.cy
  br i1 %i.el, label %._crit_edge180, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.086.0174, i64 4
  %i.en = add nuw nsw i64 %.sroa.1089.0176, 1
  %i.eo = load float, ptr %.sroa.086.0174, align 4, !noundef !10
  %i.ep = sub nsw i64 %5, %.sroa.1089.0176        ; 2 uses
  %i.eq = add nsw i64 %i.ep, -1                   ; 2 uses
  %exitcond246.not = icmp eq i64 %.sroa.1089.0176, %indvars.iv243
  br i1 %exitcond246.not, label %bb.k, label %bb.l, !prof !6

._crit_edge180:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.fa, %bb.n ], [ %.sroa.026.0177, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.083.0185, align 4
  %i.er = icmp eq ptr %i.ea, %i.cw
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, -1
  br i1 %i.er, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.es = add i64 %indvars.iv243, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %indvars.iv243, i64 noundef %i.es, i64 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.et = icmp eq i64 %5, %.sroa.1089.0176
  %or.cond69 = or i1 %i.et, %.not64.first_iter
  br i1 %or.cond69, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.eq, i64 noundef %i.ep, i64 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.sroa.1089.0176
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eq
  %i.ew = load float, ptr %i.eu, align 4, !noundef !10
  %i.ex = load float, ptr %i.ev, align 4, !noundef !10
  %i.ey = fadd float %i.ew, %i.ex
  %i.ez = fmul float %i.eo, %i.ey
  %i.fa = fadd float %.sroa.026.0177, %i.ez       ; 2 uses
  %i.fb = icmp eq i64 %i.ek, 0
  br i1 %i.fb, label %._crit_edge180, label %bb.i

bb.o:                                             ; preds = %.lr.ph168.split
  %i.fc = sub nuw nsw i64 %1, %i.cv               ; 5 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not65 = icmp samesign ugt i64 %i.i, %i.fc
  br i1 %.not65, label %.split171.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph168.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph168.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split171.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi172 = phi i64 [ %i.cp, %bb.c ], [ %i.fc, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.i, i64 noundef %.us-phi172, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.a
  %i.ff = load <4 x float>, ptr %i.fe, align 4
  %i.fg = fmul <4 x float> %i.p, %i.ff
  %.not68.first_iter = icmp ugt i64 %i.l, %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.080.0152 = phi ptr [ %4, %.lr.ph ], [ %i.fk, %bb.u ] ; 3 uses
  %.sroa.782.0151 = phi i64 [ %i.a, %.lr.ph ], [ %i.fi, %bb.u ]
  %.sroa.10.0150 = phi i64 [ 0, %.lr.ph ], [ %i.fl, %bb.u ] ; 5 uses
  %i.fh = phi <4 x float> [ %i.fg, %.lr.ph ], [ %i.gc, %bb.u ] ; 2 uses
  %i.fi = add nsw i64 %.sroa.782.0151, -1         ; 2 uses
  %i.fj = icmp eq ptr %.sroa.080.0152, %i.j
  br i1 %i.fj, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.080.0152, i64 4
  %i.fl = add nuw nsw i64 %.sroa.10.0150, 1
  %i.fm = load float, ptr %.sroa.080.0152, align 4, !noundef !10
  %i.fn = xor i64 %.sroa.10.0150, -1
  %i.fo = add nsw i64 %5, %i.fn                   ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.10.0150, 4       ; 2 uses
  %.not67 = icmp samesign ugt i64 %i.fp, %i.fc
  br i1 %.not67, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fq = phi <4 x float> [ %i.gc, %bb.u ], [ %i.fh, %bb.p ]
  store <4 x float> %i.fq, ptr %.sroa.079.0166, align 4
  %i.fr = icmp eq ptr %i.ct, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  br i1 %i.fr, label %._crit_edge169, label %.lr.ph168.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.10.0150, i64 noundef %i.fp, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fs = icmp ugt i64 %i.fo, -5
  %or.cond71 = or i1 %i.fs, %.not68.first_iter
  br i1 %or.cond71, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.ft = add nsw i64 %i.fo, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fo, i64 noundef %i.ft, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.sroa.10.0150
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fo
  %i.fw = load <4 x float>, ptr %i.fu, align 4
  %i.fx = load <4 x float>, ptr %i.fv, align 4
  %i.fy = fadd <4 x float> %i.fw, %i.fx
  %i.fz = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = fmul <4 x float> %i.ga, %i.fy
  %i.gc = fadd <4 x float> %i.fh, %i.gb           ; 2 uses
  %i.gd = icmp eq i64 %i.fi, 0
  br i1 %i.gd, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj2_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !10 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
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
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph173.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx368 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx368 ; 4 uses
  %.idx369 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx369 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx370 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx370 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx371 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx371 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !10
  %i.ao = load float, ptr %i.ai, align 4, !noundef !10
  %i.ap = load float, ptr %i.ak, align 4, !noundef !10
  %i.aq = load float, ptr %i.am, align 4, !noundef !10
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !10
  %i.ba = load float, ptr %i.aw, align 4, !noundef !10
  %i.bb = load float, ptr %i.ax, align 4, !noundef !10
  %i.bc = load float, ptr %i.ay, align 4, !noundef !10
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !10
  %i.bm = load float, ptr %i.bi, align 4, !noundef !10
  %i.bn = load float, ptr %i.bj, align 4, !noundef !10
  %i.bo = load float, ptr %i.bk, align 4, !noundef !10
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !10
  %i.by = load float, ptr %i.bu, align 4, !noundef !10
  %i.bz = load float, ptr %i.bv, align 4, !noundef !10
  %i.ca = load float, ptr %i.bw, align 4, !noundef !10
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !150

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph173.split.us
  %.sroa.081.0171.us.ph = phi ptr [ %2, %.lr.ph173.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0170.us.ph = phi i64 [ 0, %.lr.ph173.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0171.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.081.0171.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0170.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0170.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.081.0171.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0170.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0170.us, 2     ; 3 uses
  %exitcond244 = icmp eq i64 %.sroa.7.0170.us, %i.r
  br i1 %exitcond244, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split176.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.081.0171.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge174, label %scalar.ph, !llvm.loop !151

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph173.split:                                  ; preds = %.lr.ph173.split.preheader, %._crit_edge
  %.sroa.081.0171 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph173.split.preheader ] ; 2 uses
  %.sroa.7.0170 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph173.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.081.0171, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0170, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0170, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0170, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge174:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx201 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx201 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx201, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge174
  %i.cy = and i64 %5, 2305843009213693950         ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep199 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx201, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check355 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check355, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph356

vector.ph356:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec357 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec357, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert358 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat359 = shufflevector <4 x float> %broadcast.splatinsert358, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep450 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.d
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph356
  %index361 = phi i64 [ 0, %vector.ph356 ], [ %index.next364, %vector.body360 ] ; 3 uses
  %i.do = shl i64 %index361, 2
  %next.gep362 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep451 = getelementptr [4 x i8], ptr %invariant.gep450, i64 %index361 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep451, i64 16
  %wide.load = load <4 x float>, ptr %gep451, align 4
  %wide.load363 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat359, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat359, %wide.load363
  %i.ds = getelementptr i8, ptr %next.gep362, i64 16
  store <4 x float> %i.dq, ptr %next.gep362, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next364 = add nuw i64 %index361, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body360, !llvm.loop !152

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body360, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.085.0191.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body360 ]
  %.sroa.787.0190.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec357, %vector.body360 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.085.0191.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.085.0191.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.787.0190.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.787.0190.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.085.0191.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.787.0190.us, 1
  %i.dw = add nuw nsw i64 %.sroa.787.0190.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split193.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split196.us

bb.g:                                             ; preds = %bb.f
  %gep200 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.dw
  %i.ea = load float, ptr %gep200, align 4, !noundef !10
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.085.0191.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !153

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge186
  %.sroa.085.0191 = phi ptr [ %i.ed, %._crit_edge186 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.787.0190 = phi i64 [ %i.ee, %._crit_edge186 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.085.0191, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.787.0190, 1
  %i.ef = add nuw nsw i64 %.sroa.787.0190, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split193.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge186, %bb.g, %._crit_edge174
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph185, label %.split196.us

.split193.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi194 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi194, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph185:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !10
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split196.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi197 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi197, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph185, %bb.n
  %.sroa.026.0183 = phi float [ %i.em, %.lr.ph185 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1091.0182 = phi i64 [ 0, %.lr.ph185 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.790.0181 = phi i64 [ %i.a, %.lr.ph185 ], [ %i.en, %bb.n ]
  %.sroa.088.0180 = phi ptr [ %4, %.lr.ph185 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.790.0181, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.088.0180, %i.cz
  br i1 %i.eo, label %._crit_edge186, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.088.0180, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1091.0182, 1
  %i.er = load float, ptr %.sroa.088.0180, align 4, !noundef !10
  %i.es = shl nuw nsw i64 %.sroa.1091.0182, 1     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !4

._crit_edge186:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0183, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.085.0191, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = or disjoint i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1091.0182, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = shl nsw i64 %i.ew, 1                    ; 4 uses
  %.not68.not = icmp ult i64 %i.ex, %i.eh
  br i1 %.not68.not, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.ey = or disjoint i64 %i.ex, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !10
  %i.fc = load float, ptr %i.fa, align 4, !noundef !10
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0183, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge186, label %bb.i

bb.o:                                             ; preds = %.lr.ph173.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split176.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph173.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph173.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split176.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi177 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.082.0157 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.784.0156 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0155 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.784.0156, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.082.0157, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.082.0157, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0155, 1
  %i.fr = load float, ptr %.sroa.082.0157, align 4, !noundef !10
  %i.fs = shl nuw nsw i64 %.sroa.10.0155, 1       ; 3 uses
  %i.ft = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.ft, %i.fh
  br i1 %.not71, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.081.0171, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge174, label %.lr.ph173.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.ft, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fw = xor i64 %.sroa.10.0155, -1
  %i.fx = add nsw i64 %5, %i.fw
  %i.fy = shl nsw i64 %i.fx, 1                    ; 4 uses
  %i.fz = add nsw i64 %i.fy, 4                    ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, -5
  %.not72 = icmp ugt i64 %i.fz, %i.fh
  %or.cond73 = or i1 %i.ga, %.not72
  br i1 %or.cond73, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fy
  %i.gd = load <4 x float>, ptr %i.gb, align 4
  %i.ge = load <4 x float>, ptr %i.gc, align 4
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.gf
  %i.gj = fadd <4 x float> %i.fm, %i.gi           ; 2 uses
  %i.gk = icmp eq i64 %i.fn, 0
  br i1 %i.gk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj3_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !10 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
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
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph178.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx376 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx376 ; 4 uses
  %.idx377 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx377 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx378 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx378 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx379 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx379 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !10
  %i.ao = load float, ptr %i.ai, align 4, !noundef !10
  %i.ap = load float, ptr %i.ak, align 4, !noundef !10
  %i.aq = load float, ptr %i.am, align 4, !noundef !10
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !10
  %i.ba = load float, ptr %i.aw, align 4, !noundef !10
  %i.bb = load float, ptr %i.ax, align 4, !noundef !10
  %i.bc = load float, ptr %i.ay, align 4, !noundef !10
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !10
  %i.bm = load float, ptr %i.bi, align 4, !noundef !10
  %i.bn = load float, ptr %i.bj, align 4, !noundef !10
  %i.bo = load float, ptr %i.bk, align 4, !noundef !10
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !10
  %i.by = load float, ptr %i.bu, align 4, !noundef !10
  %i.bz = load float, ptr %i.bv, align 4, !noundef !10
  %i.ca = load float, ptr %i.bw, align 4, !noundef !10
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !154

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph178.split.us
  %.sroa.083.0176.us.ph = phi ptr [ %2, %.lr.ph178.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0175.us.ph = phi i64 [ 0, %.lr.ph178.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.083.0176.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.083.0176.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0175.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0175.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.083.0176.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0175.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0175.us, 2     ; 3 uses
  %exitcond252 = icmp eq i64 %.sroa.7.0175.us, %i.r
  br i1 %exitcond252, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split181.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.083.0176.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge179, label %scalar.ph, !llvm.loop !155

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph178.split:                                  ; preds = %.lr.ph178.split.preheader, %._crit_edge
  %.sroa.083.0176 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph178.split.preheader ] ; 2 uses
  %.sroa.7.0175 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph178.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.083.0176, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0175, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0175, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0175, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge179:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx206 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx206 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx206, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge179
  %i.cy = mul nuw nsw i64 %i.a, 3                 ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep204 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx206, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check363 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check363, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph364

vector.ph364:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec365 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec365, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert366 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat367 = shufflevector <4 x float> %broadcast.splatinsert366, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep460 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.d
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph364
  %index369 = phi i64 [ 0, %vector.ph364 ], [ %index.next372, %vector.body368 ] ; 3 uses
  %i.do = shl i64 %index369, 2
  %next.gep370 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep461 = getelementptr [4 x i8], ptr %invariant.gep460, i64 %index369 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep461, i64 16
  %wide.load = load <4 x float>, ptr %gep461, align 4
  %wide.load371 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat367, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat367, %wide.load371
  %i.ds = getelementptr i8, ptr %next.gep370, i64 16
  store <4 x float> %i.dq, ptr %next.gep370, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next372 = add nuw i64 %index369, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next372, %n.vec365
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body368, !llvm.loop !156

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body368, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.087.0196.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body368 ]
  %.sroa.789.0195.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec365, %vector.body368 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.087.0196.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.087.0196.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.789.0195.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.789.0195.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.087.0196.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.789.0195.us, 1
  %i.dw = add nuw nsw i64 %.sroa.789.0195.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split198.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split201.us

bb.g:                                             ; preds = %bb.f
  %gep205 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.dw
  %i.ea = load float, ptr %gep205, align 4, !noundef !10
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.087.0196.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !157

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge191
  %.sroa.087.0196 = phi ptr [ %i.ed, %._crit_edge191 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.789.0195 = phi i64 [ %i.ee, %._crit_edge191 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.087.0196, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.789.0195, 1
  %i.ef = add nuw nsw i64 %.sroa.789.0195, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split198.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge191, %bb.g, %._crit_edge179
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph190, label %.split201.us

.split198.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi199 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi199, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph190:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !10
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split201.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi202 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi202, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph190, %bb.n
  %.sroa.026.0188 = phi float [ %i.em, %.lr.ph190 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1093.0187 = phi i64 [ 0, %.lr.ph190 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.792.0186 = phi i64 [ %i.a, %.lr.ph190 ], [ %i.en, %bb.n ]
  %.sroa.090.0185 = phi ptr [ %4, %.lr.ph190 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.792.0186, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.090.0185, %i.cz
  br i1 %i.eo, label %._crit_edge191, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.090.0185, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1093.0187, 1
  %i.er = load float, ptr %.sroa.090.0185, align 4, !noundef !10
  %i.es = mul nuw nsw i64 %.sroa.1093.0187, 3     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !14

._crit_edge191:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0188, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.087.0196, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = add nuw nsw i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1093.0187, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = mul nsw i64 %i.ew, 3                    ; 3 uses
  %i.ey = add nsw i64 %i.ex, 1                    ; 2 uses
  %.not68 = icmp ugt i64 %i.ey, %i.eh
  br i1 %.not68, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !10
  %i.fc = load float, ptr %i.fa, align 4, !noundef !10
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0188, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge191, label %bb.i

bb.o:                                             ; preds = %.lr.ph178.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split181.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph178.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph178.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split181.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi182 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.084.0162 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.786.0161 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0160 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.786.0161, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.084.0162, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.084.0162, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0160, 1
  %i.fr = load float, ptr %.sroa.084.0162, align 4, !noundef !10
  %i.fs = mul nuw nsw i64 %.sroa.10.0160, 3       ; 3 uses
  %i.ft = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.ft, %i.fh
  br i1 %.not71, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.083.0176, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge179, label %.lr.ph178.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.ft, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fw = xor i64 %.sroa.10.0160, -1
  %i.fx = add nsw i64 %5, %i.fw
  %i.fy = mul nsw i64 %i.fx, 3                    ; 4 uses
  %i.fz = add nsw i64 %i.fy, 4                    ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, -5
  %.not72 = icmp ugt i64 %i.fz, %i.fh
  %or.cond75 = or i1 %i.ga, %.not72
  br i1 %or.cond75, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fy
  %i.gd = load <4 x float>, ptr %i.gb, align 4
  %i.ge = load <4 x float>, ptr %i.gc, align 4
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.gf
  %i.gj = fadd <4 x float> %i.fm, %i.gi           ; 2 uses
  %i.gk = icmp eq i64 %i.fn, 0
  br i1 %i.gk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj4_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !10 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
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
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph170.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx356 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx356 ; 4 uses
  %.idx357 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx357 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx358 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx358 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx359 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx359 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !10
  %i.ao = load float, ptr %i.ai, align 4, !noundef !10
  %i.ap = load float, ptr %i.ak, align 4, !noundef !10
  %i.aq = load float, ptr %i.am, align 4, !noundef !10
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !10
  %i.ba = load float, ptr %i.aw, align 4, !noundef !10
  %i.bb = load float, ptr %i.ax, align 4, !noundef !10
  %i.bc = load float, ptr %i.ay, align 4, !noundef !10
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !10
  %i.bm = load float, ptr %i.bi, align 4, !noundef !10
  %i.bn = load float, ptr %i.bj, align 4, !noundef !10
  %i.bo = load float, ptr %i.bk, align 4, !noundef !10
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !10
  %i.by = load float, ptr %i.bu, align 4, !noundef !10
  %i.bz = load float, ptr %i.bv, align 4, !noundef !10
  %i.ca = load float, ptr %i.bw, align 4, !noundef !10
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !158

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph170.split.us
  %.sroa.081.0168.us.ph = phi ptr [ %2, %.lr.ph170.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0167.us.ph = phi i64 [ 0, %.lr.ph170.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0168.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.081.0168.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0167.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0167.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.081.0168.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0167.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0167.us, 2     ; 3 uses
  %exitcond238 = icmp eq i64 %.sroa.7.0167.us, %i.r
  br i1 %exitcond238, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split173.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.081.0168.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge171, label %scalar.ph, !llvm.loop !159

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph170.split:                                  ; preds = %.lr.ph170.split.preheader, %._crit_edge
  %.sroa.081.0168 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph170.split.preheader ] ; 2 uses
  %.sroa.7.0167 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph170.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.081.0168, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0167, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0167, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0167, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge171:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx198 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx198 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx198, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge171
  %i.cy = shl nuw nsw i64 %i.a, 2                 ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep196 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx198, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check343 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check343, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec345 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec345, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert346 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat347 = shufflevector <4 x float> %broadcast.splatinsert346, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep432 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.d
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph344
  %index349 = phi i64 [ 0, %vector.ph344 ], [ %index.next352, %vector.body348 ] ; 3 uses
  %i.do = shl i64 %index349, 2
  %next.gep350 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep433 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %index349 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep433, i64 16
  %wide.load = load <4 x float>, ptr %gep433, align 4
  %wide.load351 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat347, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat347, %wide.load351
  %i.ds = getelementptr i8, ptr %next.gep350, i64 16
  store <4 x float> %i.dq, ptr %next.gep350, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next352 = add nuw i64 %index349, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next352, %n.vec345
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body348, !llvm.loop !160

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body348, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.085.0188.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body348 ]
  %.sroa.787.0187.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec345, %vector.body348 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.085.0188.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.085.0188.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.787.0187.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.787.0187.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.085.0188.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.787.0187.us, 1
  %i.dw = add nuw nsw i64 %.sroa.787.0187.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split190.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split193.us

bb.g:                                             ; preds = %bb.f
  %gep197 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.dw
  %i.ea = load float, ptr %gep197, align 4, !noundef !10
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.085.0188.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !161

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge183
  %.sroa.085.0188 = phi ptr [ %i.ed, %._crit_edge183 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.787.0187 = phi i64 [ %i.ee, %._crit_edge183 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.085.0188, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.787.0187, 1
  %i.ef = add nuw nsw i64 %.sroa.787.0187, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split190.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge183, %bb.g, %._crit_edge171
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph182, label %.split193.us

.split190.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi191 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi191, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph182:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !10
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split193.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi194 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi194, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph182, %bb.n
  %.sroa.026.0180 = phi float [ %i.em, %.lr.ph182 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1091.0179 = phi i64 [ 0, %.lr.ph182 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.790.0178 = phi i64 [ %i.a, %.lr.ph182 ], [ %i.en, %bb.n ]
  %.sroa.088.0177 = phi ptr [ %4, %.lr.ph182 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.790.0178, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.088.0177, %i.cz
  br i1 %i.eo, label %._crit_edge183, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.088.0177, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1091.0179, 1
  %i.er = load float, ptr %.sroa.088.0177, align 4, !noundef !10
  %i.es = shl nuw nsw i64 %.sroa.1091.0179, 2     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !4

._crit_edge183:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0180, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.085.0188, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = or disjoint i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1091.0179, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = shl nsw i64 %i.ew, 2                    ; 4 uses
  %.not68.not = icmp ult i64 %i.ex, %i.eh
  br i1 %.not68.not, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.ey = or disjoint i64 %i.ex, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !10
  %i.fc = load float, ptr %i.fa, align 4, !noundef !10
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0180, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge183, label %bb.i

bb.o:                                             ; preds = %.lr.ph170.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split173.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph170.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph170.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split173.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi174 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi174, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  %invariant.op = add nsw i64 %i.fh, -3
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.082.0154 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.784.0153 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0152 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.784.0153, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.082.0154, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.082.0154, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0152, 1
  %i.fr = load float, ptr %.sroa.082.0154, align 4, !noundef !10
  %i.fs = shl nuw nsw i64 %.sroa.10.0152, 2       ; 4 uses
  %i.ft = or disjoint i64 %i.fs, 3
  %or.cond.not = icmp samesign ult i64 %i.ft, %i.fh
  br i1 %or.cond.not, label %bb.s, label %bb.r, !prof !14

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.081.0168, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge171, label %.lr.ph170.split

bb.r:                                             ; preds = %bb.q
  %i.fw = add nuw i64 %i.fs, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.fw, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fx = xor i64 %.sroa.10.0152, -1
  %i.fy = add nsw i64 %5, %i.fx
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowhmKj4_EB6_:bb.a
  %i.do = lshr i32 %i.dn, 15
  %..i.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.do, i32 255)
  %i.dp = trunc nuw i32 %..i.1 to i8
  store i8 %i.dp, ptr %i.bs, align 1
  %i.dq = icmp samesign eq i64 %i.f, 2
  br i1 %i.dq, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2: ; preds = %._crit_edge187.1
  %i.dr = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.ds = icmp samesign ugt i64 %i.dr, %1
  br i1 %i.ds, label %.split194.us, label %bb.u, !prof !5

bb.u:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2
  %i.dt = sub nuw nsw i64 %1, %i.dr               ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.dr ; 3 uses
  %i.dv = icmp samesign ult i64 %i.aj, %i.dt
  br i1 %i.dv, label %.lr.ph186.2, label %.split197.us

.lr.ph186.2:                                      ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.aj
  %i.dx = load i8, ptr %i.dw, align 1, !noundef !10
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul i32 %i.c, %i.dy
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph186.2
  %.sroa.026.0184.2 = phi i32 [ %i.dz, %.lr.ph186.2 ], [ %i.er, %bb.y ] ; 2 uses
  %.sroa.1095.0183.2 = phi i64 [ 0, %.lr.ph186.2 ], [ %i.ed, %bb.y ] ; 3 uses
  %.sroa.794.0182.2 = phi i64 [ %i.a, %.lr.ph186.2 ], [ %i.ea, %bb.y ]
  %.sroa.092.0181.2 = phi ptr [ %4, %.lr.ph186.2 ], [ %i.ec, %bb.y ] ; 3 uses
  %i.ea = add nsw i64 %.sroa.794.0182.2, -1       ; 2 uses
  %i.eb = icmp eq ptr %.sroa.092.0181.2, %i.ak
  br i1 %i.eb, label %._crit_edge187.2, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.092.0181.2, i64 4
  %i.ed = add nuw nsw i64 %.sroa.1095.0183.2, 1
  %i.ee = load i32, ptr %.sroa.092.0181.2, align 4, !noundef !10
  %i.ef = shl nuw nsw i64 %.sroa.1095.0183.2, 2   ; 3 uses
  %.not67.not.2 = icmp samesign ult i64 %i.ef, %i.dt
  br i1 %.not67.not.2, label %bb.x, label %.loopexit, !prof !4

bb.x:                                             ; preds = %bb.w
  %i.eg = xor i64 %.sroa.1095.0183.2, -1
  %i.eh = add nsw i64 %5, %i.eg
  %i.ei = shl nsw i64 %i.eh, 2                    ; 3 uses
  %.not68.not.2 = icmp ult i64 %i.ei, %i.dt
  br i1 %.not68.not.2, label %bb.y, label %.loopexit383, !prof !4

bb.y:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ei
  %i.el = load i8, ptr %i.ej, align 1, !noundef !10
  %i.em = zext i8 %i.el to i32
  %i.en = load i8, ptr %i.ek, align 1, !noundef !10
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.eo, %i.em
  %i.eq = mul i32 %i.ep, %i.ee
  %i.er = add i32 %i.eq, %.sroa.026.0184.2        ; 2 uses
  %i.es = icmp eq i64 %i.ea, 0
  br i1 %i.es, label %._crit_edge187.2, label %bb.v

._crit_edge187.2:                                 ; preds = %bb.y, %bb.v
  %.sroa.026.0.lcssa.2 = phi i32 [ %i.er, %bb.y ], [ %.sroa.026.0184.2, %bb.v ]
  %i.et = add i32 %.sroa.026.0.lcssa.2, 16384
  %i.eu = lshr i32 %i.et, 15
  %..i.2 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.eu, i32 255)
  %i.ev = trunc nuw i32 %..i.2 to i8
  store i8 %i.ev, ptr %i.cl, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

.loopexit:                                        ; preds = %bb.w, %bb.r, %bb.o
  %.lcssa360 = phi i64 [ %i.bu, %bb.o ], [ %i.cn, %bb.r ], [ %i.dt, %bb.w ]
  %.lcssa351 = phi i64 [ %i.cg, %bb.o ], [ %i.cz, %bb.r ], [ %i.ef, %bb.w ] ; 2 uses
  %i.ew = or disjoint i64 %.lcssa351, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa351, i64 noundef %i.ew, i64 noundef %.lcssa360, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.z:                                             ; preds = %bb.o
  %i.ex = xor i64 %.sroa.1095.0183, -1
  %i.ey = add nsw i64 %5, %i.ex
  %i.ez = shl nsw i64 %i.ey, 2                    ; 3 uses
  %.not68.not = icmp ult i64 %i.ez, %i.bu
  br i1 %.not68.not, label %bb.aa, label %.loopexit383, !prof !4

.loopexit383:                                     ; preds = %bb.x, %bb.s, %bb.z
  %.lcssa361 = phi i64 [ %i.bu, %bb.z ], [ %i.cn, %bb.s ], [ %i.dt, %bb.x ]
  %.lcssa353 = phi i64 [ %i.ez, %bb.z ], [ %i.dc, %bb.s ], [ %i.ei, %bb.x ] ; 2 uses
  %i.fa = or disjoint i64 %.lcssa353, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa353, i64 noundef %i.fa, i64 noundef %.lcssa361, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cg
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ez
  %i.fd = load i8, ptr %i.fb, align 1, !noundef !10
  %i.fe = zext i8 %i.fd to i32
  %i.ff = load i8, ptr %i.fc, align 1, !noundef !10
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fg, %i.fe
  %i.fi = mul i32 %i.fh, %i.cf
  %i.fj = add i32 %i.fi, %.sroa.026.0184          ; 2 uses
  %i.fk = icmp eq i64 %i.cb, 0
  br i1 %i.fk, label %._crit_edge187, label %bb.n

bb.ab:                                            ; preds = %.lr.ph174.split
  %i.fl = sub nuw nsw i64 %1, %i.ah               ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.i, %i.fl
  br i1 %.not69, label %.split177.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph174.split, %bb.c
  %.us-phi = phi i64 [ %i.v, %bb.c ], [ %i.ah, %.lr.ph174.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split177.us:                                     ; preds = %bb.ab, %bb.d
  %.us-phi178 = phi i64 [ %i.w, %bb.d ], [ %i.fl, %bb.ab ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.i, i64 noundef %.us-phi178, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.h
  %i.fo = load <4 x i8>, ptr %i.fn, align 1
  %i.fp = zext <4 x i8> %i.fo to <4 x i32>
  %i.fq = mul <4 x i32> %i.o, %i.fp
  %invariant.op = add nsw i64 %i.fl, -3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ah
  %.sroa.086.0158 = phi ptr [ %4, %.lr.ph ], [ %i.fu, %bb.ah ] ; 3 uses
  %.sroa.788.0157 = phi i64 [ %i.a, %.lr.ph ], [ %i.fs, %bb.ah ]
  %.sroa.10.0156 = phi i64 [ 0, %.lr.ph ], [ %i.fv, %bb.ah ] ; 3 uses
  %i.fr = phi <4 x i32> [ %i.fq, %.lr.ph ], [ %i.gu, %bb.ah ] ; 2 uses
  %i.fs = add nsw i64 %.sroa.788.0157, -1         ; 2 uses
  %i.ft = icmp eq ptr %.sroa.086.0158, %i.j
  br i1 %i.ft, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.086.0158, i64 4
  %i.fv = add nuw nsw i64 %.sroa.10.0156, 1
  %i.fw = load i32, ptr %.sroa.086.0158, align 4, !noundef !10
  %i.fx = shl nuw nsw i64 %.sroa.10.0156, 2       ; 4 uses
  %i.fy = or disjoint i64 %i.fx, 3
  %or.cond.not = icmp samesign ult i64 %i.fy, %i.fl
  br i1 %or.cond.not, label %bb.af, label %bb.ae, !prof !14

._crit_edge:                                      ; preds = %bb.ac, %bb.ah
  %i.fz = phi <4 x i32> [ %i.gu, %bb.ah ], [ %i.fr, %bb.ac ]
  %i.ga = add <4 x i32> %i.fz, splat (i32 16384)
  %i.gb = lshr <4 x i32> %i.ga, splat (i32 15)
  %i.gc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gb, <4 x i32> splat (i32 255))
  %i.gd = trunc nuw <4 x i32> %i.gc to <4 x i8>
  store <4 x i8> %i.gd, ptr %.sroa.085.0172, align 1
  %i.ge = icmp eq ptr %i.af, %i.e
  br i1 %i.ge, label %._crit_edge175, label %.lr.ph174.split

bb.ae:                                            ; preds = %bb.ad
  %i.gf = add nuw i64 %i.fx, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fx, i64 noundef %i.gf, i64 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gg = xor i64 %.sroa.10.0156, -1
  %i.gh = add nsw i64 %5, %i.gg
  %i.gi = shl nsw i64 %i.gh, 2                    ; 4 uses
  %or.cond73.not = icmp ult i64 %i.gi, %invariant.op
  br i1 %or.cond73.not, label %bb.ah, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %bb.af
  %i.gj = add i64 %i.gi, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.gi, i64 noundef %i.gj, i64 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fx
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gi
  %i.gm = load <4 x i8>, ptr %i.gk, align 1
  %i.gn = zext <4 x i8> %i.gm to <4 x i32>
  %i.go = load <4 x i8>, ptr %i.gl, align 1
  %i.gp = zext <4 x i8> %i.go to <4 x i32>
  %i.gq = add nuw nsw <4 x i32> %i.gp, %i.gn
  %i.gr = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %i.gs = shufflevector <4 x i32> %i.gr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gt = mul <4 x i32> %i.gq, %i.gs
  %i.gu = add <4 x i32> %i.gt, %i.fr              ; 2 uses
  %i.gv = icmp eq i64 %i.fs, 0
  br i1 %i.gv, label %._crit_edge, label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj1_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 13 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !10 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 7 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.a, 4                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %.lr.ph172.split.us, label %.lr.ph172.split.preheader

.lr.ph172.split.preheader:                        ; preds = %.lr.ph172
  %i.l = add nuw nsw i64 %5, 3
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph172.split

.lr.ph172.split.us:                               ; preds = %.lr.ph172
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph172.split.us
  %.sroa.083.0170.us = phi ptr [ %2, %.lr.ph172.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0169.us = phi i64 [ 0, %.lr.ph172.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.083.0170.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0169.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0169.us, 2      ; 3 uses
  %exitcond246 = icmp eq i64 %.sroa.7.0169.us, %i.r
  br i1 %exitcond246, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not65.us = icmp samesign ugt i64 %i.i, %i.x
  br i1 %.not65.us, label %.split175.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %0, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.083.0170.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge173, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph172.split:                                  ; preds = %.lr.ph172.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %1, %.lr.ph172.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.083.0170 = phi ptr [ %2, %.lr.ph172.split.preheader ], [ %i.ag, %._crit_edge ] ; 2 uses
  %.sroa.7.0169 = phi i64 [ 0, %.lr.ph172.split.preheader ], [ %i.ah, %._crit_edge ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.083.0170, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0169, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0169, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0169, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge173:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx198 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx198 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx198, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge173
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.am = icmp eq i64 %i.a, 0
  br i1 %i.am, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.an = add nsw i64 %.idx198, -2
  %i.ao = lshr exact i64 %i.an, 1
  %6 = sub nsw i64 %1, %i.d
  %i.ap = add nuw nsw i64 %1, 1
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.d)
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %6)
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.as, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader361, label %vector.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader361: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.087.0189.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.ay, %vector.body ]
  %.sroa.789.0188.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.at = add nuw i64 %i.as, 1                    ; 2 uses
  %i.au = and i64 %i.at, 7                        ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 8, i64 %i.au
  %n.vec = sub i64 %i.at, %i.aw                   ; 3 uses
  %i.ax = shl i64 %n.vec, 1
  %i.ay = getelementptr i8, ptr %i.e, i64 %i.ax
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.az
  %gep446 = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %gep446, align 2
  %i.ba = zext <8 x i16> %wide.load to <8 x i32>
  %i.bb = mul <8 x i32> %broadcast.splat, %i.ba
  %i.bc = add <8 x i32> %i.bb, splat (i32 16384)
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 15)
  %i.be = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bd, <8 x i32> splat (i32 65535))
  %i.bf = trunc nuw <8 x i32> %i.be to <8 x i16>
  store <8 x i16> %i.bf, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader361, label %vector.body, !llvm.loop !162

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.bh = sub nsw i64 %1, %i.d                    ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.bh)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader361, %bb.h
  %.sroa.087.0189.us = phi ptr [ %i.bi, %bb.h ], [ %.sroa.087.0189.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader361 ] ; 2 uses
  %.sroa.789.0188.us = phi i64 [ %i.bj, %bb.h ], [ %.sroa.789.0188.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader361 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.087.0189.us, i64 2 ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.789.0188.us, 1
  %i.bk = add nuw nsw i64 %.sroa.789.0188.us, %i.d ; 4 uses
  %i.bl = icmp samesign ugt i64 %i.bk, %1
  br i1 %i.bl, label %.split191.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.not269 = icmp eq i64 %1, %i.bk
  br i1 %.not269, label %.split194.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %gep197 = getelementptr [2 x i8], ptr %0, i64 %i.bk
  %i.bm = load i16, ptr %gep197, align 2, !noundef !10
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul i32 %i.c, %i.bn
  %i.bp = add i32 %i.bo, 16384
  %i.bq = lshr i32 %i.bp, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bq, i32 65535)
  %i.br = trunc nuw i32 %..i.us to i16
  store i16 %i.br, ptr %.sroa.087.0189.us, align 2
  %i.bs = icmp eq ptr %i.bi, %i.aj
  br i1 %i.bs, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !163

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge184
  %indvars.iv247 = phi i64 [ %i.bh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %indvars.iv.next248, %._crit_edge184 ] ; 5 uses
  %.sroa.087.0189 = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.bt, %._crit_edge184 ] ; 2 uses
  %.sroa.789.0188 = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.bu, %._crit_edge184 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.087.0189, i64 2 ; 2 uses
  %i.bu = add nuw nsw i64 %.sroa.789.0188, 1
  %i.bv = add nuw nsw i64 %.sroa.789.0188, %i.d   ; 4 uses
  %i.bw = icmp samesign ugt i64 %i.bv, %1
  br i1 %i.bw, label %.split191.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge184, %bb.h, %._crit_edge173
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.bx = sub nuw nsw i64 %1, %i.bv               ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bv ; 3 uses
  %i.bz = icmp samesign ult i64 %i.a, %i.bx
  br i1 %i.bz, label %.lr.ph183, label %.split194.us

.split191.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi192 = phi i64 [ %i.bk, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.bv, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi192, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph183:                                        ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.a
  %i.cb = load i16, ptr %i.ca, align 2, !noundef !10
  %i.cc = zext i16 %i.cb to i32
  %i.cd = mul i32 %i.c, %i.cc
  %.not64.first_iter = icmp ugt i64 %5, %indvars.iv247
  br label %bb.j

.split194.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi195 = phi i64 [ 0, %bb.g ], [ %umin, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %.us-phi195, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph183, %bb.o
  %.sroa.026.0181 = phi i32 [ %i.cd, %.lr.ph183 ], [ %i.cz, %bb.o ] ; 2 uses
  %.sroa.1093.0180 = phi i64 [ 0, %.lr.ph183 ], [ %i.ch, %bb.o ] ; 5 uses
  %.sroa.792.0179 = phi i64 [ %i.a, %.lr.ph183 ], [ %i.ce, %bb.o ]
  %.sroa.090.0178 = phi ptr [ %4, %.lr.ph183 ], [ %i.cg, %bb.o ] ; 3 uses
  %i.ce = add nsw i64 %.sroa.792.0179, -1         ; 2 uses
  %i.cf = icmp eq ptr %.sroa.090.0178, %i.al
  br i1 %i.cf, label %._crit_edge184, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.090.0178, i64 4
  %i.ch = add nuw nsw i64 %.sroa.1093.0180, 1
  %i.ci = load i32, ptr %.sroa.090.0178, align 4, !noundef !10
  %i.cj = sub nsw i64 %5, %.sroa.1093.0180        ; 2 uses
  %i.ck = add nsw i64 %i.cj, -1                   ; 2 uses
  %exitcond250.not = icmp eq i64 %.sroa.1093.0180, %indvars.iv247
  br i1 %exitcond250.not, label %bb.l, label %bb.m, !prof !6

._crit_edge184:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.cz, %bb.o ], [ %.sroa.026.0181, %bb.j ]
  %i.cl = add i32 %.sroa.026.0.lcssa, 16384
  %i.cm = lshr i32 %i.cl, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.cm, i32 65535)
  %i.cn = trunc nuw i32 %..i to i16
  store i16 %i.cn, ptr %.sroa.087.0189, align 2
  %i.co = icmp eq ptr %i.bt, %i.aj
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, -1
  br i1 %i.co, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cp = add i64 %indvars.iv247, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %indvars.iv247, i64 noundef %i.cp, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cq = icmp eq i64 %5, %.sroa.1093.0180
  %or.cond69 = or i1 %i.cq, %.not64.first_iter
  br i1 %or.cond69, label %bb.n, label %bb.o, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ck, i64 noundef %i.cj, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.sroa.1093.0180
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ck
  %i.ct = load i16, ptr %i.cr, align 2, !noundef !10
  %i.cu = zext i16 %i.ct to i32
  %i.cv = load i16, ptr %i.cs, align 2, !noundef !10
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cw, %i.cu
  %i.cy = mul i32 %i.cx, %i.ci
  %i.cz = add i32 %i.cy, %.sroa.026.0181          ; 2 uses
  %i.da = icmp eq i64 %i.ce, 0
  br i1 %i.da, label %._crit_edge184, label %bb.j

bb.p:                                             ; preds = %.lr.ph172.split
  %i.db = sub nuw nsw i64 %1, %i.ai               ; 5 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not65 = icmp samesign ugt i64 %i.i, %i.db
  br i1 %.not65, label %.split175.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph172.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph172.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split175.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi176 = phi i64 [ %i.x, %bb.d ], [ %i.db, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.i, i64 noundef %.us-phi176, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.a
  %i.de = load <4 x i16>, ptr %i.dd, align 2
  %i.df = zext <4 x i16> %i.de to <4 x i32>
  %i.dg = mul <4 x i32> %i.p, %i.df
  %.not68.first_iter = icmp ugt i64 %i.l, %indvars.iv
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.084.0156 = phi ptr [ %4, %.lr.ph ], [ %i.dk, %bb.v ] ; 3 uses
  %.sroa.786.0155 = phi i64 [ %i.a, %.lr.ph ], [ %i.di, %bb.v ]
  %.sroa.10.0154 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %bb.v ] ; 5 uses
  %i.dh = phi <4 x i32> [ %i.dg, %.lr.ph ], [ %i.ei, %bb.v ] ; 2 uses
  %i.di = add nsw i64 %.sroa.786.0155, -1         ; 2 uses
  %i.dj = icmp eq ptr %.sroa.084.0156, %i.j
  br i1 %i.dj, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.084.0156, i64 4
  %i.dl = add nuw nsw i64 %.sroa.10.0154, 1
  %i.dm = load i32, ptr %.sroa.084.0156, align 4, !noundef !10
  %i.dn = xor i64 %.sroa.10.0154, -1
  %i.do = add nsw i64 %5, %i.dn                   ; 4 uses
  %i.dp = add nuw nsw i64 %.sroa.10.0154, 4       ; 2 uses
  %.not67 = icmp samesign ugt i64 %i.dp, %i.db
  br i1 %.not67, label %bb.s, label %bb.t, !prof !6

._crit_edge:                                      ; preds = %bb.q, %bb.v
  %i.dq = phi <4 x i32> [ %i.ei, %bb.v ], [ %i.dh, %bb.q ]
  %i.dr = add <4 x i32> %i.dq, splat (i32 16384)
  %i.ds = lshr <4 x i32> %i.dr, splat (i32 15)
  %i.dt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ds, <4 x i32> splat (i32 65535))
  %i.du = trunc nuw <4 x i32> %i.dt to <4 x i16>
  store <4 x i16> %i.du, ptr %.sroa.083.0170, align 2
  %i.dv = icmp eq ptr %i.ag, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  br i1 %i.dv, label %._crit_edge173, label %.lr.ph172.split

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.10.0154, i64 noundef %i.dp, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dw = icmp ugt i64 %i.do, -5
  %or.cond71 = or i1 %i.dw, %.not68.first_iter
  br i1 %or.cond71, label %bb.u, label %bb.v, !prof !6

bb.u:                                             ; preds = %bb.t
  %i.dx = add nsw i64 %i.do, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.do, i64 noundef %i.dx, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %.sroa.10.0154
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.do
  %i.ea = load <4 x i16>, ptr %i.dy, align 2
  %i.eb = zext <4 x i16> %i.ea to <4 x i32>
  %i.ec = load <4 x i16>, ptr %i.dz, align 2
  %i.ed = zext <4 x i16> %i.ec to <4 x i32>
  %i.ee = add nuw nsw <4 x i32> %i.ed, %i.eb
  %i.ef = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eh = mul <4 x i32> %i.ee, %i.eg
  %i.ei = add <4 x i32> %i.eh, %i.dh              ; 2 uses
  %i.ej = icmp eq i64 %i.di, 0
  br i1 %i.ej, label %._crit_edge, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj2_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !10 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 6 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.b
  %i.i = and i64 %5, 2305843009213693950          ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph177.split.us, label %.lr.ph177.split.preheader

.lr.ph177.split.preheader:                        ; preds = %.lr.ph177
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph177.split

.lr.ph177.split.us:                               ; preds = %.lr.ph177
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph177.split.us
  %.sroa.085.0175.us = phi ptr [ %2, %.lr.ph177.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0174.us = phi i64 [ 0, %.lr.ph177.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.085.0175.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0174.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0174.us, 2      ; 3 uses
  %exitcond248 = icmp eq i64 %.sroa.7.0174.us, %i.r
  br i1 %exitcond248, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.x
  br i1 %.not69.us, label %.split180.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.085.0175.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge178, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph177.split:                                  ; preds = %.lr.ph177.split.preheader, %._crit_edge
  %.sroa.085.0175 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.lr.ph177.split.preheader ] ; 2 uses
  %.sroa.7.0174 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.lr.ph177.split.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.085.0175, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0174, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0174, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0174, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge178:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx205 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx205 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx205, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge178
  %i.al = and i64 %5, 2305843009213693950         ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.an = icmp eq i64 %i.a, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep203 = getelementptr [2 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = add nsw i64 %.idx205, -2
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = sub nsw i64 %1, %i.d
  %i.ar = add nuw nsw i64 %1, 1
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.d)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aq)
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.av = add nuw i64 %i.au, 1                    ; 2 uses
  %i.aw = and i64 %i.av, 7                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub i64 %i.av, %i.ay                   ; 3 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep436 = getelementptr [2 x i8], ptr %invariant.gep203, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bb
  %gep437 = getelementptr [2 x i8], ptr %invariant.gep436, i64 %index
  %wide.load = load <8 x i16>, ptr %gep437, align 2
  %i.bc = zext <8 x i16> %wide.load to <8 x i32>
  %i.bd = mul <8 x i32> %broadcast.splat, %i.bc
  %i.be = add <8 x i32> %i.bd, splat (i32 16384)
  %i.bf = lshr <8 x i32> %i.be, splat (i32 15)
  %i.bg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 65535))
  %i.bh = trunc nuw <8 x i32> %i.bg to <8 x i16>
  store <8 x i16> %i.bh, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body, !llvm.loop !164

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.089.0195.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.ba, %vector.body ]
  %.sroa.791.0194.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.h
  %.sroa.089.0195.us = phi ptr [ %i.bj, %bb.h ], [ %.sroa.089.0195.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.791.0194.us = phi i64 [ %i.bk, %bb.h ], [ %.sroa.791.0194.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.089.0195.us, i64 2 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.791.0194.us, 1
  %i.bl = add nuw nsw i64 %.sroa.791.0194.us, %i.d ; 4 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %1
  br i1 %i.bm, label %.split197.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.bn = sub nuw nsw i64 %1, %i.bl               ; 2 uses
  %i.bo = icmp samesign ult i64 %i.al, %i.bn
  br i1 %i.bo, label %bb.h, label %.split200.us

bb.h:                                             ; preds = %bb.g
  %gep204 = getelementptr [2 x i8], ptr %invariant.gep203, i64 %i.bl
  %i.bp = load i16, ptr %gep204, align 2, !noundef !10
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %i.c, %i.bq
  %i.bs = add i32 %i.br, 16384
  %i.bt = lshr i32 %i.bs, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bt, i32 65535)
  %i.bu = trunc nuw i32 %..i.us to i16
  store i16 %i.bu, ptr %.sroa.089.0195.us, align 2
  %i.bv = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !165

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge190
  %.sroa.089.0195 = phi ptr [ %i.bw, %._crit_edge190 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.791.0194 = phi i64 [ %i.bx, %._crit_edge190 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.089.0195, i64 2 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.791.0194, 1
  %i.by = add nuw nsw i64 %.sroa.791.0194, %i.d   ; 4 uses
  %i.bz = icmp samesign ugt i64 %i.by, %1
  br i1 %i.bz, label %.split197.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge190, %bb.h, %._crit_edge178
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ca = sub nuw nsw i64 %1, %i.by               ; 6 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.cc = icmp samesign ult i64 %i.al, %i.ca
  br i1 %i.cc, label %.lr.ph189, label %.split200.us

.split197.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi198 = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.by, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi198, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph189:                                        ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.al
  %i.ce = load i16, ptr %i.cd, align 2, !noundef !10
  %i.cf = zext i16 %i.ce to i32
  %i.cg = mul i32 %i.c, %i.cf
  br label %bb.j

.split200.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi201 = phi i64 [ %i.bn, %bb.g ], [ %i.ca, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.us-phi201, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph189, %bb.o
  %.sroa.026.0187 = phi i32 [ %i.cg, %.lr.ph189 ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.1095.0186 = phi i64 [ 0, %.lr.ph189 ], [ %i.ck, %bb.o ] ; 3 uses
  %.sroa.794.0185 = phi i64 [ %i.a, %.lr.ph189 ], [ %i.ch, %bb.o ]
  %.sroa.092.0184 = phi ptr [ %4, %.lr.ph189 ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ch = add nsw i64 %.sroa.794.0185, -1         ; 2 uses
  %i.ci = icmp eq ptr %.sroa.092.0184, %i.am
  br i1 %i.ci, label %._crit_edge190, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.092.0184, i64 4
  %i.ck = add nuw nsw i64 %.sroa.1095.0186, 1
  %i.cl = load i32, ptr %.sroa.092.0184, align 4, !noundef !10
  %i.cm = shl nuw nsw i64 %.sroa.1095.0186, 1     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.cm, %i.ca
  br i1 %.not67.not, label %bb.m, label %bb.l, !prof !4

._crit_edge190:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.de, %bb.o ], [ %.sroa.026.0187, %bb.j ]
  %i.cn = add i32 %.sroa.026.0.lcssa, 16384
  %i.co = lshr i32 %i.cn, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.co, i32 65535)
  %i.cp = trunc nuw i32 %..i to i16
  store i16 %i.cp, ptr %.sroa.089.0195, align 2
  %i.cq = icmp eq ptr %i.bw, %i.aj
  br i1 %i.cq, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = or disjoint i64 %i.cm, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cr, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cs = xor i64 %.sroa.1095.0186, -1
  %i.ct = add nsw i64 %5, %i.cs
  %i.cu = shl nsw i64 %i.ct, 1                    ; 4 uses
  %.not68.not = icmp ult i64 %i.cu, %i.ca
  br i1 %.not68.not, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %bb.m
  %i.cv = or disjoint i64 %i.cu, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cu
  %i.cy = load i16, ptr %i.cw, align 2, !noundef !10
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cx, align 2, !noundef !10
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = mul i32 %i.dc, %i.cl
  %i.de = add i32 %i.dd, %.sroa.026.0187          ; 2 uses
  %i.df = icmp eq i64 %i.ch, 0
  br i1 %i.df, label %._crit_edge190, label %bb.j

bb.p:                                             ; preds = %.lr.ph177.split
  %i.dg = sub nuw nsw i64 %1, %i.ai               ; 6 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.dg
  br i1 %.not69, label %.split180.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph177.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph177.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split180.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi181 = phi i64 [ %i.x, %bb.d ], [ %i.dg, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi181, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.i
  %i.dj = load <4 x i16>, ptr %i.di, align 2
  %i.dk = zext <4 x i16> %i.dj to <4 x i32>
  %i.dl = mul <4 x i32> %i.p, %i.dk
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.086.0161 = phi ptr [ %4, %.lr.ph ], [ %i.dp, %bb.v ] ; 3 uses
  %.sroa.788.0160 = phi i64 [ %i.a, %.lr.ph ], [ %i.dn, %bb.v ]
  %.sroa.10.0159 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.v ] ; 3 uses
  %i.dm = phi <4 x i32> [ %i.dl, %.lr.ph ], [ %i.ep, %bb.v ] ; 2 uses
  %i.dn = add nsw i64 %.sroa.788.0160, -1         ; 2 uses
  %i.do = icmp eq ptr %.sroa.086.0161, %i.k
  br i1 %i.do, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.086.0161, i64 4
  %i.dq = add nuw nsw i64 %.sroa.10.0159, 1
  %i.dr = load i32, ptr %.sroa.086.0161, align 4, !noundef !10
  %i.ds = shl nuw nsw i64 %.sroa.10.0159, 1       ; 3 uses
  %i.dt = add nuw nsw i64 %i.ds, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.dt, %i.dg
  br i1 %.not71, label %bb.s, label %bb.t, !prof !6

._crit_edge:                                      ; preds = %bb.q, %bb.v
  %i.du = phi <4 x i32> [ %i.ep, %bb.v ], [ %i.dm, %bb.q ]
  %i.dv = add <4 x i32> %i.du, splat (i32 16384)
  %i.dw = lshr <4 x i32> %i.dv, splat (i32 15)
  %i.dx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dw, <4 x i32> splat (i32 65535))
  %i.dy = trunc nuw <4 x i32> %i.dx to <4 x i16>
  store <4 x i16> %i.dy, ptr %.sroa.085.0175, align 2
  %i.dz = icmp eq ptr %i.ag, %i.g
  br i1 %i.dz, label %._crit_edge178, label %.lr.ph177.split

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ds, i64 noundef %i.dt, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ea = xor i64 %.sroa.10.0159, -1
  %i.eb = add nsw i64 %5, %i.ea
  %i.ec = shl nsw i64 %i.eb, 1                    ; 4 uses
  %i.ed = add nsw i64 %i.ec, 4                    ; 2 uses
  %i.ee = icmp ugt i64 %i.ec, -5
  %.not72 = icmp ugt i64 %i.ed, %i.dg
  %or.cond73 = or i1 %i.ee, %.not72
  br i1 %or.cond73, label %bb.u, label %bb.v, !prof !6

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef %i.ed, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ds
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ec
  %i.eh = load <4 x i16>, ptr %i.ef, align 2
  %i.ei = zext <4 x i16> %i.eh to <4 x i32>
  %i.ej = load <4 x i16>, ptr %i.eg, align 2
  %i.ek = zext <4 x i16> %i.ej to <4 x i32>
  %i.el = add nuw nsw <4 x i32> %i.ek, %i.ei
  %i.em = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.en = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eo = mul <4 x i32> %i.el, %i.en
  %i.ep = add <4 x i32> %i.eo, %i.dm              ; 2 uses
  %i.eq = icmp eq i64 %i.dn, 0
  br i1 %i.eq, label %._crit_edge, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj3_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !10 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 6 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.a, 3                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph182.split.us, label %.lr.ph182.split.preheader

.lr.ph182.split.preheader:                        ; preds = %.lr.ph182
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph182.split

.lr.ph182.split.us:                               ; preds = %.lr.ph182
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph182.split.us
  %.sroa.087.0180.us = phi ptr [ %2, %.lr.ph182.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0179.us = phi i64 [ 0, %.lr.ph182.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.087.0180.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0179.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0179.us, 2      ; 3 uses
  %exitcond256 = icmp eq i64 %.sroa.7.0179.us, %i.r
  br i1 %exitcond256, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.x
  br i1 %.not69.us, label %.split185.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.087.0180.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge183, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph182.split:                                  ; preds = %.lr.ph182.split.preheader, %._crit_edge
  %.sroa.087.0180 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.lr.ph182.split.preheader ] ; 2 uses
  %.sroa.7.0179 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.lr.ph182.split.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.087.0180, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0179, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0179, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0179, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge183:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx210 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx210 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx210, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge183
  %i.al = mul nuw nsw i64 %i.a, 3                 ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.an = icmp eq i64 %i.a, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep208 = getelementptr [2 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = add nsw i64 %.idx210, -2
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = sub nsw i64 %1, %i.d
  %i.ar = add nuw nsw i64 %1, 1
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.d)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aq)
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.av = add nuw i64 %i.au, 1                    ; 2 uses
  %i.aw = and i64 %i.av, 7                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub i64 %i.av, %i.ay                   ; 3 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep446 = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bb
  %gep447 = getelementptr [2 x i8], ptr %invariant.gep446, i64 %index
  %wide.load = load <8 x i16>, ptr %gep447, align 2
  %i.bc = zext <8 x i16> %wide.load to <8 x i32>
  %i.bd = mul <8 x i32> %broadcast.splat, %i.bc
  %i.be = add <8 x i32> %i.bd, splat (i32 16384)
  %i.bf = lshr <8 x i32> %i.be, splat (i32 15)
  %i.bg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 65535))
  %i.bh = trunc nuw <8 x i32> %i.bg to <8 x i16>
  store <8 x i16> %i.bh, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body, !llvm.loop !166

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.091.0200.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.ba, %vector.body ]
  %.sroa.793.0199.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.h
  %.sroa.091.0200.us = phi ptr [ %i.bj, %bb.h ], [ %.sroa.091.0200.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.793.0199.us = phi i64 [ %i.bk, %bb.h ], [ %.sroa.793.0199.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.091.0200.us, i64 2 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.793.0199.us, 1
  %i.bl = add nuw nsw i64 %.sroa.793.0199.us, %i.d ; 4 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %1
  br i1 %i.bm, label %.split202.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.bn = sub nuw nsw i64 %1, %i.bl               ; 2 uses
  %i.bo = icmp samesign ult i64 %i.al, %i.bn
  br i1 %i.bo, label %bb.h, label %.split205.us

bb.h:                                             ; preds = %bb.g
  %gep209 = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.bl
  %i.bp = load i16, ptr %gep209, align 2, !noundef !10
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %i.c, %i.bq
  %i.bs = add i32 %i.br, 16384
  %i.bt = lshr i32 %i.bs, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bt, i32 65535)
  %i.bu = trunc nuw i32 %..i.us to i16
  store i16 %i.bu, ptr %.sroa.091.0200.us, align 2
  %i.bv = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !167

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge195
  %.sroa.091.0200 = phi ptr [ %i.bw, %._crit_edge195 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.793.0199 = phi i64 [ %i.bx, %._crit_edge195 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.091.0200, i64 2 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.793.0199, 1
  %i.by = add nuw nsw i64 %.sroa.793.0199, %i.d   ; 4 uses
  %i.bz = icmp samesign ugt i64 %i.by, %1
  br i1 %i.bz, label %.split202.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge195, %bb.h, %._crit_edge183
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ca = sub nuw nsw i64 %1, %i.by               ; 6 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.cc = icmp samesign ult i64 %i.al, %i.ca
  br i1 %i.cc, label %.lr.ph194, label %.split205.us

.split202.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi203 = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.by, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi203, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph194:                                        ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.al
  %i.ce = load i16, ptr %i.cd, align 2, !noundef !10
  %i.cf = zext i16 %i.ce to i32
  %i.cg = mul i32 %i.c, %i.cf
  br label %bb.j

.split205.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi206 = phi i64 [ %i.bn, %bb.g ], [ %i.ca, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.us-phi206, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph194, %bb.o
  %.sroa.026.0192 = phi i32 [ %i.cg, %.lr.ph194 ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.1097.0191 = phi i64 [ 0, %.lr.ph194 ], [ %i.ck, %bb.o ] ; 3 uses
  %.sroa.796.0190 = phi i64 [ %i.a, %.lr.ph194 ], [ %i.ch, %bb.o ]
  %.sroa.094.0189 = phi ptr [ %4, %.lr.ph194 ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ch = add nsw i64 %.sroa.796.0190, -1         ; 2 uses
  %i.ci = icmp eq ptr %.sroa.094.0189, %i.am
  br i1 %i.ci, label %._crit_edge195, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.094.0189, i64 4
  %i.ck = add nuw nsw i64 %.sroa.1097.0191, 1
  %i.cl = load i32, ptr %.sroa.094.0189, align 4, !noundef !10
  %i.cm = mul nuw nsw i64 %.sroa.1097.0191, 3     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.cm, %i.ca
  br i1 %.not67.not, label %bb.m, label %bb.l, !prof !14

._crit_edge195:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.de, %bb.o ], [ %.sroa.026.0192, %bb.j ]
  %i.cn = add i32 %.sroa.026.0.lcssa, 16384
  %i.co = lshr i32 %i.cn, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.co, i32 65535)
  %i.cp = trunc nuw i32 %..i to i16
  store i16 %i.cp, ptr %.sroa.091.0200, align 2
  %i.cq = icmp eq ptr %i.bw, %i.aj
  br i1 %i.cq, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = add nuw nsw i64 %i.cm, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cr, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cs = xor i64 %.sroa.1097.0191, -1
  %i.ct = add nsw i64 %5, %i.cs
  %i.cu = mul nsw i64 %i.ct, 3                    ; 3 uses
  %i.cv = add nsw i64 %i.cu, 1                    ; 2 uses
  %.not68 = icmp ugt i64 %i.cv, %i.ca
  br i1 %.not68, label %bb.n, label %bb.o, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cu
  %i.cy = load i16, ptr %i.cw, align 2, !noundef !10
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cx, align 2, !noundef !10
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = mul i32 %i.dc, %i.cl
  %i.de = add i32 %i.dd, %.sroa.026.0192          ; 2 uses
  %i.df = icmp eq i64 %i.ch, 0
  br i1 %i.df, label %._crit_edge195, label %bb.j

bb.p:                                             ; preds = %.lr.ph182.split
  %i.dg = sub nuw nsw i64 %1, %i.ai               ; 6 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.dg
  br i1 %.not69, label %.split185.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph182.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph182.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split185.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi186 = phi i64 [ %i.x, %bb.d ], [ %i.dg, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.i
  %i.dj = load <4 x i16>, ptr %i.di, align 2
  %i.dk = zext <4 x i16> %i.dj to <4 x i32>
  %i.dl = mul <4 x i32> %i.p, %i.dk
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.088.0166 = phi ptr [ %4, %.lr.ph ], [ %i.dp, %bb.v ] ; 3 uses
  %.sroa.790.0165 = phi i64 [ %i.a, %.lr.ph ], [ %i.dn, %bb.v ]
  %.sroa.10.0164 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.v ] ; 3 uses
  %i.dm = phi <4 x i32> [ %i.dl, %.lr.ph ], [ %i.ep, %bb.v ] ; 2 uses
  %i.dn = add nsw i64 %.sroa.790.0165, -1         ; 2 uses
  %i.do = icmp eq ptr %.sroa.088.0166, %i.k
  br i1 %i.do, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.088.0166, i64 4
  %i.dq = add nuw nsw i64 %.sroa.10.0164, 1
  %i.dr = load i32, ptr %.sroa.088.0166, align 4, !noundef !10
  %i.ds = mul nuw nsw i64 %.sroa.10.0164, 3       ; 3 uses
  %i.dt = add nuw nsw i64 %i.ds, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.dt, %i.dg
  br i1 %.not71, label %bb.s, label %bb.t, !prof !6

._crit_edge:                                      ; preds = %bb.q, %bb.v
  %i.du = phi <4 x i32> [ %i.ep, %bb.v ], [ %i.dm, %bb.q ]
  %i.dv = add <4 x i32> %i.du, splat (i32 16384)
  %i.dw = lshr <4 x i32> %i.dv, splat (i32 15)
  %i.dx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dw, <4 x i32> splat (i32 65535))
  %i.dy = trunc nuw <4 x i32> %i.dx to <4 x i16>
  store <4 x i16> %i.dy, ptr %.sroa.087.0180, align 2
  %i.dz = icmp eq ptr %i.ag, %i.g
  br i1 %i.dz, label %._crit_edge183, label %.lr.ph182.split

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ds, i64 noundef %i.dt, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ea = xor i64 %.sroa.10.0164, -1
  %i.eb = add nsw i64 %5, %i.ea
  %i.ec = mul nsw i64 %i.eb, 3                    ; 4 uses
  %i.ed = add nsw i64 %i.ec, 4                    ; 2 uses
  %i.ee = icmp ugt i64 %i.ec, -5
  %.not72 = icmp ugt i64 %i.ed, %i.dg
  %or.cond75 = or i1 %i.ee, %.not72
  br i1 %or.cond75, label %bb.u, label %bb.v, !prof !6

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef %i.ed, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ds
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ec
  %i.eh = load <4 x i16>, ptr %i.ef, align 2
  %i.ei = zext <4 x i16> %i.eh to <4 x i32>
  %i.ej = load <4 x i16>, ptr %i.eg, align 2
  %i.ek = zext <4 x i16> %i.ej to <4 x i32>
  %i.el = add nuw nsw <4 x i32> %i.ek, %i.ei
  %i.em = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.en = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eo = mul <4 x i32> %i.el, %i.en
  %i.ep = add <4 x i32> %i.eo, %i.dm              ; 2 uses
  %i.eq = icmp eq i64 %i.dn, 0
  br i1 %i.eq, label %._crit_edge, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj4_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !10 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 6 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.a, 2                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph174.split.us, label %.lr.ph174.split.preheader

.lr.ph174.split.preheader:                        ; preds = %.lr.ph174
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph174.split

.lr.ph174.split.us:                               ; preds = %.lr.ph174
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph174.split.us
  %.sroa.085.0172.us = phi ptr [ %2, %.lr.ph174.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0171.us = phi i64 [ 0, %.lr.ph174.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.085.0172.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0171.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0171.us, 2      ; 3 uses
  %exitcond242 = icmp eq i64 %.sroa.7.0171.us, %i.r
  br i1 %exitcond242, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.x
  br i1 %.not69.us, label %.split177.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.085.0172.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge175, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph174.split:                                  ; preds = %.lr.ph174.split.preheader, %._crit_edge
  %.sroa.085.0172 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.lr.ph174.split.preheader ] ; 2 uses
  %.sroa.7.0171 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.lr.ph174.split.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.085.0172, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0171, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0171, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0171, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge175:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx202 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx202 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx202, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge175
  %i.al = shl nuw nsw i64 %i.a, 2                 ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.an = icmp eq i64 %i.a, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep200 = getelementptr [2 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = add nsw i64 %.idx202, -2
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = sub nsw i64 %1, %i.d
  %i.ar = add nuw nsw i64 %1, 1
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.d)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aq)
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.av = add nuw i64 %i.au, 1                    ; 2 uses
  %i.aw = and i64 %i.av, 7                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub i64 %i.av, %i.ay                   ; 3 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep418 = getelementptr [2 x i8], ptr %invariant.gep200, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bb
  %gep419 = getelementptr [2 x i8], ptr %invariant.gep418, i64 %index
  %wide.load = load <8 x i16>, ptr %gep419, align 2
  %i.bc = zext <8 x i16> %wide.load to <8 x i32>
  %i.bd = mul <8 x i32> %broadcast.splat, %i.bc
  %i.be = add <8 x i32> %i.bd, splat (i32 16384)
  %i.bf = lshr <8 x i32> %i.be, splat (i32 15)
  %i.bg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 65535))
  %i.bh = trunc nuw <8 x i32> %i.bg to <8 x i16>
  store <8 x i16> %i.bh, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body, !llvm.loop !168

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.089.0192.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.ba, %vector.body ]
  %.sroa.791.0191.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.h
  %.sroa.089.0192.us = phi ptr [ %i.bj, %bb.h ], [ %.sroa.089.0192.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.791.0191.us = phi i64 [ %i.bk, %bb.h ], [ %.sroa.791.0191.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.089.0192.us, i64 2 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.791.0191.us, 1
  %i.bl = add nuw nsw i64 %.sroa.791.0191.us, %i.d ; 4 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %1
  br i1 %i.bm, label %.split194.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.bn = sub nuw nsw i64 %1, %i.bl               ; 2 uses
  %i.bo = icmp samesign ult i64 %i.al, %i.bn
  br i1 %i.bo, label %bb.h, label %.split197.us

bb.h:                                             ; preds = %bb.g
  %gep201 = getelementptr [2 x i8], ptr %invariant.gep200, i64 %i.bl
  %i.bp = load i16, ptr %gep201, align 2, !noundef !10
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %i.c, %i.bq
  %i.bs = add i32 %i.br, 16384
  %i.bt = lshr i32 %i.bs, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bt, i32 65535)
  %i.bu = trunc nuw i32 %..i.us to i16
  store i16 %i.bu, ptr %.sroa.089.0192.us, align 2
  %i.bv = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !169

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge187
  %.sroa.089.0192 = phi ptr [ %i.bw, %._crit_edge187 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.791.0191 = phi i64 [ %i.bx, %._crit_edge187 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.089.0192, i64 2 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.791.0191, 1
  %i.by = add nuw nsw i64 %.sroa.791.0191, %i.d   ; 4 uses
  %i.bz = icmp samesign ugt i64 %i.by, %1
  br i1 %i.bz, label %.split194.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge187, %bb.h, %._crit_edge175
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ca = sub nuw nsw i64 %1, %i.by               ; 6 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.cc = icmp samesign ult i64 %i.al, %i.ca
  br i1 %i.cc, label %.lr.ph186, label %.split197.us

.split194.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi195 = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.by, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi195, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph186:                                        ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.al
  %i.ce = load i16, ptr %i.cd, align 2, !noundef !10
  %i.cf = zext i16 %i.ce to i32
  %i.cg = mul i32 %i.c, %i.cf
  br label %bb.j

.split197.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi198 = phi i64 [ %i.bn, %bb.g ], [ %i.ca, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.us-phi198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph186, %bb.o
  %.sroa.026.0184 = phi i32 [ %i.cg, %.lr.ph186 ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.1095.0183 = phi i64 [ 0, %.lr.ph186 ], [ %i.ck, %bb.o ] ; 3 uses
  %.sroa.794.0182 = phi i64 [ %i.a, %.lr.ph186 ], [ %i.ch, %bb.o ]
  %.sroa.092.0181 = phi ptr [ %4, %.lr.ph186 ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ch = add nsw i64 %.sroa.794.0182, -1         ; 2 uses
  %i.ci = icmp eq ptr %.sroa.092.0181, %i.am
  br i1 %i.ci, label %._crit_edge187, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.092.0181, i64 4
  %i.ck = add nuw nsw i64 %.sroa.1095.0183, 1
  %i.cl = load i32, ptr %.sroa.092.0181, align 4, !noundef !10
  %i.cm = shl nuw nsw i64 %.sroa.1095.0183, 2     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.cm, %i.ca
  br i1 %.not67.not, label %bb.m, label %bb.l, !prof !4

._crit_edge187:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.de, %bb.o ], [ %.sroa.026.0184, %bb.j ]
  %i.cn = add i32 %.sroa.026.0.lcssa, 16384
  %i.co = lshr i32 %i.cn, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.co, i32 65535)
  %i.cp = trunc nuw i32 %..i to i16
  store i16 %i.cp, ptr %.sroa.089.0192, align 2
  %i.cq = icmp eq ptr %i.bw, %i.aj
  br i1 %i.cq, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = or disjoint i64 %i.cm, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cr, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cs = xor i64 %.sroa.1095.0183, -1
  %i.ct = add nsw i64 %5, %i.cs
  %i.cu = shl nsw i64 %i.ct, 2                    ; 4 uses
  %.not68.not = icmp ult i64 %i.cu, %i.ca
  br i1 %.not68.not, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %bb.m
  %i.cv = or disjoint i64 %i.cu, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cu
  %i.cy = load i16, ptr %i.cw, align 2, !noundef !10
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cx, align 2, !noundef !10
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = mul i32 %i.dc, %i.cl
  %i.de = add i32 %i.dd, %.sroa.026.0184          ; 2 uses
  %i.df = icmp eq i64 %i.ch, 0
  br i1 %i.df, label %._crit_edge187, label %bb.j

bb.p:                                             ; preds = %.lr.ph174.split
  %i.dg = sub nuw nsw i64 %1, %i.ai               ; 6 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.dg
  br i1 %.not69, label %.split177.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph174.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph174.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split177.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi178 = phi i64 [ %i.x, %bb.d ], [ %i.dg, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi178, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.i
  %i.dj = load <4 x i16>, ptr %i.di, align 2
  %i.dk = zext <4 x i16> %i.dj to <4 x i32>
  %i.dl = mul <4 x i32> %i.p, %i.dk
  %invariant.op = add nsw i64 %i.dg, -3
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.086.0158 = phi ptr [ %4, %.lr.ph ], [ %i.dp, %bb.v ] ; 3 uses
  %.sroa.788.0157 = phi i64 [ %i.a, %.lr.ph ], [ %i.dn, %bb.v ]
  %.sroa.10.0156 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.v ] ; 3 uses
  %i.dm = phi <4 x i32> [ %i.dl, %.lr.ph ], [ %i.ep, %bb.v ] ; 2 uses
  %i.dn = add nsw i64 %.sroa.788.0157, -1         ; 2 uses
  %i.do = icmp eq ptr %.sroa.086.0158, %i.k
  br i1 %i.do, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.086.0158, i64 4
  %i.dq = add nuw nsw i64 %.sroa.10.0156, 1
  %i.dr = load i32, ptr %.sroa.086.0158, align 4, !noundef !10
  %i.ds = shl nuw nsw i64 %.sroa.10.0156, 2       ; 4 uses
  %i.dt = or disjoint i64 %i.ds, 3
  %or.cond.not = icmp samesign ult i64 %i.dt, %i.dg
  br i1 %or.cond.not, label %bb.t, label %bb.s, !prof !14

._crit_edge:                                      ; preds = %bb.q, %bb.v
end_hunk_1
