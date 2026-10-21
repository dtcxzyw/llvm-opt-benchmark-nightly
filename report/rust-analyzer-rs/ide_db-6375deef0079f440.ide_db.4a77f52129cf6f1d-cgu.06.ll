Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.06?download=true
inline.NumInlined: 1559
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages14found_name_ref:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cf = load <2 x i32>, ptr %i.ce, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cg = call noundef nonnull ptr @_RNvXset_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7NameRefNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cg, ptr %i.ch, align 8
  store i32 1, ptr %i.g, align 8
  %i.ci = invoke fastcc noundef i8 @_RNvMs5_NtCs6oosyzwIepl_6ide_db6searchNtB5_17ReferenceCategory3new(ptr noundef nonnull align 8 %.val, i8 %.sroa.09.0.copyload, ptr %.val33)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17FileReferenceNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #37
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 %i.cb, ptr %i.f, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.cd, ptr %i.cl, align 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i32> %i.cf, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 %i.ci, ptr %.sroa.614.0..sroa_idx, align 8
  %i.cm = call noundef zeroext i1 %.32.val(ptr noundef nonnull %2, i32 noundef %i.cb, i32 noundef %i.cd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ck) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split

bb.u:                                             ; preds = %bb.y, %bb.w, %bb.s
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.v:                                             ; preds = %bb.y, %bb.w, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.y ], [ %i.co, %bb.w ], [ %i.cj, %bb.s ]
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.n
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17FileReferenceNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #37
          to label %bb.v unwind label %bb.u

bb.x:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 %i.bp, ptr %i.j, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.br, ptr %i.cq, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store <2 x i32> %i.bt, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 %i.bw, ptr %.sroa.68.0..sroa_idx, align 8
  %i.cr = call noundef zeroext i1 %.32.val(ptr noundef nonnull %2, i32 noundef %i.bp, i32 noundef %i.br, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cp) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split

bb.y:                                             ; preds = %bb.k
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17FileReferenceNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #37
          to label %bb.v unwind label %bb.u

bb.z:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i32 %i.bb, ptr %i.p, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.bd, ptr %i.cu, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store <2 x i32> %i.bf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i8 %i.bi, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cv = call noundef zeroext i1 %.32.val(ptr noundef nonnull %2, i32 noundef %i.bb, i32 noundef %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ct) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split

bb.aa:                                            ; preds = %bb.ac, %bb.ab, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.g
  %i.cw = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar) #38
  br i1 %i.cw, label %bb.ad, label %bb.aa

bb.ac:                                            ; preds = %bb.g
  %i.cx = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar) #38
  br i1 %i.cx, label %bb.ad, label %bb.aa

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.cy = call fastcc noundef i8 @_RNvMs5_NtCs6oosyzwIepl_6ide_db6searchNtB5_17ReferenceCategory3new(ptr noundef nonnull align 8 %.val, i8 %i.as, ptr %.val33)
  %i.cz = call noundef nonnull ptr @_RNvXset_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7NameRefNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.am, ptr %i.b, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ao, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 1, ptr %i.db, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.cz, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i32> %i.aq, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 %i.cy, ptr %.sroa.620.0..sroa_idx, align 8
  %i.dc = call noundef zeroext i1 %.32.val(ptr noundef nonnull %2, i32 noundef %i.am, i32 noundef %i.ao, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.db) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split

_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split: ; preds = %bb.t, %bb.x, %bb.z, %bb.ad, %bb.q, %bb.l, %bb.d, %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread12, %bb.aa
  %.sroa.0.1.ph = phi i1 [ false, %bb.aa ], [ %i.cv, %bb.z ], [ %i.cr, %bb.x ], [ %i.cm, %bb.t ], [ %i.dc, %bb.ad ], [ false, %bb.q ], [ false, %bb.l ], [ false, %bb.d ], [ false, %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread

_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread: ; preds = %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split, %bb.b, %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit
  %.sroa.0.1 = phi i1 [ false, %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit ], [ false, %bb.b ], [ %.sroa.0.1.ph, %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages20is_excluded_name_ref.exit.thread.sink.split ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages17include_self_refs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 104)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !12, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @_RNvNtCs6oosyzwIepl_6ide_db6search9def_to_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 1, ptr %i.e, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages3all(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @50, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages6search(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @56)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultEBF_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultEBF_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages6search(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 4                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 4                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 4                ; 6 uses
  %3 = alloca [40 x i8], align 8                  ; 5 uses
  %i.p = alloca [80 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 10 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [80 x i8], align 8                ; 11 uses
  %i.u = alloca [80 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 4                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 4                ; 6 uses
  %i.aa = alloca [80 x i8], align 8               ; 6 uses
  %i.ab = alloca [1 x i8], align 1                ; 4 uses
  %i.ac = alloca [1 x i8], align 1                ; 3 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [12 x i8], align 4               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [12 x i8], align 4               ; 6 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [72 x i8], align 8               ; 12 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [40 x i8], align 8               ; 12 uses
  %i.al = alloca [80 x i8], align 8               ; 11 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [40 x i8], align 8               ; 12 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [288 x i8], align 32             ; 11 uses
  %i.aq = alloca [56 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [12 x i8], align 4               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 11 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [40 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [12 x i8], align 4               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 7 uses
  %i.be = alloca [56 x i8], align 8               ; 6 uses
  %i.bf = alloca [1 x i8], align 1                ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 9 uses
  %i.bh = alloca [1 x i8], align 1                ; 4 uses
  %i.bi = alloca [288 x i8], align 32             ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [320 x i8], align 32             ; 5 uses
  %i.bl = alloca [1 x i8], align 1                ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 7 uses
  %i.bq = alloca [120 x i8], align 8              ; 9 uses
  %i.br = alloca [120 x i8], align 8              ; 4 uses
  %i.bs = alloca [352 x i8], align 32             ; 18 uses
  %i.bt = alloca [288 x i8], align 32             ; 11 uses
  %i.bu = alloca [24 x i8], align 8               ; 11 uses
  %i.bv = alloca [8 x i8], align 4                ; 9 uses
  %i.bw = alloca [12 x i8], align 4               ; 4 uses
  %i.bx = alloca [32 x i8], align 8               ; 9 uses
  %i.by = alloca [8 x i8], align 8                ; 5 uses
  %i.bz = alloca [120 x i8], align 8              ; 9 uses
  %i.ca = alloca [120 x i8], align 8              ; 4 uses
  %i.cb = alloca [352 x i8], align 32             ; 18 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [120 x i8], align 8              ; 9 uses
  %i.ce = alloca [120 x i8], align 8              ; 4 uses
  %i.cf = alloca [352 x i8], align 32             ; 18 uses
  %i.cg = alloca [24 x i8], align 8               ; 14 uses
  %i.ch = alloca [16 x i8], align 8               ; 10 uses
  %i.ci = alloca [64 x i8], align 8               ; 7 uses
  %i.cj = alloca [64 x i8], align 8               ; 5 uses
  %i.ck = alloca [288 x i8], align 32             ; 13 uses
  %i.cl = alloca [288 x i8], align 32             ; 13 uses
  %i.cm = alloca [32 x i8], align 8               ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 8 uses
  %i.co = alloca [8 x i8], align 8                ; 7 uses
  %i.cp = alloca [120 x i8], align 8              ; 9 uses
  %i.cq = alloca [120 x i8], align 8              ; 4 uses
  %i.cr = alloca [352 x i8], align 32             ; 18 uses
  %i.cs = alloca [8 x i8], align 8                ; 6 uses
  %i.ct = alloca [8 x i8], align 8                ; 10 uses
  %i.cu = alloca [8 x i8], align 8                ; 4 uses
  %i.cv = alloca [120 x i8], align 8              ; 20 uses
  %i.cw = alloca [120 x i8], align 8              ; 4 uses
  %i.cx = alloca [24 x i8], align 8               ; 9 uses
  %i.cy = alloca [352 x i8], align 32             ; 18 uses
  %i.cz = alloca [24 x i8], align 8               ; 15 uses
  %i.da = alloca [16 x i8], align 8               ; 9 uses
  %i.db = alloca [64 x i8], align 8               ; 7 uses
  %i.dc = alloca [64 x i8], align 8               ; 5 uses
  %i.dd = alloca [320 x i8], align 32             ; 13 uses
  %i.de = alloca [288 x i8], align 32             ; 13 uses
  %i.df = alloca [24 x i8], align 8               ; 15 uses
  %i.dg = alloca [40 x i8], align 8               ; 5 uses
  %i.dh = alloca [40 x i8], align 8               ; 4 uses
  %i.di = alloca [32 x i8], align 8               ; 9 uses
  %i.dj = alloca [32 x i8], align 8               ; 11 uses
  %i.dk = alloca [40 x i8], align 8               ; 8 uses
  %i.dl = alloca [32 x i8], align 8               ; 7 uses
  %i.dm = alloca [40 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.dn = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.do = icmp ult i64 %i.dn, 3
  br i1 %i.do, label %bb.b, label %.thread

default.unreachable1406:                          ; preds = %bb.ox, %bb.mi, %bb.mu, %bb.gs, %bb.he, %bb.kn, %bb.ji
  unreachable

.loopexit924:                                     ; preds = %bb.pu, %bb.bp
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.dp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB7_10FindUsages6search10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dp, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !30

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  store i64 2, ptr %i.dk, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store ptr null, ptr %i.dq, align 8
  br label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit

bb.c:                                             ; preds = %bb.b
  %i.dr = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB7_10FindUsages6search10___CALLSITE) #35 ; 2 uses
  %.not = icmp eq i8 %i.dr, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.07.0 = phi i8 [ %i.dr, %bb.c ], [ %i.dp, %bb.b ], [ %i.dp, %bb.b ]
  %i.ds = load ptr, ptr @_RNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB7_10FindUsages6search10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4
  %i.dt = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ds, i8 noundef %.sroa.07.0)
  br i1 %i.dt, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.du = load ptr, ptr @_RNvNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB7_10FindUsages6search10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  store i64 1, ptr %i.dl, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.493.0..sroa_idx, align 8
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 0, ptr %.sroa.594.0..sroa_idx, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.dv, ptr %i.dw, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  %.pr = load i64, ptr %i.dk, align 8, !alias.scope !1488
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dx)
          to label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit unwind label %bb.g, !noalias !1489

bb.g:                                             ; preds = %bb.f
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk) #37
          to label %common.resume unwind label %bb.h, !noalias !1489

bb.h:                                             ; preds = %bb.g
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1489
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.dy, %bb.g ], [ %.pn224, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit: ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dm, ptr noundef nonnull align 8 dereferenceable(40) %i.dk, i64 40, i1 false), !noalias !4
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !4, !align !12, !noundef !4 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits18as_trait_assoc_def(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.dg, ptr noundef nonnull %i.ec, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ed)
          to label %bb.j unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit: ; preds = %.body, %bb.n, %bb.i
  %.pn224 = phi { ptr, i32 } [ %i.ee, %bb.i ], [ %i.et, %bb.n ], [ %.pn222, %.body ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dm) #37
          to label %common.resume unwind label %bb.ib

bb.i:                                             ; preds = %.invoke1455, %bb.o, %bb.j, %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit

bb.j:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.ef = load i8, ptr %i.dg, align 8, !range !1490, !noundef !4
  %.not148 = icmp eq i8 %i.ef, -1
  %. = select i1 %.not148, ptr %i.ed, ptr %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %., i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %i.eg = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4
  invoke void @_RNvMs3_NtCs6oosyzwIepl_6ide_db6searchNtNtB7_4defs10Definition12search_scope(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.di, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dh, ptr noundef nonnull align 8 %i.eg)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8, !align !12, !noundef !4 ; 4 uses
  %.not149 = icmp eq ptr %i.ei, null              ; 2 uses
  br i1 %.not149, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !1491, !noundef !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !1492, !noundef !4
  %i.en = icmp ugt i64 %i.ek, %i.em               ; 2 uses
  %spec.select5.i = select i1 %i.en, ptr %i.ei, ptr %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1493
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %spec.select5.i)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  %spec.select.i = select i1 %i.en, ptr %i.di, ptr %i.ei
  %i.eo = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %spec.select.i, ptr %i.eo, align 8, !noalias !1493
  %i.ep = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr %i.a, ptr %i.ep, align 8, !noalias !1493
  invoke void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtB2a_4iter6traits7collect12FromIteratorTB15_B25_EE9from_iterINtNtNtB4e_8adapters10filter_map9FilterMapINtB7_4IterB15_B25_ENCNvMs1_NtCs6oosyzwIepl_6ide_db6searchNtB6l_11SearchScope12intersections_0EEB6n_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.be)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit308

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit308: ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !noundef !4
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.invoke1455, label %bb.p

bb.n:                                             ; preds = %.noexc, %bb.l
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit unwind label %bb.ib

bb.o:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1493
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit308 unwind label %bb.i

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !align !12, !noundef !4 ; 3 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.sroa.212.0.copyload = load i32, ptr %.sroa.212.0..sroa_idx, align 4 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.not150 = icmp eq ptr %i.ev, null
  br i1 %.not150, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val267 = load ptr, ptr %i.ev, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.ew = getelementptr inbounds nuw i8, ptr %.val267, i64 48 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !noundef !4 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %bb.r, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i, !prof !6

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.noexc309 unwind label %bb.bh

.noexc309:                                        ; preds = %bb.r
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i: ; preds = %bb.q
  %i.ez = add nuw i32 %i.ex, 1
  store i32 %i.ez, ptr %i.ew, align 4
  %i.fa = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.val267)
          to label %.noexc310 unwind label %bb.bh ; 2 uses

.noexc310:                                        ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i
  %i.fb = extractvalue { i64, ptr } %i.fa, 0
  %i.fc = extractvalue { i64, ptr } %i.fa, 1
  store i64 %i.fb, ptr %i.bd, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  store ptr %i.fc, ptr %i.fd, align 8
  br label %bb.s

bb.s:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i, %.noexc310
  %i.fe = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %.noexc.i unwind label %bb.ac  ; 2 uses

.noexc.i:                                         ; preds = %bb.s
  %i.ff = extractvalue { i64, ptr } %i.fe, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ff, 2
  br i1 %.not.i.i, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs6oosyzwIepl_6ide_db.exit.i, label %bb.t

bb.t:                                             ; preds = %.noexc.i
  %i.fg = extractvalue { i64, ptr } %i.fe, 1      ; 10 uses
  %i.fh = trunc nuw i64 %i.ff to i1
  br i1 %i.fh, label %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs6oosyzwIepl_6ide_db.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 48 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !noalias !1494, !noundef !4
  %i.fk = add i32 %i.fj, -1                       ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 4, !noalias !1494
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i: ; preds = %bb.u
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fg) #35
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i unwind label %bb.ac

_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs6oosyzwIepl_6ide_db.exit.i.i.i: ; preds = %bb.t
  %.not.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs6oosyzwIepl_6ide_db.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1495
  store ptr %i.fg, ptr %i.bc, align 8, !noalias !1495
  %i.fm = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %bb.y unwind label %bb.w, !noalias !1494

bb.w:                                             ; preds = %bb.v
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 48 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !noalias !1494, !noundef !4
  %i.fq = add i32 %i.fp, -1                       ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 4, !noalias !1494
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.x, label %.body.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fg) #35
          to label %.body.i unwind label %bb.ab, !noalias !1494

bb.y:                                             ; preds = %bb.v
  %i.fs = icmp eq i16 %i.fm, 24
  br i1 %i.fs, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 48 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !noalias !1494, !noundef !4
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 4, !noalias !1494
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.aa, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fg) #35
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i unwind label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1494
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fg, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1495
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs6oosyzwIepl_6ide_db.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i, %bb.u
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs6oosyzwIepl_6ide_db.exit.i.i.i ], [ null, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs6oosyzwIepl_6ide_db.exit.i.i.i ], [ null, %bb.u ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i ] ; 2 uses
  %.not7.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not7.i.i, label %bb.s, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs6oosyzwIepl_6ide_db.exit.i

bb.ac:                                            ; preds = %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i, %bb.s
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.x, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.ac ], [ %i.fn, %bb.x ], [ %i.fn, %bb.w ] ; 3 uses
  %.val6.i = load i64, ptr %i.bd, align 8, !range !10, !noundef !4
  %.val7.i = load ptr, ptr %i.fd, align 8         ; 3 uses
  %i.fz = icmp eq i64 %.val6.i, 2
  br i1 %i.fz, label %.body, label %bb.ad

bb.ad:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !noundef !4
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 4
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i.i, label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.ad
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #35
          to label %.body unwind label %bb.af

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs6oosyzwIepl_6ide_db.exit.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i, %.noexc.i
  %.sroa.0.0.i5.i = phi ptr [ %.sroa.0.0.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i ], [ null, %.noexc.i ] ; 3 uses
  %.val4.i = load i64, ptr %i.bd, align 8, !range !10, !noundef !4
  %.val5.i = load ptr, ptr %i.fd, align 8         ; 3 uses
  %i.ge = icmp eq i64 %.val4.i, 2
  br i1 %i.ge, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs6oosyzwIepl_6ide_db.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.val5.i, i64 48 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !noundef !4
  %i.gh = add i32 %i.gg, -1                       ; 2 uses
  store i32 %i.gh, ptr %i.gf, align 4
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i11.i, label %bb.ah

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i11.i: ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i) #35
          to label %bb.ah unwind label %bb.bh

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ag:                                            ; preds = %bb.p
  %.sroa.011.0.copyload = load i8, ptr %i.ed, align 8
  %i.gk = icmp eq i8 %.sroa.011.0.copyload, 3
  br i1 %i.gk, label %bb.at, label %bb.au

.body:                                            ; preds = %bb.bj, %bb.ba, %bb.am, %bb.an, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i.i, %bb.ad, %.body.i, %bb.bh, %.body345
  %.pn222 = phi { ptr, i32 } [ %.pn220, %.body345 ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i.i ], [ %eh.lpad-body.i, %bb.ad ], [ %i.ht, %bb.ba ], [ %i.gq, %bb.am ], [ %i.ig, %bb.bh ], [ %i.ip, %bb.bj ], [ %i.gq, %bb.an ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit unwind label %bb.ib

bb.ah:                                            ; preds = %bb.ae, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs6oosyzwIepl_6ide_db.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.not153 = icmp eq ptr %.sroa.0.0.i5.i, null
  br i1 %.not153, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6oosyzwIepl_6ide_db.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5.i, i64 48 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !noundef !4
  %i.gn = add i32 %i.gm, -1                       ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 4
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.aj, label %.invoke1455.sink.split

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i5.i) #35
          to label %.invoke1455.sink.split unwind label %bb.bh

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.ah
  %.val268 = load ptr, ptr %i.ev, align 8, !nonnull !4, !noundef !4
  %i.gp = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECs6oosyzwIepl_6ide_db(ptr nonnull %.val268)
          to label %bb.ak unwind label %bb.bh     ; 6 uses

bb.ak:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6oosyzwIepl_6ide_db.exit
  %.not154 = icmp eq ptr %i.gp, null
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages6search:bb.a
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit.i unwind label %bb.cl

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1514
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit.i, %bb.cq, %.thread86.i, %.thread91.i
  %.sroa.0.0.ph.i = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit.i ], [ false, %.thread91.i ], [ false, %.thread86.i ], [ false, %bb.cq ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aw)
          to label %bb.en unwind label %bb.em

bb.ei:                                            ; preds = %bb.ek, %bb.ej, %bb.dv, %bb.dd, %.body.i338, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit82.i
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ej:                                            ; preds = %bb.ek, %bb.cr
  %.pn5599.i = phi { ptr, i32 } [ %.pn55100.i, %bb.ek ], [ %.pn53.i, %bb.cr ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit82.i unwind label %bb.ei

bb.ek:                                            ; preds = %.thread96.i, %bb.cr
  %.pn55100.i = phi { ptr, i32 } [ %i.lf, %.thread96.i ], [ %.pn53.i, %bb.cr ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #37
          to label %bb.ej unwind label %bb.ei

bb.el:                                            ; preds = %.thread851, %bb.en, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i8 1, ptr %i.bl, align 1
  invoke void @_RINvMs4_NtCslLTI5cSnp8O_6memchr6memmemNtB6_13FinderBuilder25build_forward_with_rankerNtNtNtNtB8_4arch3all10packedpair20DefaultFrequencyRankeECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([288 x i8]) align 32 captures(none) dereferenceable(288) %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.020.0, i64 noundef %.sroa.10.0)
          to label %bb.eo unwind label %bb.em

.body345:                                         ; preds = %bb.et, %bb.es, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit, %bb.em, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit82.i, %bb.ce
  %.pn220 = phi { ptr, i32 } [ %.pn57.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6oosyzwIepl_6ide_db.exit82.i ], [ %i.oa, %bb.em ], [ %i.kg, %bb.ce ], [ %.pn218, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit ], [ %.pn218, %bb.es ], [ %.pn218, %bb.et ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df) #37
          to label %.body unwind label %bb.ib

bb.em:                                            ; preds = %.sink.split.i, %bb.cc, %bb.cb, %bb.ca, %bb.el
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body345

bb.en:                                            ; preds = %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br i1 %.sroa.0.0.ph.i, label %.thread843, label %bb.el

bb.eo:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oc = load i32, ptr %i.ob, align 8, !range !29, !noundef !4
  %.not156 = icmp eq i32 %i.oc, -1
  br i1 %.not156, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1554
  store i8 1, ptr %i.ad, align 1, !noalias !1554
  %i.od = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  invoke void @_RINvMs4_NtCslLTI5cSnp8O_6memchr6memmemNtB6_13FinderBuilder25build_forward_with_rankerNtNtNtNtB8_4arch3all10packedpair20DefaultFrequencyRankeECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([288 x i8]) align 32 captures(none) dereferenceable(288) %i.od, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4)
          to label %bb.ev unwind label %bb.eu

bb.eq:                                            ; preds = %bb.eo
  %i.oe = getelementptr inbounds nuw i8, ptr %i.dd, i64 288
  store i64 2, ptr %i.oe, align 32
  br label %bb.er

bb.er:                                            ; preds = %bb.ev, %bb.eq
  %i.of = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.oh = load i8, ptr %i.og, align 1, !range !13, !noundef !4 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.oi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj)
          to label %bb.ez unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.ey, %bb.ex, %bb.ew, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit361, %bb.eu
  %.pn218 = phi { ptr, i32 } [ %i.op, %bb.eu ], [ %.pn216, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit361 ], [ %.pn216, %bb.ew ], [ %.pn216, %bb.ex ], [ %.pn216, %bb.ey ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.de, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %i.ok = load i64, ptr %i.oj, align 32, !range !7, !alias.scope !1558, !noundef !4
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %.body345, label %bb.es

bb.es:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit
  %i.om = getelementptr inbounds nuw i8, ptr %i.de, i64 272
  %.val1.i.i.i = load i64, ptr %i.om, align 16, !alias.scope !1558, !noundef !4 ; 2 uses
  %i.on = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.on, label %.body345, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.oo = getelementptr inbounds nuw i8, ptr %i.de, i64 264
  %.val.i.i.i = load ptr, ptr %i.oo, align 8, !alias.scope !1558, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #36, !noalias !1558
  br label %.body345

bb.eu:                                            ; preds = %bb.ep
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit

bb.ev:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1554
  store ptr %0, ptr %i.bk, align 32, !alias.scope !1553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(320) %i.dd, ptr noundef nonnull align 32 dereferenceable(320) %i.bk, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.er

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit361: ; preds = %.invoke, %bb.jq, %bb.jr, %bb.jm, %bb.jn, %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit, %bb.ly, %bb.lx, %bb.lu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEECs6oosyzwIepl_6ide_db.exit, %bb.fl, %bb.lw, %bb.lv
  %.pn216 = phi { ptr, i32 } [ %.pn214, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit ], [ %.pn170, %bb.ly ], [ %i.sa, %bb.fl ], [ %.pn195, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEECs6oosyzwIepl_6ide_db.exit ], [ %.pn170, %bb.lu ], [ %.pn170, %bb.lv ], [ %.pn170, %bb.lx ], [ %.pn170, %bb.lw ], [ %i.xv, %bb.jn ], [ %i.yg, %bb.jr ], [ %.pn170, %.invoke ], [ %i.yg, %bb.jq ], [ %lpad.loopexit.split-lp1574.a, %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.xv, %bb.jm ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.dd, i64 288
  %i.or = load i64, ptr %i.oq, align 32, !range !10, !alias.scope !1559, !noundef !4 ; 2 uses
  %i.os = icmp eq i64 %i.or, 2
  br i1 %i.os, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit, label %bb.ew

bb.ew:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit361
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.ot = icmp eq i64 %i.or, 0
  br i1 %i.ot, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ou = getelementptr inbounds nuw i8, ptr %i.dd, i64 304
  %.val1.i.i.i.i.i = load i64, ptr %i.ou, align 16, !alias.scope !1564, !noundef !4 ; 2 uses
  %i.ov = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ov, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ow = getelementptr inbounds nuw i8, ptr %i.dd, i64 296
  %.val.i.i.i.i.i = load ptr, ptr %i.ow, align 8, !alias.scope !1564, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #36, !noalias !1564
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit

.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit598, %.noexc356, %.noexc355, %.noexc354, %bb.fc, %bb.fa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit651, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECs6oosyzwIepl_6ide_db.exit.sink.split.i543, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECs6oosyzwIepl_6ide_db.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEECs6oosyzwIepl_6ide_db.exit460, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEECs6oosyzwIepl_6ide_db.exit381, %bb.fg, %bb.fe, %bb.er, %bb.jf, %bb.fi
  %lpad.loopexit.split-lp1574.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit361

bb.ez:                                            ; preds = %bb.er
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  store ptr %i.of, ptr %.sroa.4.0..sroa_idx.i349, align 8, !alias.scope !1565
  %.sroa.5.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  store i8 %i.oh, ptr %.sroa.5.0..sroa_idx.i350, align 8, !alias.scope !1565
  store ptr %i.of, ptr %i.dc, align 8, !alias.scope !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.db, ptr noundef nonnull align 8 dereferenceable(64) %i.dc, i64 64, i1 false)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.oz = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 7 uses
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.06.0.in.i558 = getelementptr inbounds nuw i8, ptr %i.de, i64 264 ; 3 uses
  %.sroa.57.0.in.i560 = getelementptr inbounds nuw i8, ptr %i.de, i64 272 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.3.0..sroa_idx735 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %.sroa.6.0..sroa_idx737 = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %.sroa.7.0..sroa_idx738 = getelementptr inbounds nuw i8, ptr %i.cy, i64 288 ; 4 uses
  %.sroa.8.0..sroa_idx740 = getelementptr inbounds nuw i8, ptr %i.cy, i64 296 ; 4 uses
  %.sroa.9.0..sroa_idx742 = getelementptr inbounds nuw i8, ptr %i.cy, i64 304 ; 4 uses
  %.sroa.10744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 320
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 328
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 336
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 340
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 344
  %i.pa = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.01.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.01.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %.sroa.6.0..sroa_idx.i.i.i.i656 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.val8.i.i.i = load ptr, ptr %i.pf, align 8     ; 7 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  %i.pk = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 7 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.cv, i64 96 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.cv, i64 56 ; 4 uses
  %i.po = load i8, ptr %i.ed, align 8             ; 2 uses
  %i.pp = icmp eq i8 %i.po, 1
  %i.pq = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0..sroa_idx.i689 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.6.0..sroa_idx.i691 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.pw = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.qc = load i32, ptr %i.qb, align 8, !range !28 ; 2 uses
  %.not19.i = icmp eq i32 %i.qc, -1
  %i.qd = icmp eq i8 %i.po, 11
  %.not20.i = icmp eq i32 %i.qc, 2
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.qi = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.qj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.qk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.01.sroa.5.0..sroa_idx.i707 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i708 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.0..sroa_idx.i710 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.qn = getelementptr inbounds nuw i8, ptr %i.dd, i64 288 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 2 uses
  %.sroa.06.0.in.i581 = getelementptr inbounds nuw i8, ptr %i.dd, i64 296 ; 3 uses
  %.sroa.57.0.in.i583 = getelementptr inbounds nuw i8, ptr %i.dd, i64 304 ; 3 uses
  %.sroa.2746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.3747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.sroa.4748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.5749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  %.sroa.6750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %.sroa.7751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 288 ; 4 uses
  %.sroa.8752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 296 ; 4 uses
  %.sroa.9753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 304 ; 4 uses
  %.sroa.10755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 320
  %.sroa.11756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 328
  %.sroa.12757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 336
  %.sroa.13758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 340
  %.sroa.14759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 344
  %i.qp = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 2 uses
  %.val299 = load i8, ptr %i.qq, align 2          ; 2 uses
  %i.qr = and i8 %.val299, 8
  %.not.i.i610 = icmp eq i8 %i.qr, 0
  %i.qs = and i8 %.val299, 4
  %.not1.i.i611 = icmp eq i8 %i.qs, 0
  %i.qt = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.qu = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.qv = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4.0..sroa_idx.i618 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.6.0..sroa_idx.i620 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  br label %bb.fa

bb.fa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6oosyzwIepl_6ide_db.exit655, %bb.ez
  %i.qz = invoke fastcc { ptr, ptr } @_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEENtNtNtNtB20_4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_4find5checkTRBV_RB1V_EQNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4M_10FindUsages11scope_files0E0INtNtNtB20_3ops12control_flow11ControlFlowB4s_EEB4O_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ox, ptr noalias nofree noundef align 8 dereferenceable(16) %i.oy)
          to label %bb.fb unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.ra = extractvalue { ptr, ptr } %i.qz, 0      ; 2 uses
  %.not157 = icmp eq ptr %i.ra, null
  br i1 %.not157, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.rb = extractvalue { ptr, ptr } %i.qz, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rb) ]
  %.val233 = load ptr, ptr %i.db, align 8, !nonnull !4, !align !12, !noundef !4 ; 3 uses
  %i.rc = load <2 x i32>, ptr %i.ra, align 4      ; 4 uses
  %i.rd = extractelement <2 x i32> %i.rc, i64 1   ; 4 uses
  %i.re = extractelement <2 x i32> %i.rc, i64 0   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  %.sroa.0.0.copyload.i = load i32, ptr %i.rb, align 4, !alias.scope !1566
  %.sroa.4.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i352, align 4, !alias.scope !1566
  %.sroa.5.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i353, align 4, !alias.scope !1566
  %i.rf = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECs6oosyzwIepl_6ide_db(i32 noundef %i.re, i32 noundef %i.rd, ptr noundef nonnull %.val233, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @14)
          to label %.noexc354 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc354:                                        ; preds = %bb.fc
  %i.rg = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.rf)
          to label %.noexc355 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc355:                                        ; preds = %.noexc354
  %i.rh = invoke { i32, i32 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase9file_text(ptr noundef nonnull align 8 %.val233, i32 noundef %i.rg)
          to label %.noexc356 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc356:                                        ; preds = %.noexc355
  %i.ri = extractvalue { i32, i32 } %i.rh, 0
  %i.rj = extractvalue { i32, i32 } %i.rh, 1
  %i.rk = invoke noundef nonnull align 8 ptr @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs0_1__NtB8_8FileText4textNtCs6oosyzwIepl_6ide_db12RootDatabaseEBV_(i32 noundef %i.ri, i32 noundef %i.rj, ptr noundef nonnull align 8 %.val233)
          to label %.noexc357 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc357:                                        ; preds = %.noexc356
  %i.rl = trunc i32 %.sroa.0.0.copyload.i to i1
  br i1 %i.rl, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %.noexc357
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !noalias !1567, !noundef !4 ; 2 uses
  %i.ro = icmp ugt i64 %i.rn, 4294967295
  %i.rp = shl nuw i64 %i.rn, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.ro, i64 513, i64 %i.rp ; 2 uses
  %i.rq = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.rq, label %bb.fe, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !6

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1568
  store i8 2, ptr %i.ac, align 1, !noalias !1568
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 43, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1030) #32
          to label %.noexc358 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc358:                                        ; preds = %bb.fe
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.fd
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.ff

bb.ff:                                            ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, %.noexc357
  %.sroa.3.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %.sroa.5.0.copyload.i, %.noexc357 ] ; 2 uses
  %.sroa.01.0.i = phi i32 [ 0, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %.sroa.4.0.copyload.i, %.noexc357 ] ; 2 uses
  %i.rr = load ptr, ptr %i.rk, align 8, !noalias !1567, !nonnull !4, !noundef !4
  %i.rs = atomicrmw add ptr %i.rr, i64 1 monotonic, align 8, !noalias !1567
  %i.rt = icmp slt i64 %i.rs, 0
  br i1 %i.rt, label %bb.fg, label %bb.md, !prof !6

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.noexc359 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc359:                                        ; preds = %bb.fg
  unreachable

bb.fh:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.ru = load i8, ptr %i.ed, align 8, !range !27, !noundef !4
  %i.rv = icmp eq i8 %i.ru, 3
  br i1 %i.rv, label %bb.fi, label %.thread853

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.rw = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4
  invoke void @_RNvMs1_NtCs6oosyzwIepl_6ide_db6searchNtB5_11SearchScope19module_and_children(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cm, ptr noundef nonnull align 8 %i.rw, i32 noundef %.sroa.212.0.copyload, i32 noundef %.sroa.3.0.copyload)
          to label %bb.fk unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEECs6oosyzwIepl_6ide_db.exit381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ry = load i8, ptr %i.rx, align 4, !range !13
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.jf, label %.thread853

bb.fk:                                            ; preds = %bb.fi
  invoke void @_RNvMs1_NtCs6oosyzwIepl_6ide_db6searchNtB5_11SearchScope12intersection(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %bb.fm unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.sa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit361 unwind label %bb.ib

bb.fm:                                            ; preds = %bb.fk
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit363 unwind label %bb.fn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.fv, %bb.fu, %bb.ft, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit375, %bb.fn
  %.pn195 = phi { ptr, i32 } [ %i.sb, %bb.fn ], [ %.pn193, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit375 ], [ %.pn193, %bb.ft ], [ %.pn193, %bb.fu ], [ %.pn193, %bb.fv ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit361 unwind label %bb.ib

bb.fn:                                            ; preds = %bb.fq, %bb.fm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit363
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEECs6oosyzwIepl_6ide_db.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit363: ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.sc = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4
  %i.sd = invoke noundef zeroext i1 @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module13is_crate_root(i32 noundef %.sroa.212.0.copyload, i32 noundef %.sroa.3.0.copyload, ptr noundef nonnull %i.sc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18)
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages6search:bb.a

bb.pg:                                            ; preds = %bb.pf
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pk)
          to label %.body.i677 unwind label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.ajr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i.i: ; preds = %bb.pf
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pk)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i unwind label %bb.pi

bb.pi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i.i
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i677

.body.i677:                                       ; preds = %bb.pi, %bb.pg
  %eh.lpad-body.i678 = phi { ptr, i32 } [ %i.ajs, %bb.pi ], [ %i.ajq, %bb.pg ]
  store i64 0, ptr %i.cv, align 8, !alias.scope !1735
  br label %.body682

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i.i, %bb.pe, %.backedge
  store i64 0, ptr %i.cv, align 8, !alias.scope !1735
  %i.ajt = load ptr, ptr %i.pl, align 8, !alias.scope !1738, !noundef !4
  %.not.i28.i = icmp eq ptr %i.ajt, null
  br i1 %.not.i28.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i
  %i.aju = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB31_10FindUsages10find_nodess_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4W_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1l_j1_ENCNCB2V_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB25_3ast8node_ext8NameLikeENCINvNvXsi_B4W_B59_B43_8try_fold7flattenB5V_uB7l_NCINvNvB43_8find_map5checkINtB1o_10SyntaxNodeB21_EB80_QNvYB80_NtB84_7AstNode4castE0E0E0B7l_EB33_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cv)
          to label %.noexc680 unwind label %bb.pt ; 2 uses

.noexc680:                                        ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i
  %i.ajv = extractvalue { i64, ptr } %i.aju, 0    ; 2 uses
  %.not.i.i.i672 = icmp eq i64 %i.ajv, -1
  br i1 %.not.i.i.i672, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i, label %bb.pu

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i: ; preds = %.noexc680
  %.pre.i = load i64, ptr %i.cv, align 8, !range !7, !alias.scope !1739
  %i.ajw = icmp eq i64 %.pre.i, 0
  br i1 %i.ajw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i, label %bb.pj

bb.pj:                                            ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pk)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i unwind label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pk)
          to label %.body33.i unwind label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.ajy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i: ; preds = %bb.pj
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pk)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i unwind label %bb.pm

bb.pm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

.body33.i:                                        ; preds = %bb.pm, %bb.pk
  %eh.lpad-body34.i = phi { ptr, i32 } [ %i.ajz, %bb.pm ], [ %i.ajx, %bb.pk ]
  store i64 0, ptr %i.cv, align 8, !alias.scope !1735
  br label %.body682

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i
  store i64 0, ptr %i.cv, align 8, !alias.scope !1735
  %i.aka = load i64, ptr %i.pm, align 8, !range !7, !alias.scope !1735, !noundef !4
  %i.akb = trunc nuw i64 %i.aka to i1
  br i1 %i.akb, label %bb.pn, label %.thread877

bb.pn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i
  %i.akc = invoke fastcc { i64, ptr } @_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4X_10FindUsages10find_nodess_00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtB3W_3ast8node_ext8NameLikeENCINvNvB1j_8find_map5checkINtB3f_10SyntaxNodeB3S_EB6G_QNvYB6G_NtB6K_7AstNode4castE0E0B4Z_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.q, ptr noalias nofree noundef align 8 dereferenceable(40) %i.pn) #38
          to label %.noexc681 unwind label %bb.pt ; 2 uses

.noexc681:                                        ; preds = %bb.pn
  %i.akd = extractvalue { i64, ptr } %i.akc, 0    ; 2 uses
  %.not.i37.i = icmp eq i64 %i.akd, -1
  br i1 %.not.i37.i, label %bb.po, label %bb.pu

bb.po:                                            ; preds = %.noexc681
  %.pr50.i = load i64, ptr %i.pm, align 8, !alias.scope !1740
  %i.ake = icmp eq i64 %.pr50.i, 0
  br i1 %i.ake, label %.thread877, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i unwind label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.akf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pn)
          to label %.body41.i unwind label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.akg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i: ; preds = %bb.pp
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pn)
          to label %.thread877 unwind label %bb.ps

bb.ps:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i
  %i.akh = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

.body41.i:                                        ; preds = %bb.ps, %bb.pq
  %eh.lpad-body42.i = phi { ptr, i32 } [ %i.akh, %bb.ps ], [ %i.akf, %bb.pq ]
  store i64 0, ptr %i.pm, align 8, !alias.scope !1735
  br label %.body682

.body682:                                         ; preds = %bb.qy, %bb.qz, %bb.qu, %bb.qv, %bb.qq, %bb.qr, %bb.pt, %.body41.i, %.body33.i, %.body.i677
  %.pn208 = phi { ptr, i32 } [ %i.amb, %bb.qu ], [ %eh.lpad-body.i678, %.body.i677 ], [ %i.als, %bb.qq ], [ %i.aki, %bb.pt ], [ %eh.lpad-body42.i, %.body41.i ], [ %eh.lpad-body34.i, %.body33.i ], [ %i.als, %bb.qr ], [ %i.amb, %bb.qv ], [ %i.amk, %bb.qz ], [ %i.amk, %bb.qy ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cv)
          to label %.body667 unwind label %bb.ib

bb.pt:                                            ; preds = %bb.rb, %bb.qx, %bb.qt, %bb.pn, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i, %bb.pd
  %i.aki = landingpad { ptr, i32 }
          cleanup
  br label %.body682

bb.pu:                                            ; preds = %.noexc679, %.noexc680, %.noexc681
  %.pn881 = phi { i64, ptr } [ %i.akc, %.noexc681 ], [ %i.aju, %.noexc680 ], [ %i.ajn, %.noexc679 ]
  %.sroa.0.0.i673.ph = phi i64 [ %i.akd, %.noexc681 ], [ %i.ajv, %.noexc680 ], [ %i.ajo, %.noexc679 ]
  %.sroa.5.0.i.ph = extractvalue { i64, ptr } %.pn881, 1 ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  switch i64 %.sroa.0.0.i673.ph, label %.loopexit924 [
    i64 2, label %bb.qm
    i64 0, label %bb.pv
    i64 1, label %bb.pw
  ]

.thread877:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i, %bb.po
  store i64 0, ptr %i.pm, align 8, !alias.scope !1735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cv)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit687 unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit687: ; preds = %.thread877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.me

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.cu, align 8
  %i.akj = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages14found_name_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu, ptr noundef nonnull %1, ptr %.val8.i.i.i)
          to label %bb.qs unwind label %bb.qq

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1741
  invoke void @_RNvMs0_NtCs6oosyzwIepl_6ide_db4defsNtB5_9NameClass8classify(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.p, ptr noundef nonnull align 8 %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc692 unwind label %bb.qu

.noexc692:                                        ; preds = %bb.pw
  %i.akk = load i32, ptr %i.p, align 8, !range !1742, !noalias !1741, !noundef !4 ; 3 uses
  %.not.i688 = icmp eq i32 %i.akk, -1
  br i1 %.not.i688, label %bb.qw, label %bb.px

bb.px:                                            ; preds = %.noexc692
  %i.akl = add nsw i32 %i.akk, -3
  %i.akm = icmp samesign ugt i32 %i.akk, 2
  %narrow.i = select i1 %i.akm, i32 %i.akl, i32 2
  switch i32 %narrow.i, label %bb.py [
    i32 0, label %bb.pz
    i32 1, label %bb.qa
    i32 2, label %bb.qb
  ]

bb.py:                                            ; preds = %bb.px
  unreachable

bb.pz:                                            ; preds = %bb.px
  %i.akn = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.pw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed) #38
  br i1 %i.akn, label %bb.qw, label %bb.qc

bb.qa:                                            ; preds = %bb.px
  %i.ako = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.pw) #38
  br i1 %i.ako, label %bb.qj, label %bb.qw

bb.qb:                                            ; preds = %bb.px
  br i1 %i.pp, label %bb.qk, label %bb.qw

bb.qc:                                            ; preds = %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.pw, i64 40, i1 false), !noalias !1741
  br i1 %.not19.i, label %bb.qg, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  br i1 %i.qd, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1741
  %i.akp = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noundef nonnull %i.akp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc693 unwind label %bb.qu

.noexc693:                                        ; preds = %bb.qe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1741
  %i.akq = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ed, i64 40, i1 false), !noalias !1743
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noundef nonnull %i.akq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.h)
          to label %.noexc694 unwind label %bb.qu

.noexc694:                                        ; preds = %.noexc693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1741
  %i.akr = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1741
  br i1 %i.akr, label %bb.qi, label %bb.qg

bb.qf:                                            ; preds = %bb.qd
  br i1 %.not20.i, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %.noexc695, %bb.qf, %.noexc694, %bb.qc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1741
  br label %bb.qw

bb.qh:                                            ; preds = %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1741
  %i.aks = load ptr, ptr %i.eb, align 8, !nonnull !4, !align !12, !noundef !4
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noundef nonnull %i.aks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc695 unwind label %bb.qu

.noexc695:                                        ; preds = %bb.qh
  %i.akt = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1741
  br i1 %i.akt, label %bb.qi, label %bb.qg

bb.qi:                                            ; preds = %.noexc695, %.noexc694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1741
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.pa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc696 unwind label %bb.qu

.noexc696:                                        ; preds = %bb.qi
  %i.aku = load i32, ptr %i.f, align 4, !range !19, !noalias !1741, !noundef !4 ; 2 uses
  %i.akv = load i32, ptr %i.qe, align 4, !noalias !1741, !noundef !4 ; 2 uses
  %i.akw = load <2 x i32>, ptr %i.qf, align 4, !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1741
  %i.akx = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc697 unwind label %bb.qu

.noexc697:                                        ; preds = %.noexc696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1741
  store i32 %i.aku, ptr %i.e, align 8, !noalias !1741
  store i32 %i.akv, ptr %i.qg, align 4, !noalias !1741
  store i32 0, ptr %i.qh, align 8, !noalias !1741
  store ptr %i.akx, ptr %.sroa.012.sroa.5.0..sroa_idx.i, align 8, !noalias !1741
  store <2 x i32> %i.akw, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1741
  store i8 0, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !1741
  %i.aky = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.aku, i32 noundef %i.akv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qh) #38
          to label %.noexc698 unwind label %bb.qu, !inline_history !1477

.noexc698:                                        ; preds = %.noexc697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1741
  br label %bb.qw

bb.qj:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1741
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull align 8 %i.pa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc699 unwind label %bb.qu

.noexc699:                                        ; preds = %bb.qj
  %i.akz = load i32, ptr %i.m, align 4, !range !19, !noalias !1741, !noundef !4 ; 2 uses
  %i.ala = load i32, ptr %i.px, align 4, !noalias !1741, !noundef !4 ; 2 uses
  %i.alb = load <2 x i32>, ptr %i.py, align 4, !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1741
  %i.alc = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc700 unwind label %bb.qu

.noexc700:                                        ; preds = %.noexc699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1741
  store i32 %i.akz, ptr %i.l, align 8, !noalias !1741
  store i32 %i.ala, ptr %i.pz, align 4, !noalias !1741
  store i32 0, ptr %i.qa, align 8, !noalias !1741
  store ptr %i.alc, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !noalias !1741
  store <2 x i32> %i.alb, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1741
  store i8 0, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1741
  %i.ald = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.akz, i32 noundef %i.ala, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qa) #38
          to label %.noexc701 unwind label %bb.qu, !inline_history !1477

.noexc701:                                        ; preds = %.noexc700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1741
  br label %bb.qw

bb.qk:                                            ; preds = %bb.qb
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pr, ptr noundef nonnull align 8 dereferenceable(16) %i.pq, i64 16, i1 false), !noalias !1741
  store i8 1, ptr %3, align 8, !noalias !1741
  %4 = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1741
  br i1 %4, label %bb.ql, label %bb.qw

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1741
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.o, ptr noundef nonnull align 8 %i.pa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc702 unwind label %bb.qu

.noexc702:                                        ; preds = %bb.ql
  %i.ale = load i32, ptr %i.o, align 4, !range !19, !noalias !1741, !noundef !4 ; 2 uses
  %i.alf = load i32, ptr %i.ps, align 4, !noalias !1741, !noundef !4 ; 2 uses
  %i.alg = load <2 x i32>, ptr %i.pt, align 4, !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1741
  %i.alh = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc703 unwind label %bb.qu

.noexc703:                                        ; preds = %.noexc702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1741
  store i32 %i.ale, ptr %i.n, align 8, !noalias !1741
  store i32 %i.alf, ptr %i.pu, align 4, !noalias !1741
  store i32 0, ptr %i.pv, align 8, !noalias !1741
  store ptr %i.alh, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !noalias !1741
  store <2 x i32> %i.alg, ptr %.sroa.4.0..sroa_idx.i689, align 8, !noalias !1741
  store i8 2, ptr %.sroa.6.0..sroa_idx.i691, align 8, !noalias !1741
  %i.ali = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.ale, i32 noundef %i.alf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.pv) #38
          to label %.noexc704 unwind label %bb.qu, !inline_history !1477

.noexc704:                                        ; preds = %.noexc703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1741
  br label %bb.qw

bb.qm:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1744
  invoke void @_RNvMs2_NtCs6oosyzwIepl_6ide_db4defsNtB5_12NameRefClass17classify_lifetime(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noundef nonnull align 8 %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs)
          to label %.noexc711 unwind label %bb.qy

.noexc711:                                        ; preds = %bb.qm
  %i.alj = load i32, ptr %i.d, align 8, !range !26, !noalias !1744, !noundef !4 ; 3 uses
  %.not.i705 = icmp eq i32 %i.alj, -1
  br i1 %.not.i705, label %bb.ra, label %bb.qn

bb.qn:                                            ; preds = %.noexc711
  %i.alk = icmp ne i32 %i.alj, 4
  call void @llvm.assume(i1 %i.alk)
  %i.all = icmp eq i32 %i.alj, 3
  br i1 %i.all, label %bb.qo, label %bb.ra

bb.qo:                                            ; preds = %bb.qn
  %i.alm = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.qi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed) #38
  br i1 %i.alm, label %bb.qp, label %bb.ra

bb.qp:                                            ; preds = %bb.qo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1744
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %i.pa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs)
          to label %.noexc712 unwind label %bb.qy

.noexc712:                                        ; preds = %bb.qp
  %i.aln = load i32, ptr %i.c, align 4, !range !19, !noalias !1744, !noundef !4 ; 2 uses
  %i.alo = load i32, ptr %i.qj, align 4, !noalias !1744, !noundef !4 ; 2 uses
  %i.alp = load <2 x i32>, ptr %i.qk, align 4, !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1744
  %i.alq = invoke noundef nonnull ptr @_RNvXscl_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8LifetimeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs)
          to label %.noexc713 unwind label %bb.qy

.noexc713:                                        ; preds = %.noexc712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1744
  store i32 %i.aln, ptr %i.b, align 8, !noalias !1744
  store i32 %i.alo, ptr %i.ql, align 4, !noalias !1744
  store i32 2, ptr %i.qm, align 8, !noalias !1744
  store ptr %i.alq, ptr %.sroa.01.sroa.5.0..sroa_idx.i707, align 8, !noalias !1744
  store <2 x i32> %i.alp, ptr %.sroa.4.0..sroa_idx.i708, align 8, !noalias !1744
  store i8 0, ptr %.sroa.6.0..sroa_idx.i710, align 8, !noalias !1744
  %i.alr = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.aln, i32 noundef %i.alo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qm) #38
          to label %.noexc714 unwind label %bb.qy, !inline_history !1481

.noexc714:                                        ; preds = %.noexc713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1744
  br label %bb.ra

bb.qq:                                            ; preds = %bb.pv
  %i.als = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 4, !noundef !4
  %i.alv = add i32 %i.alu, -1                     ; 2 uses
  store i32 %i.alv, ptr %i.alt, align 4
  %i.alw = icmp eq i32 %i.alv, 0
  br i1 %i.alw, label %bb.qr, label %.body682

bb.qr:                                            ; preds = %bb.qq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.qs:                                            ; preds = %bb.pv
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.aly = load i32, ptr %i.alx, align 4, !noundef !4
  %i.alz = add i32 %i.aly, -1                     ; 2 uses
  store i32 %i.alz, ptr %i.alx, align 4
  %i.ama = icmp eq i32 %i.alz, 0
  br i1 %i.ama, label %bb.qt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718

bb.qt:                                            ; preds = %bb.qs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718 unwind label %bb.pt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718: ; preds = %bb.qs, %bb.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br i1 %i.akj, label %bb.rc, label %.backedge.backedge

.noexc720:                                        ; preds = %bb.qx, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br i1 %.sroa.0.2.i, label %bb.rc, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.noexc720, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718, %.split
  br label %.backedge

bb.qu:                                            ; preds = %.noexc703, %.noexc702, %bb.ql, %.noexc700, %.noexc699, %bb.qj, %.noexc697, %.noexc696, %bb.qi, %bb.qh, %.noexc693, %bb.qe, %bb.pw
  %i.amb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 4, !noundef !4
  %i.ame = add i32 %i.amd, -1                     ; 2 uses
  store i32 %i.ame, ptr %i.amc, align 4
  %i.amf = icmp eq i32 %i.ame, 0
  br i1 %i.amf, label %bb.qv, label %.body682

bb.qv:                                            ; preds = %bb.qu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.qw:                                            ; preds = %.noexc704, %bb.qk, %.noexc701, %.noexc698, %bb.qg, %bb.qb, %bb.qa, %bb.pz, %.noexc692
  %.sroa.0.2.i = phi i1 [ false, %bb.qg ], [ %i.aky, %.noexc698 ], [ %i.ali, %.noexc704 ], [ %i.ald, %.noexc701 ], [ false, %bb.qb ], [ false, %.noexc692 ], [ false, %bb.qa ], [ false, %bb.pz ], [ false, %bb.qk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1741
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !noundef !4
  %i.ami = add i32 %i.amh, -1                     ; 2 uses
  store i32 %i.ami, ptr %i.amg, align 4
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %bb.qx, label %.noexc720

bb.qx:                                            ; preds = %bb.qw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.noexc720 unwind label %bb.pt

bb.qy:                                            ; preds = %.noexc713, %.noexc712, %bb.qp, %bb.qm
  %i.amk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amm = load i32, ptr %i.aml, align 4, !noundef !4
  %i.amn = add i32 %i.amm, -1                     ; 2 uses
  store i32 %i.amn, ptr %i.aml, align 4
  %i.amo = icmp eq i32 %i.amn, 0
  br i1 %i.amo, label %bb.qz, label %.body682

bb.qz:                                            ; preds = %bb.qy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.ra:                                            ; preds = %.noexc714, %bb.qo, %bb.qn, %.noexc711
  %.sroa.0.0.i706 = phi i1 [ %i.alr, %.noexc714 ], [ false, %bb.qo ], [ false, %bb.qn ], [ false, %.noexc711 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1744
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !noundef !4
  %i.amr = add i32 %i.amq, -1                     ; 2 uses
  store i32 %i.amr, ptr %i.amp, align 4
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %bb.rb, label %.split

bb.rb:                                            ; preds = %bb.ra
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.split unwind label %bb.pt

.split:                                           ; preds = %bb.ra, %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br i1 %.sroa.0.0.i706, label %bb.rc, label %.backedge.backedge

bb.rc:                                            ; preds = %.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718, %.noexc720
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cv)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit726 unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit726: ; preds = %bb.rc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %.loopexit946

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCslLTI5cSnp8O_6memchr6memmem8FindIterNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2a_10FindUsages13match_indices0EEB2c_.exit671: ; preds = %bb.oz, %bb.oy, %.loopexit946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.nu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit651: ; preds = %bb.nv, %bb.nu, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6oosyzwIepl_6ide_db.exit728 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6oosyzwIepl_6ide_db.exit728: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.iy

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit465: ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy
end_hunk_2
