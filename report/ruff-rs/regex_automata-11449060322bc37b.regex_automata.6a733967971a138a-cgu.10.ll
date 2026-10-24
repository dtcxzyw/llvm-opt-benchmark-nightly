Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.10?download=true
inline.NumInlined: 441
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses8write_to:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.e, align 1
  %wide.load24.1 = load <16 x i8>, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %2, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1
  store <16 x i8> %wide.load24.1, ptr %i.g, align 1
  %next.gep.2 = getelementptr i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.h, align 1
  %wide.load24.2 = load <16 x i8>, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %2, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1
  store <16 x i8> %wide.load24.2, ptr %i.j, align 1
  %next.gep.3 = getelementptr i8, ptr %2, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.k, align 1
  %wide.load24.3 = load <16 x i8>, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %2, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1
  store <16 x i8> %wide.load24.3, ptr %i.m, align 1
  %next.gep.4 = getelementptr i8, ptr %2, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.n, align 1
  %wide.load24.4 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %2, i64 144
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1
  store <16 x i8> %wide.load24.4, ptr %i.p, align 1
  %next.gep.5 = getelementptr i8, ptr %2, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.q, align 1
  %wide.load24.5 = load <16 x i8>, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %2, i64 176
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1
  store <16 x i8> %wide.load24.5, ptr %i.s, align 1
  %next.gep.6 = getelementptr i8, ptr %2, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.t, align 1
  %wide.load24.6 = load <16 x i8>, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %2, i64 208
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1
  store <16 x i8> %wide.load24.6, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  store i8 %i.x, ptr %i.b, align 1
  %i.y = getelementptr i8, ptr %2, i64 225
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.aa = load i8, ptr %i.z, align 1, !noundef !5
  store i8 %i.aa, ptr %i.y, align 1
  %i.ab = getelementptr i8, ptr %2, i64 226
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !5
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = getelementptr i8, ptr %2, i64 227
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 227
  %i.ag = load i8, ptr %i.af, align 1, !noundef !5
  store i8 %i.ag, ptr %i.ae, align 1
  %i.ah = getelementptr i8, ptr %2, i64 228
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  store i8 %i.aj, ptr %i.ah, align 1
  %i.ak = getelementptr i8, ptr %2, i64 229
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 229
  %i.am = load i8, ptr %i.al, align 1, !noundef !5
  store i8 %i.am, ptr %i.ak, align 1
  %i.an = getelementptr i8, ptr %2, i64 230
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 230
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr i8, ptr %2, i64 231
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 231
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  store i8 %i.as, ptr %i.aq, align 1
  %i.at = getelementptr i8, ptr %2, i64 232
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.av = load i8, ptr %i.au, align 1, !noundef !5
  store i8 %i.av, ptr %i.at, align 1
  %i.aw = getelementptr i8, ptr %2, i64 233
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !5
  store i8 %i.ay, ptr %i.aw, align 1
  %i.az = getelementptr i8, ptr %2, i64 234
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 234
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !5
  store i8 %i.bb, ptr %i.az, align 1
  %i.bc = getelementptr i8, ptr %2, i64 235
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 235
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5
  store i8 %i.be, ptr %i.bc, align 1
  %i.bf = getelementptr i8, ptr %2, i64 236
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !5
  store i8 %i.bh, ptr %i.bf, align 1
  %i.bi = getelementptr i8, ptr %2, i64 237
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 237
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  store i8 %i.bk, ptr %i.bi, align 1
  %i.bl = getelementptr i8, ptr %2, i64 238
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 238
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  store i8 %i.bn, ptr %i.bl, align 1
  %i.bo = getelementptr i8, ptr %2, i64 239
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 239
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  store i8 %i.bq, ptr %i.bo, align 1
  %i.br = getelementptr i8, ptr %2, i64 240
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  store i8 %i.bt, ptr %i.br, align 1
  %i.bu = getelementptr i8, ptr %2, i64 241
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 241
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !5
  store i8 %i.bw, ptr %i.bu, align 1
  %i.bx = getelementptr i8, ptr %2, i64 242
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.bz = load i8, ptr %i.by, align 1, !noundef !5
  store i8 %i.bz, ptr %i.bx, align 1
  %i.ca = getelementptr i8, ptr %2, i64 243
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 243
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !5
  store i8 %i.cc, ptr %i.ca, align 1
  %i.cd = getelementptr i8, ptr %2, i64 244
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !5
  store i8 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr i8, ptr %2, i64 245
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 245
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !5
  store i8 %i.ci, ptr %i.cg, align 1
  %i.cj = getelementptr i8, ptr %2, i64 246
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 246
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !5
  store i8 %i.cl, ptr %i.cj, align 1
  %i.cm = getelementptr i8, ptr %2, i64 247
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 247
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  store i8 %i.co, ptr %i.cm, align 1
  %i.cp = getelementptr i8, ptr %2, i64 248
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !5
  store i8 %i.cr, ptr %i.cp, align 1
  %i.cs = getelementptr i8, ptr %2, i64 249
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 249
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !5
  store i8 %i.cu, ptr %i.cs, align 1
  %i.cv = getelementptr i8, ptr %2, i64 250
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 250
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !5
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cy = getelementptr i8, ptr %2, i64 251
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 251
  %i.da = load i8, ptr %i.cz, align 1, !noundef !5
  store i8 %i.da, ptr %i.cy, align 1
  %i.db = getelementptr i8, ptr %2, i64 252
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.dd = load i8, ptr %i.dc, align 1, !noundef !5
  store i8 %i.dd, ptr %i.db, align 1
  %i.de = getelementptr i8, ptr %2, i64 253
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 253
  %i.dg = load i8, ptr %i.df, align 1, !noundef !5
  store i8 %i.dg, ptr %i.de, align 1
  %i.dh = getelementptr i8, ptr %2, i64 254
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 254
  %i.dj = load i8, ptr %i.di, align 1, !noundef !5
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr i8, ptr %2, i64 255
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 255
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !5
  store i8 %i.dm, ptr %i.dk, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 256, ptr %i.dn, align 8
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @39, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.do, align 8
  br label %bb.c

bb.c:                                             ; preds = %vector.ph, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(352) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = load i64, ptr %0, align 8, !range !17, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa14SearchProgressE6map_orjNCNvMs1_BL_NtBL_5Cache16search_total_len0EBP_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !428, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !428, !noundef !5 ; 3 uses
  %.not.i.i = icmp ugt i64 %.val.i, %.val5.i
  %1 = sub nuw i64 %.val5.i, %.val.i
  %i.g = sub nuw i64 %.val.i, %.val5.i
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 %i.g, i64 %1
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa14SearchProgressE6map_orjNCNvMs1_BL_NtBL_5Cache16search_total_len0EBP_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa14SearchProgressE6map_orjNCNvMs1_BL_NtBL_5Cache16search_total_len0EBP_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ]
  %i.h = add i64 %.sroa.02.0.i, %i.b
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 8 captures(none) dereferenceable(352) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [352 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @42)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.v, %bb.d ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.j unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = extractvalue { i64, i64 } %i.n, 0
  %i.q = extractvalue { i64, i64 } %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.p, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.s = load ptr, ptr %i.r, align 16, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  %i.u = load i64, ptr %i.t, align 16, !noundef !5
  invoke void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB2_10SparseSets3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.b, i64 noundef %i.u)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i64 0, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store i64 0, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.ae, align 8
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy10init_cache(ptr noalias noundef align 8 dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheEBH_(ptr noalias noundef align 8 dereferenceable(352) %i.g) #27
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %i.g, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.h:                                             ; preds = %bb.d, %bb.k, %bb.j, %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.k, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #27
          to label %bb.i unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache5reset(ptr noalias noundef align 8 dereferenceable(352) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  call fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11reset_cache(ptr noalias noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy10init_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 13 uses
  %i.s = alloca [16 x i8], align 8                ; 13 uses
  %i.t = alloca [16 x i8], align 8                ; 13 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [4 x i8], align 4                 ; 4 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [4 x i8], align 4                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 36 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 129
  %i.ad = load i8, ptr %i.ac, align 1, !range !9, !noundef !5
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.au, %bb.c ], [ 12, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !align !13, !noundef !5 ; 52 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB20_7sources6repeat6RepeatBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %.sroa.0.0, i32 noundef -2147483648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ai = tail call { ptr, i64 } @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_5State4dead() ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 14 uses
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1      ; 6 uses
  store ptr %i.aj, ptr %i.aa, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.ak, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.ap, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 688
  %i.ap = load ptr, ptr %i.ao, align 16, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 360
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 2305843009213693952
  tail call void @llvm.assume(i1 %i.as)
  %i.at = mul nuw i64 %i.ar, 6
  %i.au = add nuw i64 %i.at, 12
  br label %bb.b

.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %.invoke576, %bb.s, %bb.f, %bb.w, %bb.u
  %lpad.loopexit.split-lp660 = landingpad { ptr, i32 }
          cleanup
  br label %.body130.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.aj, ptr %i.t, align 8, !noalias !611
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store i64 %i.ak, ptr %i.av, align 8, !noalias !611
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 11 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !612, !noalias !611, !noundef !5 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ay), !noalias !611
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !612, !noalias !611, !noundef !5 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bb), !noalias !611
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 12 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !612, !noalias !611, !noundef !5 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 576460752303423488
  tail call void @llvm.assume(i1 %i.be), !noalias !611
  %i.bf = shl nuw nsw i64 %i.bd, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 304 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !612, !noalias !611, !noundef !5
  %i.bi = mul i64 %i.bh, 20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 112 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !612, !noalias !611, !noundef !5 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bl), !noalias !611
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !612, !noalias !611, !noundef !5 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bo), !noalias !611
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 168 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !612, !noalias !611, !noundef !5 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 2305843009213693952
  tail call void @llvm.assume(i1 %i.br), !noalias !611
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 192 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !612, !noalias !611, !noundef !5 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bu), !noalias !611
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 208 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !range !7, !alias.scope !612, !noalias !611, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 232 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !7, !alias.scope !612, !noalias !611, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ag, i64 328 ; 9 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !612, !noalias !611, !noundef !5
  %i.cb = add nuw nsw i64 %i.ba, %i.ax
  %i.cc = add nuw nsw i64 %i.cb, %i.bk
  %i.cd = add nuw nsw i64 %i.cc, %i.bn
  %i.ce = add nuw i64 %i.cd, %i.bq
  %i.cf = add nuw i64 %i.ce, %i.bt
  %reass.add.i.i = add i64 %i.cf, %i.bw
  %reass.mul.i.i = shl i64 %reass.add.i.i, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 696 ; 10 uses
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !611, !noundef !5
  %i.ci = and i64 %i.ch, 63
  %i.cj = shl i64 4, %i.ci
  %i.ck = add i64 %i.ak, 36                       ; 3 uses
  %i.cl = add i64 %i.bf, %i.ck
  %i.cm = add i64 %i.cl, %i.bi
  %i.cn = add i64 %i.cm, %i.by
  %i.co = add i64 %i.cn, %i.ca
  %i.cp = add i64 %i.co, %reass.mul.i.i
  %i.cq = add i64 %i.cp, %i.cj
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 704 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 16, !noalias !611, !noundef !5
  %.not = icmp ugt i64 %i.cq, %i.cs
  br i1 %.not, label %bb.e, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit

bb.e:                                             ; preds = %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.cu = load i64, ptr %i.ct, align 16, !range !10, !noalias !613, !noundef !5
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.g, %bb.e
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge unwind label %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !435

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge: ; preds = %bb.f
  %.pre510 = load i64, ptr %i.aw, align 8, !noalias !614
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit

bb.g:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !613
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !613, !noundef !5
  %.not14.i = icmp ult i64 %i.cz, %i.cx
  br i1 %.not14.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.db = load i64, ptr %i.da, align 16, !range !10, !noalias !613, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !613
  %i.de = icmp eq i64 %i.db, 1
  br i1 %i.de, label %bb.i, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 344
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !615, !noalias !613, !noundef !5
  %i.dh = load i64, ptr %i.ag, align 8, !range !17, !alias.scope !615, !noalias !613, !noundef !5
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %bb.j, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i.i = load i64, ptr %i.dj, align 8, !alias.scope !616, !noalias !613, !noundef !5 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val5.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !616, !noalias !613, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %.val.i.i.i, %.val5.i.i.i
  %1 = sub nuw i64 %.val5.i.i.i, %.val.i.i.i
  %i.dl = sub nuw i64 %.val.i.i.i, %.val5.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.dl, i64 %1
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.j ], [ 0, %bb.i ]
  %i.dm = add i64 %.sroa.02.0.i.i.i, %i.dg
  %i.dn = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dd, i64 %i.bd) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 0
  %i.dp = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.dp, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
  %.sroa.013.0.i = phi i64 [ -1, %bb.k ], [ %i.do, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i ]
  %i.dq = icmp ult i64 %i.dm, %.sroa.013.0.i
  br i1 %i.dq, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, label %bb.f

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge, %bb.d
  %i.dr = phi i64 [ %.pre510, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp samesign ugt i64 %i.dr, 134217727
  br i1 %i.dt, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i: ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.dv = load i64, ptr %i.du, align 16, !range !10, !noalias !617, !noundef !5
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.m, label %bb.s

bb.m:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !617
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !617, !noundef !5
  %.not14.i.i = icmp ult i64 %i.ea, %i.dy
  br i1 %.not14.i.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ec = load i64, ptr %i.eb, align 16, !range !10, !noalias !617, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !617
  %i.ef = icmp eq i64 %i.ec, 1
  br i1 %i.ef, label %bb.o, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge

bb.o:                                             ; preds = %bb.n
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ag, i64 344
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !618, !noalias !617, !noundef !5
  %i.ei = load i64, ptr %i.ag, align 8, !range !17, !alias.scope !618, !noalias !617, !noundef !5
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %bb.p, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i399

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i.i401 = load i64, ptr %i.ek, align 8, !alias.scope !619, !noalias !617, !noundef !5 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val5.i.i.i402 = load i64, ptr %i.el, align 8, !alias.scope !619, !noalias !617, !noundef !5 ; 3 uses
  %.not.i.i.i.i403 = icmp ugt i64 %.val.i.i.i401, %.val5.i.i.i402
  %2 = sub nuw i64 %.val5.i.i.i402, %.val.i.i.i401
  %i.em = sub nuw i64 %.val.i.i.i401, %.val5.i.i.i402
  %.sroa.0.0.i.i.i.i404 = select i1 %.not.i.i.i.i403, i64 %i.em, i64 %2
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i399

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i399: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i400 = phi i64 [ %.sroa.0.0.i.i.i.i404, %bb.p ], [ 0, %bb.o ]
  %i.en = add i64 %.sroa.02.0.i.i.i400, %i.eh
  %i.eo = load i64, ptr %i.bc, align 8, !noalias !617, !noundef !5 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 576460752303423488
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ee, i64 %i.eo) ; 2 uses
  %i.er = extractvalue { i64, i1 } %i.eq, 0
  %i.es = extractvalue { i64, i1 } %i.eq, 1
  br i1 %i.es, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i399
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i399
  %.sroa.013.0.i.i = phi i64 [ -1, %bb.q ], [ %i.er, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i399 ]
  %i.et = icmp ult i64 %i.en, %.sroa.013.0.i.i
  br i1 %i.et, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !448

.noexc:                                           ; preds = %bb.s
  %i.eu = load i64, ptr %i.aw, align 8, !noalias !614, !noundef !5 ; 4 uses
  %i.ev = icmp ult i64 %i.eu, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp samesign ugt i64 %i.eu, 134217727
  br i1 %i.ew, label %bb.t, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i

bb.t:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !620
  store i64 %i.eu, ptr %i.f, align 8, !noalias !620
  br label %.invoke576

.invoke576:                                       ; preds = %bb.aa, %bb.z, %bb.t
  %i.ex = phi ptr [ %i.f, %bb.t ], [ %i.m, %bb.aa ], [ %i.n, %bb.z ]
  %i.ey = phi ptr [ @59, %bb.t ], [ @74, %bb.aa ], [ @73, %bb.z ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey) #26
          to label %.cont577 unwind label %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !448

.cont577:                                         ; preds = %.invoke576
  unreachable

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge: ; preds = %bb.r, %bb.n
  %.pre345 = load ptr, ptr %i.t, align 8, !alias.scope !621
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i: ; preds = %.noexc, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
  %.sroa.3.0.i.in = phi i64 [ %i.dr, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit ], [ %i.eu, %.noexc ]
  %i.ez = load i64, ptr %i.av, align 8, !noalias !611, !noundef !5
  %.not.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.v unwind label %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !458

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  %.sroa.3.0.i = trunc nuw nsw i64 %.sroa.3.0.i.in to i32
  %i.fa = load ptr, ptr %i.t, align 8, !noalias !611, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i8, ptr %i.fb, align 8, !noundef !5
  %i.fd = and i8 %i.fc, 1
  %.not24.i = icmp eq i8 %i.fd, 0
  %spec.select.i.v = select i1 %.not24.i, i32 -2147483648, i32 -2013265920
  %spec.select.i = or disjoint i32 %spec.select.i.v, %.sroa.3.0.i ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.ff = load i64, ptr %i.cg, align 8, !noundef !5
  %i.fg = and i64 %i.ff, 63
  %i.fh = shl nuw i64 1, %i.fg
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB20_7sources6repeat6RepeatBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef %i.fh, i32 noundef -2147483648)
          to label %bb.x unwind label %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !458

bb.x:                                             ; preds = %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ab, i64 656 ; 9 uses
  %i.fj = load i128, ptr %i.fi, align 1
  %i.fk = getelementptr i8, ptr %i.fi, i64 16
  %i.fl = load i128, ptr %i.fk, align 1
  %i.fm = or i128 %i.fj, %i.fl
  %i.fn = icmp ne i128 %i.fm, 0
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = icmp eq i32 %spec.select.i, -2147483648 ; 2 uses
  %or.cond = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = load i64, ptr %i.cg, align 8, !noalias !622, !noundef !5
  %i.fs = and i64 %i.fr, 63                       ; 4 uses
  %i.ft = icmp samesign ugt i64 %i.fs, 26
  br i1 %i.ft, label %bb.z, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i

bb.z:                                             ; preds = %bb.y
  %i.fu = shl nuw i64 1, %i.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !623
  store i64 %i.fu, ptr %i.n, align 8, !noalias !623
  br label %.invoke576

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i: ; preds = %bb.y
  %i.fv = icmp eq i64 %i.fs, 26
  br i1 %i.fv, label %bb.aa, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit

bb.aa:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !624
  store i64 134217728, ptr %i.m, align 8, !noalias !624
  br label %.invoke576

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread: ; preds = %bb.ad, %bb.ab, %bb.ac, %bb.x
  %i.fw = load i64, ptr %i.av, align 8, !noalias !611, !noundef !5
  %i.fx = load i64, ptr %i.bz, align 8, !noundef !5
  %i.fy = add i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.bz, align 8
  %i.fz = load ptr, ptr %i.t, align 8, !noalias !611, !nonnull !5, !noundef !5
  %i.ga = atomicrmw add ptr %i.fz, i64 1 monotonic, align 8
  %i.gb = icmp slt i64 %i.ga, 0
  br i1 %i.gb, label %bb.ak, label %bb.af

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i
  %i.gc = shl nuw nsw i64 2, %i.fs
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = or disjoint i32 %i.gd, 536870912
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit
  %.sroa.4224.0 = phi i64 [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit ], [ %i.gg, %bb.ae ] ; 2 uses
  %exitcond.not.i611 = icmp eq i64 %.sroa.4224.0, 256
  br i1 %exitcond.not.i611, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.gg, 256
  br i1 %exitcond.not.i, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %.sroa.4224.1612 = phi i64 [ %i.gg, %bb.ac ], [ %.sroa.4224.0, %bb.ab ] ; 5 uses
  %i.gf = trunc nuw i64 %.sroa.4224.1612 to i8
  %i.gg = add nuw nsw i64 %.sroa.4224.1612, 1     ; 3 uses
  %.lobit.i = lshr i64 %.sroa.4224.1612, 7
  %i.gh = and i8 %i.gf, 127
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.lobit.i
  %i.gj = load i128, ptr %i.gi, align 16, !noalias !625, !noundef !5
  %i.gk = zext nneg i8 %i.gh to i128
  %i.gl = shl nuw i128 1, %i.gk
  %i.gm = and i128 %i.gj, %i.gl
  %.not.i132 = icmp eq i128 %i.gm, 0
  br i1 %.not.i132, label %bb.ac, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.gn = icmp ult i64 %.sroa.4224.1612, 256
  br i1 %i.gn, label %bb.ae, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.go = trunc nuw nsw i64 %.sroa.4224.1612 to i32
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %i.go, 8
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy14set_transition(ptr nonnull %i.ab, ptr nonnull %i.ag, i32 noundef %spec.select.i, i32 %.sroa.417.0.insert.shift.i, i32 noundef %i.ge)
          to label %bb.ab unwind label %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !458

bb.af:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 6 uses
  %i.gq = load ptr, ptr %i.t, align 8, !noalias !611, !nonnull !5, !noundef !5 ; 3 uses
  %i.gr = load i64, ptr %i.av, align 8, !noalias !611, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.gq, ptr %i.o, align 8, !noalias !626
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.gr, ptr %i.gs, align 8, !noalias !626
  %i.gt = load i64, ptr %i.bc, align 8, !alias.scope !626, !noundef !5 ; 3 uses
  %i.gu = load i64, ptr %i.gp, align 8, !range !7, !alias.scope !626, !noundef !5
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp)
          to label %bb.al unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = atomicrmw add ptr %i.gq, i64 -1 release, align 8, !noalias !627
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.ai, label %.body130.thread

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.body130.thread unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ak:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread
  tail call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.ag, %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 3 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !626, !nonnull !5, !noundef !5
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.gt ; 2 uses
  store ptr %i.gq, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %i.gr, ptr %i.hd, align 8
  %i.he = add i64 %i.gt, 1
  store i64 %i.he, ptr %i.bc, align 8, !alias.scope !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.hf = load ptr, ptr %i.t, align 8, !noalias !611, !nonnull !5, !noundef !5
  %i.hg = load i64, ptr %i.av, align 8, !noalias !611, !noundef !5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ag, i64 280 ; 4 uses
  %i.hi = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBV_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertBV_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hh, ptr noundef nonnull %i.hf, i64 noundef %i.hg, i32 noundef %spec.select.i)
          to label %bb.ar unwind label %.body180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !458 ; 0 uses

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge, %bb.l, %bb.h
  %i.hj = phi ptr [ %.pre345, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge ], [ %i.aj, %bb.l ], [ %i.aj, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.hk = atomicrmw add ptr %i.hj, i64 -1 release, align 8, !noalias !621
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.aq unwind label %.body180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body130.thread:                                  ; preds = %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai, %bb.ah
  %eh.lpad-body131248 = phi { ptr, i32 } [ %i.gw, %bb.ai ], [ %i.gw, %bb.ah ], [ %lpad.loopexit.split-lp660, %.body130.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.hm = load ptr, ptr %i.t, align 8, !alias.scope !634, !nonnull !5, !noundef !5
  %i.hn = atomicrmw add ptr %i.hm, i64 -1 release, align 8, !noalias !634
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.an, label %.body.thread

bb.an:                                            ; preds = %.body130.thread
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.body.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !inline_history !458
  unreachable

bb.ap:                                            ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.invoke395.a

.invoke395.a:                                     ; preds = %bb.ea, %bb.dx, %bb.du, %bb.cg, %bb.aq
  %i.hq = phi ptr [ %i.a, %bb.aq ], [ %i.a, %bb.cg ], [ %i.a, %bb.du ], [ %i.q, %bb.dx ], [ %i.p, %bb.ea ]
  %i.hr = phi ptr [ @19, %bb.aq ], [ @19, %bb.cg ], [ @19, %bb.du ], [ @17, %bb.dx ], [ @17, %bb.ea ]
  %i.hs = phi ptr [ @48, %bb.aq ], [ @49, %bb.cg ], [ @50, %bb.du ], [ @73, %bb.dx ], [ @74, %bb.ea ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.hq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs) #26
          to label %.cont396.a unwind label %.body180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont396.a:                                       ; preds = %.invoke395.a
  unreachable

bb.ar:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i32 %spec.select.i, ptr %i.z, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ht = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.hu = icmp slt i64 %i.ht, 0
  br i1 %i.hu, label %bb.cf, label %bb.as

.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bu, %.invoke, %bb.bh, %bb.au, %bb.bl, %bb.bj
  %lpad.loopexit.split-lp653 = landingpad { ptr, i32 }
          cleanup
  br label %.body144.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.aj, ptr %i.s, align 8, !noalias !635
  %i.hv = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  store i64 %i.ak, ptr %i.hv, align 8, !noalias !635
  %i.hw = load i64, ptr %i.aw, align 8, !alias.scope !636, !noalias !635, !noundef !5 ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hx), !noalias !635
  %i.hy = load i64, ptr %i.az, align 8, !alias.scope !636, !noalias !635, !noundef !5 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hz), !noalias !635
  %i.ia = load i64, ptr %i.bc, align 8, !alias.scope !636, !noalias !635, !noundef !5 ; 3 uses
  %i.ib = icmp ult i64 %i.ia, 576460752303423488
  tail call void @llvm.assume(i1 %i.ib), !noalias !635
  %i.ic = shl nuw nsw i64 %i.ia, 4
  %i.id = load i64, ptr %i.bg, align 8, !alias.scope !636, !noalias !635, !noundef !5
  %i.ie = mul i64 %i.id, 20
  %i.if = load i64, ptr %i.bj, align 8, !alias.scope !636, !noalias !635, !noundef !5 ; 2 uses
  %i.ig = icmp ult i64 %i.if, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ig), !noalias !635
  %i.ih = load i64, ptr %i.bm, align 8, !alias.scope !636, !noalias !635, !noundef !5 ; 2 uses
  %i.ii = icmp ult i64 %i.ih, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ii), !noalias !635
  %i.ij = load i64, ptr %i.bp, align 8, !alias.scope !636, !noalias !635, !noundef !5 ; 2 uses
  %i.ik = icmp ult i64 %i.ij, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ik), !noalias !635
  %i.il = load i64, ptr %i.bs, align 8, !alias.scope !636, !noalias !635, !noundef !5 ; 2 uses
  %i.im = icmp ult i64 %i.il, 2305843009213693952
  tail call void @llvm.assume(i1 %i.im), !noalias !635
  %i.in = load i64, ptr %i.bv, align 8, !range !7, !alias.scope !636, !noalias !635, !noundef !5
  %i.io = load i64, ptr %i.bx, align 8, !range !7, !alias.scope !636, !noalias !635, !noundef !5
  %i.ip = load i64, ptr %i.bz, align 8, !alias.scope !636, !noalias !635, !noundef !5
  %i.iq = add nuw nsw i64 %i.hy, %i.hw
  %i.ir = add nuw nsw i64 %i.iq, %i.if
  %i.is = add nuw nsw i64 %i.ir, %i.ih
  %i.it = add nuw i64 %i.is, %i.ij
  %i.iu = add nuw i64 %i.it, %i.il
  %reass.add.i.i173 = add i64 %i.iu, %i.in
  %reass.mul.i.i174 = shl i64 %reass.add.i.i173, 2
  %i.iv = load i64, ptr %i.cg, align 8, !noalias !635, !noundef !5
  %i.iw = and i64 %i.iv, 63
  %i.ix = shl i64 4, %i.iw
  %i.iy = add i64 %i.ic, %i.ck
  %i.iz = add i64 %i.iy, %i.ie
  %i.ja = add i64 %i.iz, %i.io
  %i.jb = add i64 %i.ja, %i.ip
  %i.jc = add i64 %i.jb, %reass.mul.i.i174
  %i.jd = add i64 %i.jc, %i.ix
  %i.je = load i64, ptr %i.cr, align 16, !noalias !635, !noundef !5
  %.not296 = icmp ugt i64 %i.jd, %i.je
  br i1 %.not296, label %bb.at, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172

bb.at:                                            ; preds = %bb.as
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.jg = load i64, ptr %i.jf, align 16, !range !10, !noalias !637, !noundef !5
  %i.jh = icmp eq i64 %i.jg, 1
  br i1 %i.jh, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.ba, %bb.av, %bb.at
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172_crit_edge unwind label %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !489

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172_crit_edge: ; preds = %bb.au
  %.pre511 = load i64, ptr %i.aw, align 8, !noalias !638
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172

bb.av:                                            ; preds = %bb.at
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !637
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !637, !noundef !5
  %.not14.i163 = icmp ult i64 %i.jl, %i.jj
  br i1 %.not14.i163, label %bb.au, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.jn = load i64, ptr %i.jm, align 16, !range !10, !noalias !637, !noundef !5
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !637
  %i.jq = icmp eq i64 %i.jn, 1
  br i1 %i.jq, label %bb.ax, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread

bb.ax:                                            ; preds = %bb.aw
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ag, i64 344
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !639, !noalias !637, !noundef !5
  %i.jt = load i64, ptr %i.ag, align 8, !range !17, !alias.scope !639, !noalias !637, !noundef !5
  %i.ju = trunc nuw i64 %i.jt to i1
  br i1 %i.ju, label %bb.ay, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i164

bb.ay:                                            ; preds = %bb.ax
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i.i167 = load i64, ptr %i.jv, align 8, !alias.scope !640, !noalias !637, !noundef !5 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val5.i.i.i168 = load i64, ptr %i.jw, align 8, !alias.scope !640, !noalias !637, !noundef !5 ; 3 uses
  %.not.i.i.i.i169 = icmp ugt i64 %.val.i.i.i167, %.val5.i.i.i168
  %3 = sub nuw i64 %.val5.i.i.i168, %.val.i.i.i167
  %i.jx = sub nuw i64 %.val.i.i.i167, %.val5.i.i.i168
  %.sroa.0.0.i.i.i.i170 = select i1 %.not.i.i.i.i169, i64 %i.jx, i64 %3
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i164

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i164: ; preds = %bb.ay, %bb.ax
  %.sroa.02.0.i.i.i165 = phi i64 [ %.sroa.0.0.i.i.i.i170, %bb.ay ], [ 0, %bb.ax ]
  %i.jy = add i64 %.sroa.02.0.i.i.i165, %i.js
  %i.jz = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jp, i64 %i.ia) ; 2 uses
  %i.ka = extractvalue { i64, i1 } %i.jz, 0
  %i.kb = extractvalue { i64, i1 } %i.jz, 1
  br i1 %i.kb, label %bb.az, label %bb.ba, !prof !15

bb.az:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i164
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i164
  %.sroa.013.0.i166 = phi i64 [ -1, %bb.az ], [ %i.ka, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i164 ]
  %i.kc = icmp ult i64 %i.jy, %.sroa.013.0.i166
  br i1 %i.kc, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread, label %bb.au

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172_crit_edge, %bb.as
  %i.kd = phi i64 [ %.pre511, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172_crit_edge ], [ %i.hw, %bb.as ] ; 3 uses
  %i.ke = icmp ult i64 %i.kd, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp samesign ugt i64 %i.kd, 134217727
  br i1 %i.kf, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i408, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i409

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i408: ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.kh = load i64, ptr %i.kg, align 16, !range !10, !noalias !641, !noundef !5
  %i.ki = icmp eq i64 %i.kh, 1
  br i1 %i.ki, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i408
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !641
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.km = load i64, ptr %i.kl, align 8, !noalias !641, !noundef !5
  %.not14.i.i410 = icmp ult i64 %i.km, %i.kk
  br i1 %.not14.i.i410, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ko = load i64, ptr %i.kn, align 16, !range !10, !noalias !641, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !641
  %i.kr = icmp eq i64 %i.ko, 1
  br i1 %i.kr, label %bb.bd, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread_crit_edge

bb.bd:                                            ; preds = %bb.bc
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ag, i64 344
  %i.kt = load i64, ptr %i.ks, align 8, !alias.scope !642, !noalias !641, !noundef !5
  %i.ku = load i64, ptr %i.ag, align 8, !range !17, !alias.scope !642, !noalias !641, !noundef !5
  %i.kv = trunc nuw i64 %i.ku to i1
  br i1 %i.kv, label %bb.be, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i411

bb.be:                                            ; preds = %bb.bd
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i.i414 = load i64, ptr %i.kw, align 8, !alias.scope !643, !noalias !641, !noundef !5 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val5.i.i.i415 = load i64, ptr %i.kx, align 8, !alias.scope !643, !noalias !641, !noundef !5 ; 3 uses
  %.not.i.i.i.i416 = icmp ugt i64 %.val.i.i.i414, %.val5.i.i.i415
  %4 = sub nuw i64 %.val5.i.i.i415, %.val.i.i.i414
  %i.ky = sub nuw i64 %.val.i.i.i414, %.val5.i.i.i415
  %.sroa.0.0.i.i.i.i417 = select i1 %.not.i.i.i.i416, i64 %i.ky, i64 %4
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i411

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i411: ; preds = %bb.be, %bb.bd
  %.sroa.02.0.i.i.i412 = phi i64 [ %.sroa.0.0.i.i.i.i417, %bb.be ], [ 0, %bb.bd ]
  %i.kz = add i64 %.sroa.02.0.i.i.i412, %i.kt
  %i.la = load i64, ptr %i.bc, align 8, !noalias !641, !noundef !5 ; 2 uses
  %i.lb = icmp ult i64 %i.la, 576460752303423488
  tail call void @llvm.assume(i1 %i.lb)
  %i.lc = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.kq, i64 %i.la) ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 0
  %i.le = extractvalue { i64, i1 } %i.lc, 1
  br i1 %i.le, label %bb.bf, label %bb.bg, !prof !15

bb.bf:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i411
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i411
  %.sroa.013.0.i.i413 = phi i64 [ -1, %bb.bf ], [ %i.ld, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i411 ]
  %i.lf = icmp ult i64 %i.kz, %.sroa.013.0.i.i413
  br i1 %i.lf, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread_crit_edge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i408
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc418 unwind label %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !502

.noexc418:                                        ; preds = %bb.bh
  %i.lg = load i64, ptr %i.aw, align 8, !noalias !638, !noundef !5 ; 4 uses
  %i.lh = icmp ult i64 %i.lg, 2305843009213693952
  tail call void @llvm.assume(i1 %i.lh)
  %i.li = icmp samesign ugt i64 %i.lg, 134217727
  br i1 %i.li, label %bb.bi, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i409

bb.bi:                                            ; preds = %.noexc418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !644
  store i64 %i.lg, ptr %i.e, align 8, !noalias !644
  br label %.invoke

.invoke:                                          ; preds = %bb.bq, %bb.bo, %bb.bi
  %i.lj = phi ptr [ %i.e, %bb.bi ], [ %i.j, %bb.bq ], [ %i.k, %bb.bo ]
  %i.lk = phi ptr [ @59, %bb.bi ], [ @74, %bb.bq ], [ @73, %bb.bo ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.lj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lk) #26
          to label %.cont unwind label %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !502

.cont:                                            ; preds = %.invoke
  unreachable

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread_crit_edge: ; preds = %bb.bg, %bb.bc
  %.pre344 = load ptr, ptr %i.s, align 8, !alias.scope !645
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i409: ; preds = %.noexc418, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172
  %.sroa.3.0.i406.in = phi i64 [ %i.kd, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172 ], [ %i.lg, %.noexc418 ]
  %i.ll = load i64, ptr %i.hv, align 8, !noalias !635, !noundef !5
  %.not.i27 = icmp eq i64 %i.ll, 0
  br i1 %.not.i27, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i409
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.bk unwind label %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !512

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i409
  %.sroa.3.0.i406 = trunc nuw nsw i64 %.sroa.3.0.i406.in to i32
  %i.lm = load ptr, ptr %i.s, align 8, !noalias !635, !nonnull !5, !noundef !5
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load i8, ptr %i.ln, align 8, !noundef !5
  %i.lp = and i8 %i.lo, 1
  %.not24.i28 = icmp eq i8 %i.lp, 0
  %spec.select.i29.v = select i1 %.not24.i28, i32 1073741824, i32 1207959552
  %spec.select.i29 = or disjoint i32 %spec.select.i29.v, %.sroa.3.0.i406 ; 8 uses
  %i.lq = load i64, ptr %i.cg, align 8, !noundef !5
  %i.lr = and i64 %i.lq, 63
  %i.ls = shl nuw i64 1, %i.lr
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB20_7sources6repeat6RepeatBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef %i.ls, i32 noundef -2147483648)
          to label %bb.bm unwind label %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !512

bb.bm:                                            ; preds = %bb.bl
  %i.lt = load i128, ptr %i.fi, align 1
  %i.lu = getelementptr i8, ptr %i.fi, i64 16
  %i.lv = load i128, ptr %i.lu, align 1
  %i.lw = or i128 %i.lt, %i.lv
  %i.lx = icmp ne i128 %i.lw, 0
  %i.ly = zext i1 %i.lx to i32
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ma = load i64, ptr %i.cg, align 8, !noalias !646, !noundef !5
  %i.mb = and i64 %i.ma, 63                       ; 4 uses
  %i.mc = shl nuw i64 1, %i.mb                    ; 2 uses
  %i.md = icmp samesign ugt i64 %i.mb, 26
  br i1 %i.md, label %bb.bo, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i156

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !647
  store i64 %i.mc, ptr %i.k, align 8, !noalias !647
  br label %.invoke

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i156: ; preds = %bb.bn
  %i.me = trunc nuw nsw i64 %i.mc to i32
  %i.mf = or i32 %i.me, 1073741824
  %i.mg = icmp eq i32 %spec.select.i29, %i.mf
  br i1 %i.mg, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread, label %bb.bp

bb.bp:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i156
  %i.mh = icmp eq i64 %i.mb, 26
  br i1 %i.mh, label %bb.bq, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !648
  store i64 134217728, ptr %i.j, align 8, !noalias !648
  br label %.invoke

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread: ; preds = %bb.bt, %bb.br, %bb.bs, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i156, %bb.bm
  %i.mi = load i64, ptr %i.hv, align 8, !noalias !635, !noundef !5
  %i.mj = load i64, ptr %i.bz, align 8, !noundef !5
  %i.mk = add i64 %i.mj, %i.mi
  store i64 %i.mk, ptr %i.bz, align 8
  %i.ml = load ptr, ptr %i.s, align 8, !noalias !635, !nonnull !5, !noundef !5
  %i.mm = atomicrmw add ptr %i.ml, i64 1 monotonic, align 8
  %i.mn = icmp slt i64 %i.mm, 0
  br i1 %i.mn, label %bb.ca, label %bb.bv

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161: ; preds = %bb.bp
  %i.mo = shl nuw nsw i64 2, %i.mb
  %i.mp = trunc nuw nsw i64 %i.mo to i32
  %i.mq = or disjoint i32 %i.mp, 536870912
  br label %bb.br

bb.br:                                            ; preds = %bb.bu, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161
  %.sroa.4234.0 = phi i64 [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161 ], [ %i.ms, %bb.bu ] ; 2 uses
  %exitcond.not.i149614 = icmp eq i64 %.sroa.4234.0, 256
  br i1 %exitcond.not.i149614, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread, label %.lr.ph616

bb.bs:                                            ; preds = %.lr.ph616
  %exitcond.not.i149 = icmp eq i64 %i.ms, 256
  br i1 %exitcond.not.i149, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread, label %.lr.ph616

.lr.ph616:                                        ; preds = %bb.br, %bb.bs
  %.sroa.4234.1615 = phi i64 [ %i.ms, %bb.bs ], [ %.sroa.4234.0, %bb.br ] ; 5 uses
  %i.mr = trunc nuw i64 %.sroa.4234.1615 to i8
  %i.ms = add nuw nsw i64 %.sroa.4234.1615, 1     ; 3 uses
  %.lobit.i150 = lshr i64 %.sroa.4234.1615, 7
  %i.mt = and i8 %i.mr, 127
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.lobit.i150
  %i.mv = load i128, ptr %i.mu, align 16, !noalias !649, !noundef !5
  %i.mw = zext nneg i8 %i.mt to i128
  %i.mx = shl nuw i128 1, %i.mw
  %i.my = and i128 %i.mv, %i.mx
  %.not.i151 = icmp eq i128 %i.my, 0
  br i1 %.not.i151, label %bb.bs, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph616
  %i.mz = icmp ult i64 %.sroa.4234.1615, 256
  br i1 %i.mz, label %bb.bu, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread

bb.bu:                                            ; preds = %bb.bt
  %i.na = trunc nuw nsw i64 %.sroa.4234.1615 to i32
  %.sroa.417.0.insert.shift.i36 = shl nuw nsw i32 %i.na, 8
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy14set_transition(ptr nonnull %i.ab, ptr nonnull %i.ag, i32 noundef %spec.select.i29, i32 %.sroa.417.0.insert.shift.i36, i32 noundef %i.mq)
          to label %bb.br unwind label %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !512

bb.bv:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread
  %i.nb = load ptr, ptr %i.s, align 8, !noalias !635, !nonnull !5, !noundef !5 ; 3 uses
  %i.nc = load i64, ptr %i.hv, align 8, !noalias !635, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.nb, ptr %i.l, align 8, !noalias !650
  %i.nd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.nc, ptr %i.nd, align 8, !noalias !650
  %i.ne = load i64, ptr %i.bc, align 8, !alias.scope !650, !noundef !5 ; 3 uses
  %i.nf = load i64, ptr %i.gp, align 8, !range !7, !alias.scope !650, !noundef !5
  %i.ng = icmp eq i64 %i.ne, %i.nf
  br i1 %i.ng, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp)
          to label %bb.cb unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ni = atomicrmw add ptr %i.nb, i64 -1 release, align 8, !noalias !651
  %i.nj = icmp eq i64 %i.ni, 1
  br i1 %i.nj, label %bb.by, label %.body144.thread

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.body144.thread unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ca:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit161.thread
  tail call void @llvm.trap()
  unreachable

bb.cb:                                            ; preds = %bb.bw, %bb.bv
  %i.nl = load ptr, ptr %i.ha, align 8, !alias.scope !650, !nonnull !5, !noundef !5
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.ne ; 2 uses
  store ptr %i.nb, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store i64 %i.nc, ptr %i.nn, align 8
  %i.no = add i64 %i.ne, 1
  store i64 %i.no, ptr %i.bc, align 8, !alias.scope !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.np = load ptr, ptr %i.s, align 8, !noalias !635, !nonnull !5, !noundef !5
  %i.nq = load i64, ptr %i.hv, align 8, !noalias !635, !noundef !5
  %i.nr = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBV_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertBV_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hh, ptr noundef nonnull %i.np, i64 noundef %i.nq, i32 noundef %spec.select.i29)
          to label %bb.ch unwind label %.body180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !512 ; 0 uses

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread_crit_edge, %bb.ba, %bb.aw
  %i.ns = phi ptr [ %.pre344, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread_crit_edge ], [ %i.aj, %bb.ba ], [ %i.aj, %bb.aw ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.nt = atomicrmw add ptr %i.ns, i64 -1 release, align 8, !noalias !645
  %i.nu = icmp eq i64 %i.nt, 1
  br i1 %i.nu, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.cg unwind label %.body180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body144.thread:                                  ; preds = %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.by, %bb.bx
  %eh.lpad-body145269 = phi { ptr, i32 } [ %i.nh, %bb.by ], [ %i.nh, %bb.bx ], [ %lpad.loopexit.split-lp653, %.body144.thread272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.nv = load ptr, ptr %i.s, align 8, !alias.scope !658, !nonnull !5, !noundef !5
  %i.nw = atomicrmw add ptr %i.nv, i64 -1 release, align 8, !noalias !658
  %i.nx = icmp eq i64 %i.nw, 1
  br i1 %i.nx, label %bb.cd, label %.body.thread

bb.cd:                                            ; preds = %.body144.thread
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.body.thread unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !inline_history !512
  unreachable

bb.cf:                                            ; preds = %bb.ar
  tail call void @llvm.trap()
  unreachable

bb.cg:                                            ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit172.thread, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.invoke395.a

bb.ch:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i32 %spec.select.i29, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.nz = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.oa = icmp slt i64 %i.nz, 0
  br i1 %i.oa, label %bb.dt, label %bb.ci

.body180.thread287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %.invoke578, %bb.cx, %bb.ck, %bb.db, %bb.cz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body180.thread

.body180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.ee, %.invoke397, %.invoke395.a, %bb.cb, %bb.cc, %bb.dq, %bb.am, %bb.al, %bb.dp
  %lpad.loopexit.split-lp630 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.aj, ptr %i.r, align 8, !noalias !659
  %i.ob = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store i64 %i.ak, ptr %i.ob, align 8, !noalias !659
  %i.oc = load i64, ptr %i.aw, align 8, !alias.scope !660, !noalias !659, !noundef !5 ; 3 uses
  %i.od = icmp ult i64 %i.oc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.od), !noalias !659
  %i.oe = load i64, ptr %i.az, align 8, !alias.scope !660, !noalias !659, !noundef !5 ; 2 uses
  %i.of = icmp ult i64 %i.oe, 2305843009213693952
  tail call void @llvm.assume(i1 %i.of), !noalias !659
  %i.og = load i64, ptr %i.bc, align 8, !alias.scope !660, !noalias !659, !noundef !5 ; 3 uses
  %i.oh = icmp ult i64 %i.og, 576460752303423488
  tail call void @llvm.assume(i1 %i.oh), !noalias !659
  %i.oi = shl nuw nsw i64 %i.og, 4
  %i.oj = load i64, ptr %i.bg, align 8, !alias.scope !660, !noalias !659, !noundef !5
  %i.ok = mul i64 %i.oj, 20
  %i.ol = load i64, ptr %i.bj, align 8, !alias.scope !660, !noalias !659, !noundef !5 ; 2 uses
  %i.om = icmp ult i64 %i.ol, 2305843009213693952
  tail call void @llvm.assume(i1 %i.om), !noalias !659
  %i.on = load i64, ptr %i.bm, align 8, !alias.scope !660, !noalias !659, !noundef !5 ; 2 uses
  %i.oo = icmp ult i64 %i.on, 2305843009213693952
  tail call void @llvm.assume(i1 %i.oo), !noalias !659
  %i.op = load i64, ptr %i.bp, align 8, !alias.scope !660, !noalias !659, !noundef !5 ; 2 uses
  %i.oq = icmp ult i64 %i.op, 2305843009213693952
  tail call void @llvm.assume(i1 %i.oq), !noalias !659
  %i.or = load i64, ptr %i.bs, align 8, !alias.scope !660, !noalias !659, !noundef !5 ; 2 uses
  %i.os = icmp ult i64 %i.or, 2305843009213693952
  tail call void @llvm.assume(i1 %i.os), !noalias !659
  %i.ot = load i64, ptr %i.bv, align 8, !range !7, !alias.scope !660, !noalias !659, !noundef !5
  %i.ou = load i64, ptr %i.bx, align 8, !range !7, !alias.scope !660, !noalias !659, !noundef !5
  %i.ov = load i64, ptr %i.bz, align 8, !alias.scope !660, !noalias !659, !noundef !5
  %i.ow = add nuw nsw i64 %i.oe, %i.oc
  %i.ox = add nuw nsw i64 %i.ow, %i.ol
  %i.oy = add nuw nsw i64 %i.ox, %i.on
  %i.oz = add nuw i64 %i.oy, %i.op
  %i.pa = add nuw i64 %i.oz, %i.or
  %reass.add.i.i209 = add i64 %i.pa, %i.ot
  %reass.mul.i.i210 = shl i64 %reass.add.i.i209, 2
  %i.pb = load i64, ptr %i.cg, align 8, !noalias !659, !noundef !5
  %i.pc = and i64 %i.pb, 63
  %i.pd = shl i64 4, %i.pc
  %i.pe = add i64 %i.oi, %i.ck
  %i.pf = add i64 %i.pe, %i.ok
  %i.pg = add i64 %i.pf, %i.ou
  %i.ph = add i64 %i.pg, %i.ov
  %i.pi = add i64 %i.ph, %reass.mul.i.i210
  %i.pj = add i64 %i.pi, %i.pd
  %i.pk = load i64, ptr %i.cr, align 16, !noalias !659, !noundef !5
  %.not297 = icmp ugt i64 %i.pj, %i.pk
  br i1 %.not297, label %bb.cj, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208

bb.cj:                                            ; preds = %bb.ci
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.pm = load i64, ptr %i.pl, align 16, !range !10, !noalias !661, !noundef !5
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cq, %bb.cl, %bb.cj
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208_crit_edge unwind label %.body180.thread287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !543

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208_crit_edge: ; preds = %bb.ck
  %.pre512 = load i64, ptr %i.aw, align 8, !noalias !662
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208

bb.cl:                                            ; preds = %bb.cj
  %i.po = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.pp = load i64, ptr %i.po, align 8, !noalias !661
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.pr = load i64, ptr %i.pq, align 8, !noalias !661, !noundef !5
  %.not14.i199 = icmp ult i64 %i.pr, %i.pp
  br i1 %.not14.i199, label %bb.ck, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.pt = load i64, ptr %i.ps, align 16, !range !10, !noalias !661, !noundef !5
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.pv = load i64, ptr %i.pu, align 8, !noalias !661
  %i.pw = icmp eq i64 %i.pt, 1
  br i1 %i.pw, label %bb.cn, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208.thread

bb.cn:                                            ; preds = %bb.cm
  %i.px = getelementptr inbounds nuw i8, ptr %i.ag, i64 344
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !663, !noalias !661, !noundef !5
  %i.pz = load i64, ptr %i.ag, align 8, !range !17, !alias.scope !663, !noalias !661, !noundef !5
  %i.qa = trunc nuw i64 %i.pz to i1
  br i1 %i.qa, label %bb.co, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i200

bb.co:                                            ; preds = %bb.cn
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i.i203 = load i64, ptr %i.qb, align 8, !alias.scope !664, !noalias !661, !noundef !5 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val5.i.i.i204 = load i64, ptr %i.qc, align 8, !alias.scope !664, !noalias !661, !noundef !5 ; 3 uses
  %.not.i.i.i.i205 = icmp ugt i64 %.val.i.i.i203, %.val5.i.i.i204
  %5 = sub nuw i64 %.val5.i.i.i204, %.val.i.i.i203
  %i.qd = sub nuw i64 %.val.i.i.i203, %.val5.i.i.i204
  %.sroa.0.0.i.i.i.i206 = select i1 %.not.i.i.i.i205, i64 %i.qd, i64 %5
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i200

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i200: ; preds = %bb.co, %bb.cn
  %.sroa.02.0.i.i.i201 = phi i64 [ %.sroa.0.0.i.i.i.i206, %bb.co ], [ 0, %bb.cn ]
  %i.qe = add i64 %.sroa.02.0.i.i.i201, %i.py
  %i.qf = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.pv, i64 %i.og) ; 2 uses
  %i.qg = extractvalue { i64, i1 } %i.qf, 0
  %i.qh = extractvalue { i64, i1 } %i.qf, 1
  br i1 %i.qh, label %bb.cp, label %bb.cq, !prof !15

bb.cp:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i200
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i200
  %.sroa.013.0.i202 = phi i64 [ -1, %bb.cp ], [ %i.qg, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i200 ]
  %i.qi = icmp ult i64 %i.qe, %.sroa.013.0.i202
  br i1 %i.qi, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208.thread, label %bb.ck

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208_crit_edge, %bb.ci
  %i.qj = phi i64 [ %.pre512, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208_crit_edge ], [ %i.oc, %bb.ci ] ; 3 uses
  %i.qk = icmp ult i64 %i.qj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.qk)
  %i.ql = icmp samesign ugt i64 %i.qj, 134217727
  br i1 %i.ql, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i423, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i424

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i423: ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.qn = load i64, ptr %i.qm, align 16, !range !10, !noalias !665, !noundef !5
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i423
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.qq = load i64, ptr %i.qp, align 8, !noalias !665
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.qs = load i64, ptr %i.qr, align 8, !noalias !665, !noundef !5
  %.not14.i.i425 = icmp ult i64 %i.qs, %i.qq
  br i1 %.not14.i.i425, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.qu = load i64, ptr %i.qt, align 16, !range !10, !noalias !665, !noundef !5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.qw = load i64, ptr %i.qv, align 8, !noalias !665
  %i.qx = icmp eq i64 %i.qu, 1
  br i1 %i.qx, label %bb.ct, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208.thread_crit_edge

bb.ct:                                            ; preds = %bb.cs
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ag, i64 344
  %i.qz = load i64, ptr %i.qy, align 8, !alias.scope !666, !noalias !665, !noundef !5
  %i.ra = load i64, ptr %i.ag, align 8, !range !17, !alias.scope !666, !noalias !665, !noundef !5
  %i.rb = trunc nuw i64 %i.ra to i1
  br i1 %i.rb, label %bb.cu, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i426

bb.cu:                                            ; preds = %bb.ct
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i.i429 = load i64, ptr %i.rc, align 8, !alias.scope !667, !noalias !665, !noundef !5 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val5.i.i.i430 = load i64, ptr %i.rd, align 8, !alias.scope !667, !noalias !665, !noundef !5 ; 3 uses
  %.not.i.i.i.i431 = icmp ugt i64 %.val.i.i.i429, %.val5.i.i.i430
  %6 = sub nuw i64 %.val5.i.i.i430, %.val.i.i.i429
  %i.re = sub nuw i64 %.val.i.i.i429, %.val5.i.i.i430
  %.sroa.0.0.i.i.i.i432 = select i1 %.not.i.i.i.i431, i64 %i.re, i64 %6
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i426

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i426: ; preds = %bb.cu, %bb.ct
  %.sroa.02.0.i.i.i427 = phi i64 [ %.sroa.0.0.i.i.i.i432, %bb.cu ], [ 0, %bb.ct ]
  %i.rf = add i64 %.sroa.02.0.i.i.i427, %i.qz
  %i.rg = load i64, ptr %i.bc, align 8, !noalias !665, !noundef !5 ; 2 uses
  %i.rh = icmp ult i64 %i.rg, 576460752303423488
  tail call void @llvm.assume(i1 %i.rh)
  %i.ri = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.qw, i64 %i.rg) ; 2 uses
  %i.rj = extractvalue { i64, i1 } %i.ri, 0
  %i.rk = extractvalue { i64, i1 } %i.ri, 1
  br i1 %i.rk, label %bb.cv, label %bb.cw, !prof !15

bb.cv:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i426
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i426
  %.sroa.013.0.i.i428 = phi i64 [ -1, %bb.cv ], [ %i.rj, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i426 ]
  %i.rl = icmp ult i64 %i.rf, %.sroa.013.0.i.i428
  br i1 %i.rl, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208.thread_crit_edge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cr, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i423
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc433.a unwind label %.body180.thread287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !556

.noexc433.a:                                      ; preds = %bb.cx
  %i.rm = load i64, ptr %i.aw, align 8, !noalias !662, !noundef !5 ; 4 uses
  %i.rn = icmp ult i64 %i.rm, 2305843009213693952
  tail call void @llvm.assume(i1 %i.rn)
  %i.ro = icmp samesign ugt i64 %i.rm, 134217727
  br i1 %i.ro, label %bb.cy, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i424

bb.cy:                                            ; preds = %.noexc433.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !668
  store i64 %i.rm, ptr %i.d, align 8, !noalias !668
  br label %.invoke578

.invoke578:                                       ; preds = %bb.df, %bb.de, %bb.cy
  %i.rp = phi ptr [ %i.d, %bb.cy ], [ %i.g, %bb.df ], [ %i.h, %bb.de ]
  %i.rq = phi ptr [ @59, %bb.cy ], [ @74, %bb.df ], [ @73, %bb.de ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.rp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rq) #26
          to label %.cont579 unwind label %.body180.thread287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !556

.cont579:                                         ; preds = %.invoke578
  unreachable

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208.thread_crit_edge: ; preds = %bb.cw, %bb.cs
  %.pre = load ptr, ptr %i.r, align 8, !alias.scope !669
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208.thread

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i424: ; preds = %.noexc433.a, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208
  %.sroa.3.0.i421.in = phi i64 [ %i.qj, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit208 ], [ %i.rm, %.noexc433.a ]
  %i.rr = load i64, ptr %i.ob, align 8, !noalias !659, !noundef !5
  %.not.i47 = icmp eq i64 %i.rr, 0
  br i1 %.not.i47, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i424
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.da unwind label %.body180.thread287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !566

bb.da:                                            ; preds = %bb.cz
  unreachable

bb.db:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i424
  %.sroa.3.0.i421 = trunc nuw nsw i64 %.sroa.3.0.i421.in to i32
  %i.rs = load ptr, ptr %i.r, align 8, !noalias !659, !nonnull !5, !noundef !5
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load i8, ptr %i.rt, align 8, !noundef !5
  %i.rv = and i8 %i.ru, 1
  %.not24.i48 = icmp eq i8 %i.rv, 0
  %spec.select.i49.v = select i1 %.not24.i48, i32 536870912, i32 671088640
  %spec.select.i49 = or disjoint i32 %spec.select.i49.v, %.sroa.3.0.i421 ; 7 uses
  %i.rw = load i64, ptr %i.cg, align 8, !noundef !5
  %i.rx = and i64 %i.rw, 63
  %i.ry = shl nuw i64 1, %i.rx
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB20_7sources6repeat6RepeatBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef %i.ry, i32 noundef -2147483648)
          to label %bb.dc unwind label %.body180.thread287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !566

bb.dc:                                            ; preds = %bb.db
  %i.rz = load i128, ptr %i.fi, align 1
  %i.sa = getelementptr i8, ptr %i.fi, i64 16
  %i.sb = load i128, ptr %i.sa, align 1
  %i.sc = or i128 %i.rz, %i.sb
  %i.sd = icmp ne i128 %i.sc, 0
  %i.se = zext i1 %i.sd to i32
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sg = load i64, ptr %i.cg, align 8, !noalias !670, !noundef !5
  %i.sh = and i64 %i.sg, 63                       ; 4 uses
  %i.si = icmp samesign ugt i64 %i.sh, 26
  br i1 %i.si, label %bb.de, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i192

bb.de:                                            ; preds = %bb.dd
  %i.sj = shl nuw i64 1, %i.sh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !671
  store i64 %i.sj, ptr %i.h, align 8, !noalias !671
  br label %.invoke578

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i192: ; preds = %bb.dd
  %i.sk = shl nuw nsw i64 2, %i.sh                ; 2 uses
  %i.sl = icmp eq i64 %i.sh, 26
  br i1 %i.sl, label %bb.df, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197

bb.df:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !672
  store i64 %i.sk, ptr %i.g, align 8, !noalias !672
  br label %.invoke578

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread: ; preds = %bb.dh, %.preheader, %bb.dg, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197, %bb.dc
  %i.sm = load i64, ptr %i.ob, align 8, !noalias !659, !noundef !5
  %i.sn = load i64, ptr %i.bz, align 8, !noundef !5
  %i.so = add i64 %i.sn, %i.sm
  store i64 %i.so, ptr %i.bz, align 8
  %i.sp = load ptr, ptr %i.r, align 8, !noalias !659, !nonnull !5, !noundef !5
  %i.sq = atomicrmw add ptr %i.sp, i64 1 monotonic, align 8
  %i.sr = icmp slt i64 %i.sq, 0
  br i1 %i.sr, label %bb.do, label %bb.dj

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i192
  %i.ss = trunc nuw nsw i64 %i.sk to i32
  %i.st = or disjoint i32 %i.ss, 536870912        ; 2 uses
  %i.su = icmp eq i32 %spec.select.i49, %i.st
  br i1 %i.su, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread, label %.preheader

.preheader:                                       ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197, %bb.di
  %.sroa.4244.0 = phi i64 [ %i.sw, %bb.di ], [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197 ] ; 2 uses
  %exitcond.not.i185618 = icmp eq i64 %.sroa.4244.0, 256
  br i1 %exitcond.not.i185618, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread, label %.lr.ph620

bb.dg:                                            ; preds = %.lr.ph620
  %exitcond.not.i185 = icmp eq i64 %i.sw, 256
  br i1 %exitcond.not.i185, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread, label %.lr.ph620

.lr.ph620:                                        ; preds = %.preheader, %bb.dg
  %.sroa.4244.1619 = phi i64 [ %i.sw, %bb.dg ], [ %.sroa.4244.0, %.preheader ] ; 5 uses
  %i.sv = trunc nuw i64 %.sroa.4244.1619 to i8
  %i.sw = add nuw nsw i64 %.sroa.4244.1619, 1     ; 3 uses
  %.lobit.i186 = lshr i64 %.sroa.4244.1619, 7
  %i.sx = and i8 %i.sv, 127
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.lobit.i186
  %i.sz = load i128, ptr %i.sy, align 16, !noalias !673, !noundef !5
  %i.ta = zext nneg i8 %i.sx to i128
  %i.tb = shl nuw i128 1, %i.ta
  %i.tc = and i128 %i.sz, %i.tb
  %.not.i187 = icmp eq i128 %i.tc, 0
  br i1 %.not.i187, label %bb.dg, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph620
  %i.td = icmp ult i64 %.sroa.4244.1619, 256
  br i1 %i.td, label %bb.di, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread

bb.di:                                            ; preds = %bb.dh
  %i.te = trunc nuw nsw i64 %.sroa.4244.1619 to i32
  %.sroa.417.0.insert.shift.i56 = shl nuw nsw i32 %i.te, 8
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy14set_transition(ptr nonnull %i.ab, ptr nonnull %i.ag, i32 noundef %spec.select.i49, i32 %.sroa.417.0.insert.shift.i56, i32 noundef %i.st)
          to label %.preheader unwind label %.body180.thread287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !566

bb.dj:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread
  %i.tf = load ptr, ptr %i.r, align 8, !noalias !659, !nonnull !5, !noundef !5 ; 3 uses
  %i.tg = load i64, ptr %i.ob, align 8, !noalias !659, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.tf, ptr %i.i, align 8, !noalias !674
  %i.th = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.tg, ptr %i.th, align 8, !noalias !674
  %i.ti = load i64, ptr %i.bc, align 8, !alias.scope !674, !noundef !5 ; 3 uses
  %i.tj = load i64, ptr %i.gp, align 8, !range !7, !alias.scope !674, !noundef !5
  %i.tk = icmp eq i64 %i.ti, %i.tj
  br i1 %i.tk, label %bb.dk, label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp)
          to label %bb.dp unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tm = atomicrmw add ptr %i.tf, i64 -1 release, align 8, !noalias !675
  %i.tn = icmp eq i64 %i.tm, 1
  br i1 %i.tn, label %bb.dm, label %.body180.thread

bb.dm:                                            ; preds = %bb.dl
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.body180.thread unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.to = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.do:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit197.thread
  tail call void @llvm.trap()
  unreachable

bb.dp:                                            ; preds = %bb.dk, %bb.dj
  %i.tp = load ptr, ptr %i.ha, align 8, !alias.scope !674, !nonnull !5, !noundef !5
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %i.ti ; 2 uses
  store ptr %i.tf, ptr %i.tq, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i64 %i.tg, ptr %i.tr, align 8
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.c ], [ %eh.lpad-body3574, %bb.aw ], [ %i.ib, %.thread59 ], [ %eh.lpad-body3574, %.body34.thread ], [ %lpad.thr_comm, %bb.bb ], [ %lpad.thr_comm, %bb.bc ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBJ_.exit8.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBK_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBJ_.exit.i, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 2 uses
  tail call void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEE5clearBX_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 328 ; 4 uses
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 336 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 344 ; 3 uses
  store i64 0, ptr %i.am, align 8
  %i.an = load i64, ptr %i.k, align 8, !range !17, !noundef !5
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBK_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  store i64 %i.ar, ptr %i.ap, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBK_.exit
  tail call fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy10init_cache(ptr noalias noundef align 8 dereferenceable(16) %0)
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 5 uses
  %.sroa.09.0.copyload = load i32, ptr %i.as, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 260 ; 3 uses
  %.sroa.410.0.copyload = load i32, ptr %.sroa.410.0..sroa_idx, align 4 ; 4 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 264 ; 3 uses
  %.sroa.511.0.copyload = load ptr, ptr %.sroa.511.0..sroa_idx, align 8 ; 5 uses
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %.sroa.612.0.copyload = load i64, ptr %.sroa.612.0..sroa_idx, align 8 ; 3 uses
  store i32 0, ptr %i.as, align 8
  %i.at = icmp eq i32 %.sroa.09.0.copyload, 1
  br i1 %i.at, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.511.0.copyload, ptr %i.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.612.0.copyload, ptr %i.au, align 8
  %i.av = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 12 uses
  %i.aw = icmp eq i32 %.sroa.410.0.copyload, -2147483648
  br i1 %i.aw, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %bb.i, !prof !794

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 696 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !795, !noundef !5
  %i.az = and i64 %i.ay, 63                       ; 5 uses
  %i.ba = shl nuw i64 1, %i.az                    ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.az, 26
  br i1 %i.bb, label %bb.j, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !796
  store i64 %i.ba, ptr %i.h, align 8, !noalias !796
  br label %.invoke104

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i: ; preds = %bb.i
  %i.bc = trunc nuw nsw i64 %i.ba to i32
  %i.bd = or i32 %i.bc, 1073741824
  %i.be = icmp eq i32 %.sroa.410.0.copyload, %i.bd
  br i1 %i.be, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %bb.k, !prof !794

bb.k:                                             ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i
  %i.bf = shl nuw nsw i64 2, %i.az                ; 2 uses
  %i.bg = icmp eq i64 %i.az, 26
  br i1 %i.bg, label %bb.l, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !797
  store i64 %i.bf, ptr %i.g, align 8, !noalias !797
  br label %.invoke104

.invoke104:                                       ; preds = %bb.j, %bb.l
  %i.bh = phi ptr [ %i.g, %bb.l ], [ %i.h, %bb.j ]
  %i.bi = phi ptr [ @74, %bb.l ], [ @73, %bb.j ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi) #26
          to label %.cont105 unwind label %bb.bb

.cont105:                                         ; preds = %.invoke104
  unreachable

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit: ; preds = %bb.k
  %i.bj = trunc nuw nsw i64 %i.bf to i32
  %i.bk = or disjoint i32 %i.bj, 536870912
  %i.bl = icmp eq i32 %.sroa.410.0.copyload, %i.bk
  br i1 %i.bl, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %bb.m, !prof !798

.body34.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.an, %.invoke138, %bb.ab, %bb.o, %bb.af, %bb.ad
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.body34.thread

bb.m:                                             ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.511.0.copyload, ptr %i.f, align 8, !noalias !799
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store i64 %.sroa.612.0.copyload, ptr %i.bm, align 8, !noalias !799
  %i.bn = load i64, ptr %i.l, align 8, !alias.scope !800, !noalias !801, !noundef !5 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bo), !noalias !801
  %i.bp = load i64, ptr %i.m, align 8, !alias.scope !800, !noalias !801, !noundef !5 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bq), !noalias !801
  %i.br = load i64, ptr %i.p, align 8, !alias.scope !800, !noalias !801, !noundef !5 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 576460752303423488
  tail call void @llvm.assume(i1 %i.bs), !noalias !801
  %i.bt = shl nuw nsw i64 %i.br, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !800, !noalias !801, !noundef !5
  %i.bw = mul i64 %i.bv, 20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !800, !noalias !801, !noundef !5 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bz), !noalias !801
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !800, !noalias !801, !noundef !5 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cc), !noalias !801
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !800, !noalias !801, !noundef !5 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cf), !noalias !801
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !800, !noalias !801, !noundef !5 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ci), !noalias !801
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ck = load i64, ptr %i.cj, align 8, !range !7, !alias.scope !800, !noalias !801, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.cm = load i64, ptr %i.cl, align 8, !range !7, !alias.scope !800, !noalias !801, !noundef !5
  %i.cn = load i64, ptr %i.ai, align 8, !alias.scope !800, !noalias !801, !noundef !5
  %i.co = add nuw nsw i64 %i.bp, %i.bn
  %i.cp = add nuw nsw i64 %i.co, %i.by
  %i.cq = add nuw nsw i64 %i.cp, %i.cb
  %i.cr = add nuw i64 %i.cq, %i.ce
  %i.cs = add nuw i64 %i.cr, %i.ch
  %reass.add.i.i = add i64 %i.cs, %i.ck
  %reass.mul.i.i = shl i64 %reass.add.i.i, 2
  %i.ct = shl nuw nsw i64 4, %i.az
  %i.cu = add i64 %.sroa.612.0.copyload, 36
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = add i64 %i.cv, %i.bt
  %i.cx = add i64 %i.cw, %i.bw
  %i.cy = add i64 %i.cx, %i.cm
  %i.cz = add i64 %i.cy, %i.cn
  %i.da = add i64 %i.cz, %reass.mul.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 704
  %i.dc = load i64, ptr %i.db, align 16, !noalias !801, !noundef !5
  %.not = icmp ugt i64 %i.da, %i.dc
  br i1 %.not, label %bb.n, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.de = load i64, ptr %i.dd, align 16, !range !10, !noalias !802, !noundef !5
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.u, %bb.p, %bb.n
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge unwind label %.body34.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !722

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge: ; preds = %bb.o
  %.pre125 = load i64, ptr %i.l, align 8, !noalias !803
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit

bb.p:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !802
  %i.di = load i64, ptr %i.aj, align 8, !noalias !802, !noundef !5
  %.not14.i = icmp ult i64 %i.di, %i.dh
  br i1 %.not14.i, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.dk = load i64, ptr %i.dj, align 16, !range !10, !noalias !802, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !802
  %i.dn = icmp eq i64 %i.dk, 1
  br i1 %i.dn, label %bb.r, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.do = load i64, ptr %i.am, align 8, !alias.scope !804, !noalias !802, !noundef !5
  %i.dp = load i64, ptr %i.k, align 8, !range !17, !alias.scope !804, !noalias !802, !noundef !5
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.s, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i = load i64, ptr %i.dr, align 8, !alias.scope !805, !noalias !802, !noundef !5 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val5.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !805, !noalias !802, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %.val.i.i.i, %.val5.i.i.i
  %1 = sub nuw i64 %.val5.i.i.i, %.val.i.i.i
  %i.dt = sub nuw i64 %.val.i.i.i, %.val5.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.dt, i64 %1
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i: ; preds = %bb.s, %bb.r
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.s ], [ 0, %bb.r ]
  %i.du = add i64 %.sroa.02.0.i.i.i, %i.do
  %i.dv = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dm, i64 %i.br) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 0
  %i.dx = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dx, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
  %.sroa.013.0.i = phi i64 [ -1, %bb.t ], [ %i.dw, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i ]
  %i.dy = icmp ult i64 %i.du, %.sroa.013.0.i
  br i1 %i.dy, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, label %bb.o

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge, %bb.m
  %i.dz = phi i64 [ %.pre125, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge ], [ %i.bn, %bb.m ] ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp samesign ugt i64 %i.dz, 134217727
  br i1 %i.eb, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i: ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ed = load i64, ptr %i.ec, align 16, !range !10, !noalias !806, !noundef !5
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !806
  %i.eh = load i64, ptr %i.aj, align 8, !noalias !806, !noundef !5
  %.not14.i.i = icmp ult i64 %i.eh, %i.eg
  br i1 %.not14.i.i, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ej = load i64, ptr %i.ei, align 16, !range !10, !noalias !806, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.el = load i64, ptr %i.ek, align 8, !noalias !806
  %i.em = icmp eq i64 %i.ej, 1
  br i1 %i.em, label %bb.x, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge

bb.x:                                             ; preds = %bb.w
  %i.en = load i64, ptr %i.am, align 8, !alias.scope !807, !noalias !806, !noundef !5
  %i.eo = load i64, ptr %i.k, align 8, !range !17, !alias.scope !807, !noalias !806, !noundef !5
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %bb.y, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i106

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i108 = load i64, ptr %i.eq, align 8, !alias.scope !808, !noalias !806, !noundef !5 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val5.i.i.i109 = load i64, ptr %i.er, align 8, !alias.scope !808, !noalias !806, !noundef !5 ; 3 uses
  %.not.i.i.i.i110 = icmp ugt i64 %.val.i.i.i108, %.val5.i.i.i109
  %2 = sub nuw i64 %.val5.i.i.i109, %.val.i.i.i108
  %i.es = sub nuw i64 %.val.i.i.i108, %.val5.i.i.i109
  %.sroa.0.0.i.i.i.i111 = select i1 %.not.i.i.i.i110, i64 %i.es, i64 %2
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i106

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i106: ; preds = %bb.y, %bb.x
  %.sroa.02.0.i.i.i107 = phi i64 [ %.sroa.0.0.i.i.i.i111, %bb.y ], [ 0, %bb.x ]
  %i.et = add i64 %.sroa.02.0.i.i.i107, %i.en
  %i.eu = load i64, ptr %i.p, align 8, !noalias !806, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, 576460752303423488
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.el, i64 %i.eu) ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 0
  %i.ey = extractvalue { i64, i1 } %i.ew, 1
  br i1 %i.ey, label %bb.z, label %bb.aa, !prof !15

bb.z:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i106
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i106
  %.sroa.013.0.i.i = phi i64 [ -1, %bb.z ], [ %i.ex, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i106 ]
  %i.ez = icmp ult i64 %i.et, %.sroa.013.0.i.i
  br i1 %i.ez, label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %.body34.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !735

.noexc:                                           ; preds = %bb.ab
  %i.fa = load i64, ptr %i.l, align 8, !noalias !803, !noundef !5 ; 4 uses
  %i.fb = icmp ult i64 %i.fa, 2305843009213693952
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp samesign ugt i64 %i.fa, 134217727
  br i1 %i.fc, label %bb.ac, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i

bb.ac:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !809
  store i64 %i.fa, ptr %i.b, align 8, !noalias !809
  br label %.invoke138

.invoke138:                                       ; preds = %bb.aj, %bb.ai, %bb.ac
  %i.fd = phi ptr [ %i.b, %bb.ac ], [ %i.c, %bb.aj ], [ %i.d, %bb.ai ]
  %i.fe = phi ptr [ @59, %bb.ac ], [ @74, %bb.aj ], [ @73, %bb.ai ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe) #26
          to label %.cont139 unwind label %.body34.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !735

.cont139:                                         ; preds = %.invoke138
  unreachable

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge: ; preds = %bb.aa, %bb.w
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !810
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i: ; preds = %.noexc, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
  %.sroa.3.0.i.in = phi i64 [ %i.dz, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit ], [ %i.fa, %.noexc ]
  %i.ff = load i64, ptr %i.bm, align 8, !noalias !799, !noundef !5
  %.not.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.ae unwind label %.body34.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !745

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  %.sroa.3.0.i = trunc nuw nsw i64 %.sroa.3.0.i.in to i32
  %i.fg = and i32 %.sroa.410.0.copyload, 268435456
  %.sroa.0.0.i44 = or disjoint i32 %i.fg, %.sroa.3.0.i
  %i.fh = load ptr, ptr %i.f, align 8, !noalias !799, !nonnull !5, !noundef !5
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i8, ptr %i.fi, align 8, !noundef !5
  %i.fk = and i8 %i.fj, 1
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 27
  %spec.select.i = or disjoint i32 %i.fm, %.sroa.0.0.i44 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.fo = load i64, ptr %i.ax, align 8, !noundef !5
  %i.fp = and i64 %i.fo, 63
  %i.fq = shl nuw i64 1, %i.fp
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB20_7sources6repeat6RepeatBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fn, i64 noundef %i.fq, i32 noundef -2147483648)
          to label %bb.ag unwind label %.body34.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !745

bb.ag:                                            ; preds = %bb.af
  %i.fr = getelementptr inbounds nuw i8, ptr %i.av, i64 656 ; 3 uses
  %i.fs = load i128, ptr %i.fr, align 1
  %i.ft = getelementptr i8, ptr %i.fr, i64 16
  %i.fu = load i128, ptr %i.ft, align 1
  %i.fv = or i128 %i.fs, %i.fu
  %i.fw = icmp ne i128 %i.fv, 0
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fz = load i64, ptr %i.ax, align 8, !noalias !811, !noundef !5
  %i.ga = and i64 %i.fz, 63                       ; 4 uses
  %i.gb = icmp samesign ugt i64 %i.ga, 26
  br i1 %i.gb, label %bb.ai, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i38

bb.ai:                                            ; preds = %bb.ah
  %i.gc = shl nuw i64 1, %i.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !812
  store i64 %i.gc, ptr %i.d, align 8, !noalias !812
  br label %.invoke138

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i38: ; preds = %bb.ah
  %i.gd = shl nuw nsw i64 2, %i.ga                ; 2 uses
  %i.ge = icmp eq i64 %i.ga, 26
  br i1 %i.ge, label %bb.aj, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43

bb.aj:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !813
  store i64 %i.gd, ptr %i.c, align 8, !noalias !813
  br label %.invoke138

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43.thread: ; preds = %bb.am, %bb.ak, %bb.al, %bb.ag
  %i.gf = load i64, ptr %i.bm, align 8, !noalias !799, !noundef !5
  %i.gg = load i64, ptr %i.ai, align 8, !noundef !5
  %i.gh = add i64 %i.gg, %i.gf
  store i64 %i.gh, ptr %i.ai, align 8
  %i.gi = load ptr, ptr %i.f, align 8, !noalias !799, !nonnull !5, !noundef !5
  %i.gj = atomicrmw add ptr %i.gi, i64 1 monotonic, align 8
  %i.gk = icmp slt i64 %i.gj, 0
  br i1 %i.gk, label %bb.at, label %bb.ao

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i38
  %i.gl = trunc nuw nsw i64 %i.gd to i32
  %i.gm = or disjoint i32 %i.gl, 536870912
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43, %bb.an
  %.sroa.454.0 = phi i64 [ %i.go, %bb.an ], [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43 ] ; 2 uses
  %exitcond.not.i144 = icmp eq i64 %.sroa.454.0, 256
  br i1 %exitcond.not.i144, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43.thread, label %.lr.ph

bb.al:                                            ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.go, 256
  br i1 %exitcond.not.i, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak, %bb.al
  %.sroa.454.1145 = phi i64 [ %i.go, %bb.al ], [ %.sroa.454.0, %bb.ak ] ; 5 uses
  %i.gn = trunc nuw i64 %.sroa.454.1145 to i8
  %i.go = add nuw nsw i64 %.sroa.454.1145, 1      ; 3 uses
  %.lobit.i = lshr i64 %.sroa.454.1145, 7
  %i.gp = and i8 %i.gn, 127
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %.lobit.i
  %i.gr = load i128, ptr %i.gq, align 16, !noalias !814, !noundef !5
  %i.gs = zext nneg i8 %i.gp to i128
  %i.gt = shl nuw i128 1, %i.gs
  %i.gu = and i128 %i.gr, %i.gt
  %.not.i36 = icmp eq i128 %i.gu, 0
  br i1 %.not.i36, label %bb.al, label %bb.am

bb.am:                                            ; preds = %.lr.ph
  %i.gv = icmp ult i64 %.sroa.454.1145, 256
  br i1 %i.gv, label %bb.an, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43.thread

bb.an:                                            ; preds = %bb.am
  %i.gw = trunc nuw nsw i64 %.sroa.454.1145 to i32
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %i.gw, 8
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy14set_transition(ptr nonnull %i.av, ptr nonnull %i.k, i32 noundef %spec.select.i, i32 %.sroa.417.0.insert.shift.i, i32 noundef %i.gm)
          to label %bb.ak unwind label %.body34.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !745

bb.ao:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43.thread
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.gy = load ptr, ptr %i.f, align 8, !noalias !799, !nonnull !5, !noundef !5 ; 3 uses
  %i.gz = load i64, ptr %i.bm, align 8, !noalias !799, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.gy, ptr %i.e, align 8, !noalias !815
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !noalias !815
  %i.hb = load i64, ptr %i.p, align 8, !alias.scope !815, !noundef !5 ; 3 uses
  %i.hc = load i64, ptr %i.gx, align 8, !range !7, !alias.scope !815, !noundef !5
  %i.hd = icmp eq i64 %i.hb, %i.hc
  br i1 %i.hd, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %bb.au unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = atomicrmw add ptr %i.gy, i64 -1 release, align 8, !noalias !816
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.ar, label %.body34.thread

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body34.thread unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.at:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit43.thread
  tail call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ap, %bb.ao
  %i.hi = load ptr, ptr %i.n, align 8, !alias.scope !815, !nonnull !5, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy16cache_next_state:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 280 ; 2 uses
  %i.ci = icmp eq i64 %i.cc, 0
  br i1 %i.ci, label %select.unfold.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRShECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.cg)
          to label %.noexc.i unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !940 ; 2 uses

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.cl = lshr i64 %i.ck, 57
  %i.cm = trunc nuw nsw i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !943, !noalias !940, !noundef !5 ; 2 uses
  %i.cp = load ptr, ptr %i.ch, align 8, !alias.scope !943, !noalias !940, !nonnull !5, !noundef !5 ; 2 uses
  %i.cq = insertelement <16 x i8> poison, i8 %i.cm, i64 0
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc.i ], [ %i.di, %bb.i ]
  %.pn.i.i.i.i = phi i64 [ %i.ck, %.noexc.i ], [ %i.dj, %bb.i ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.co ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.cs, align 1, !noalias !944 ; 2 uses
  %i.ct = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.cr
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.dh, %bb.h ], [ %i.cu, %bb.g ] ; 3 uses
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = add i64 %.sroa.01.0.i.i.i.i, %i.cw
  %i.cy = and i64 %i.cx, %i.co
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds [24 x i8], ptr %i.cp, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -24
  %i.dc = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownShINtB2_10EquivalentNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE10equivalentBS_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db)
          to label %.noexc7.i unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !940

.noexc7.i:                                        ; preds = %.lr.ph.i.i.i
  br i1 %i.dc, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i, label %bb.h, !prof !6

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.dd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.de = bitcast <16 x i1> %i.dd to i16
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.i, label %select.unfold.i, !prof !15

bb.h:                                             ; preds = %.noexc7.i
  %i.dg = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.dh = and i16 %i.dg, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.di = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.dj = add i64 %.sroa.01.0.i.i.i.i, %i.di
  br label %bb.g

.body.thread32.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.au, %bb.at, %select.unfold.i, %bb.f
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread27.i

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i: ; preds = %.noexc7.i
  %i.dk = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !940, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !noalias !940
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8, !noalias !946
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread88 unwind label %bb.j, !noalias !946

bb.j:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread unwind label %bb.k, !noalias !946

bb.k:                                             ; preds = %bb.j
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !946
  unreachable

.thread88:                                        ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bi

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.e
  %i.do = invoke { ptr, i64 } @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA8to_state(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.l unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !940 ; 2 uses

bb.l:                                             ; preds = %select.unfold.i
  %i.dp = extractvalue { ptr, i64 } %i.do, 0
  %i.dq = extractvalue { ptr, i64 } %i.do, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !947
  store ptr %i.dp, ptr %i.g, align 8, !noalias !948
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store i64 %i.dq, ptr %i.dr, align 8, !noalias !948
  %i.ds = load i64, ptr %i.ah, align 8, !alias.scope !949, !noalias !950, !noundef !5 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 2305843009213693952
  call void @llvm.assume(i1 %i.dt)
  %i.du = load i64, ptr %i.ak, align 8, !alias.scope !949, !noalias !950, !noundef !5 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 2305843009213693952
  call void @llvm.assume(i1 %i.dv)
  %i.dw = load i64, ptr %i.w, align 8, !alias.scope !949, !noalias !950, !noundef !5 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 576460752303423488
  call void @llvm.assume(i1 %i.dx)
  %i.dy = shl nuw nsw i64 %i.dw, 4
  %i.dz = load i64, ptr %i.aq, align 8, !alias.scope !949, !noalias !950, !noundef !5
  %i.ea = mul i64 %i.dz, 20
  %i.eb = load i64, ptr %i.at, align 8, !alias.scope !949, !noalias !950, !noundef !5 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, 2305843009213693952
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i64, ptr %i.aw, align 8, !alias.scope !949, !noalias !950, !noundef !5 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 2305843009213693952
  call void @llvm.assume(i1 %i.ee)
  %i.ef = load i64, ptr %i.az, align 8, !alias.scope !949, !noalias !950, !noundef !5 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 2305843009213693952
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.bc, align 8, !alias.scope !949, !noalias !950, !noundef !5 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, 2305843009213693952
  call void @llvm.assume(i1 %i.ei)
  %i.ej = load i64, ptr %i.ad, align 8, !range !7, !alias.scope !949, !noalias !950, !noundef !5
  %i.ek = load i64, ptr %i.r, align 8, !range !7, !alias.scope !949, !noalias !950, !noundef !5
  %i.el = load i64, ptr %i.bh, align 8, !alias.scope !949, !noalias !950, !noundef !5
  %i.em = add nuw nsw i64 %i.du, %i.ds
  %i.en = add nuw nsw i64 %i.em, %i.eb
  %i.eo = add nuw nsw i64 %i.en, %i.ed
  %i.ep = add nuw i64 %i.eo, %i.ef
  %i.eq = add nuw i64 %i.ep, %i.eh
  %reass.add.i.i.i.i = add i64 %i.eq, %i.ej
  %reass.mul.i.i.i.i = shl i64 %reass.add.i.i.i.i, 2
  %i.er = load i64, ptr %i.n, align 8, !noalias !950, !noundef !5
  %i.es = and i64 %i.er, 63
  %i.et = shl i64 4, %i.es
  %i.eu = add i64 %i.dq, 36
  %i.ev = add i64 %i.eu, %i.dy
  %i.ew = add i64 %i.ev, %i.ea
  %i.ex = add i64 %i.ew, %i.ek
  %i.ey = add i64 %i.ex, %i.el
  %i.ez = add i64 %i.ey, %reass.mul.i.i.i.i
  %i.fa = add i64 %i.ez, %i.et
  %i.fb = load i64, ptr %i.by, align 16, !noalias !950, !noundef !5
  %.not65.i.i = icmp ugt i64 %i.fa, %i.fb
  br i1 %.not65.i.i, label %bb.m, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i

.body.thread58.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.ae, %bb.ac, %.invoke.i.i, %bb.aa, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.fd = load i64, ptr %i.fc, align 16, !range !10, !noalias !951, !noundef !5
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.o, %bb.m
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i unwind label %.body.thread58.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i: ; preds = %bb.n
  %.pre.i.i = load i64, ptr %i.ah, align 8, !noalias !952
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !951
  %i.fh = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !951, !noundef !5
  %.not14.i.i.i = icmp ult i64 %i.fi, %i.fg
  br i1 %.not14.i.i.i, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.fk = load i64, ptr %i.fj, align 16, !range !10, !noalias !951, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !951
  %i.fn = icmp eq i64 %i.fk, 1
  br i1 %i.fn, label %bb.q, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !953, !noalias !951, !noundef !5
  %i.fq = load i64, ptr %i.q, align 8, !range !17, !alias.scope !953, !noalias !951, !noundef !5
  %i.fr = trunc nuw i64 %i.fq to i1
  br i1 %i.fr, label %bb.r, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !954, !noalias !951, !noundef !5 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val5.i.i.i.i.i = load i64, ptr %i.ft, align 8, !alias.scope !954, !noalias !951, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i, %.val5.i.i.i.i.i
  %3 = sub nuw i64 %.val5.i.i.i.i.i, %.val.i.i.i.i.i
  %i.fu = sub nuw i64 %.val.i.i.i.i.i, %.val5.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %i.fu, i64 %3
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.r ], [ 0, %bb.q ]
  %i.fv = add i64 %.sroa.02.0.i.i.i.i.i, %i.fp
  %i.fw = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fm, i64 %i.dw) ; 2 uses
  %i.fx = extractvalue { i64, i1 } %i.fw, 0
  %i.fy = extractvalue { i64, i1 } %i.fw, 1
  br i1 %i.fy, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i
  %.sroa.013.0.i.i.i = phi i64 [ -1, %bb.s ], [ %i.fx, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i ]
  %i.fz = icmp ult i64 %i.fv, %.sroa.013.0.i.i.i
  br i1 %i.fz, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i, label %bb.n

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i, %bb.l
  %i.ga = phi i64 [ %.pre.i.i, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i ], [ %i.ds, %bb.l ] ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 2305843009213693952
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp samesign ugt i64 %i.ga, 134217727
  br i1 %i.gc, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i: ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ge = load i64, ptr %i.gd, align 16, !range !10, !noalias !955, !noundef !5
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !955
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !955, !noundef !5
  %.not14.i.i.i.i = icmp ult i64 %i.gj, %i.gh
  br i1 %.not14.i.i.i.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.gl = load i64, ptr %i.gk, align 16, !range !10, !noalias !955, !noundef !5
  %i.gm = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !955
  %i.go = icmp eq i64 %i.gl, 1
  br i1 %i.go, label %bb.w, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i

bb.w:                                             ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !956, !noalias !955, !noundef !5
  %i.gr = load i64, ptr %i.q, align 8, !range !17, !alias.scope !956, !noalias !955, !noundef !5
  %i.gs = trunc nuw i64 %i.gr to i1
  br i1 %i.gs, label %bb.x, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i31.i.i

bb.x:                                             ; preds = %bb.w
  %i.gt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i33.i.i = load i64, ptr %i.gt, align 8, !alias.scope !957, !noalias !955, !noundef !5 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val5.i.i.i34.i.i = load i64, ptr %i.gu, align 8, !alias.scope !957, !noalias !955, !noundef !5 ; 3 uses
  %.not.i.i.i.i35.i.i = icmp ugt i64 %.val.i.i.i33.i.i, %.val5.i.i.i34.i.i
  %4 = sub nuw i64 %.val5.i.i.i34.i.i, %.val.i.i.i33.i.i
  %i.gv = sub nuw i64 %.val.i.i.i33.i.i, %.val5.i.i.i34.i.i
  %.sroa.0.0.i.i.i.i36.i.i = select i1 %.not.i.i.i.i35.i.i, i64 %i.gv, i64 %4
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i31.i.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i31.i.i: ; preds = %bb.x, %bb.w
  %.sroa.02.0.i.i.i32.i.i = phi i64 [ %.sroa.0.0.i.i.i.i36.i.i, %bb.x ], [ 0, %bb.w ]
  %i.gw = add i64 %.sroa.02.0.i.i.i32.i.i, %i.gq
  %i.gx = load i64, ptr %i.w, align 8, !noalias !955, !noundef !5 ; 2 uses
  %i.gy = icmp ult i64 %i.gx, 576460752303423488
  call void @llvm.assume(i1 %i.gy)
  %i.gz = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gn, i64 %i.gx) ; 2 uses
  %i.ha = extractvalue { i64, i1 } %i.gz, 0
  %i.hb = extractvalue { i64, i1 } %i.gz, 1
  br i1 %i.hb, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i31.i.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i31.i.i
  %.sroa.013.0.i.i.i.i = phi i64 [ -1, %bb.y ], [ %i.ha, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i31.i.i ]
  %i.hc = icmp ult i64 %i.gw, %.sroa.013.0.i.i.i.i
  br i1 %i.hc, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc37.i.i unwind label %.body.thread58.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

.noexc37.i.i:                                     ; preds = %bb.aa
  %i.hd = load i64, ptr %i.ah, align 8, !noalias !952, !noundef !5 ; 4 uses
  %i.he = icmp ult i64 %i.hd, 2305843009213693952
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp samesign ugt i64 %i.hd, 134217727
  br i1 %i.hf, label %bb.ab, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i

bb.ab:                                            ; preds = %.noexc37.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !958
  store i64 %i.hd, ptr %i.f, align 8, !noalias !958
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.ai, %bb.ah, %bb.ab
  %i.hg = phi ptr [ %i.f, %bb.ab ], [ %i.e, %bb.ah ], [ %i.d, %bb.ai ]
  %i.hh = phi ptr [ @59, %bb.ab ], [ @73, %bb.ah ], [ @74, %bb.ai ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.hg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hh) #26
          to label %.cont.i.i unwind label %.body.thread58.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !950, !inline_history !1

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i: ; preds = %.noexc37.i.i, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i
  %.sroa.3.0.i.in.i.i = phi i64 [ %i.ga, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i ], [ %i.hd, %.noexc37.i.i ]
  %i.hi = load i64, ptr %i.dr, align 8, !noalias !948, !noundef !5
  %.not.i9.i = icmp eq i64 %i.hi, 0
  br i1 %.not.i9.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.ad unwind label %.body.thread58.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !950

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i
  %.sroa.3.0.i.i.i = trunc nuw nsw i64 %.sroa.3.0.i.in.i.i to i32
  %i.hj = load ptr, ptr %i.g, align 8, !noalias !948, !nonnull !5, !noundef !5
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load i8, ptr %i.hk, align 8, !noalias !950, !noundef !5
  %i.hm = and i8 %i.hl, 1
  %i.hn = zext nneg i8 %i.hm to i32
  %i.ho = shl nuw nsw i32 %i.hn, 27
  %spec.select.i.i = or disjoint i32 %i.ho, %.sroa.3.0.i.i.i ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.hq = load i64, ptr %i.n, align 8, !noalias !950, !noundef !5
  %i.hr = and i64 %i.hq, 63
  %i.hs = shl nuw i64 1, %i.hr
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB20_7sources6repeat6RepeatBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hp, i64 noundef %i.hs, i32 noundef -2147483648)
          to label %bb.af unwind label %.body.thread58.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !950

bb.af:                                            ; preds = %bb.ae
  %i.ht = getelementptr inbounds nuw i8, ptr %i.m, i64 656 ; 3 uses
  %i.hu = load i128, ptr %i.ht, align 1
  %i.hv = getelementptr i8, ptr %i.ht, i64 16
  %i.hw = load i128, ptr %i.hv, align 1
  %i.hx = or i128 %i.hu, %i.hw
  %i.hy = icmp ne i128 %i.hx, 0
  %i.hz = zext i1 %i.hy to i32
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ib = load i64, ptr %i.n, align 8, !noalias !959, !noundef !5
  %i.ic = and i64 %i.ib, 63                       ; 4 uses
  %i.id = icmp samesign ugt i64 %i.ic, 26
  br i1 %i.id, label %bb.ah, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ie = shl nuw i64 1, %i.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !960
  store i64 %i.ie, ptr %i.e, align 8, !noalias !960
  br label %.invoke.i.i

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i: ; preds = %bb.ag
  %i.if = icmp eq i64 %i.ic, 26
  br i1 %i.if, label %bb.ai, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i

bb.ai:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !961
  store i64 134217728, ptr %i.d, align 8, !noalias !961
  br label %.invoke.i.i

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i: ; preds = %bb.al, %bb.aj, %bb.ak, %bb.af
  %i.ig = load i64, ptr %i.dr, align 8, !noalias !948, !noundef !5
  %i.ih = load i64, ptr %i.bh, align 8, !noalias !950, !noundef !5
  %i.ii = add i64 %i.ih, %i.ig
  store i64 %i.ii, ptr %i.bh, align 8, !noalias !950
  %i.ij = load ptr, ptr %i.g, align 8, !noalias !948, !nonnull !5, !noundef !5
  %i.ik = atomicrmw add ptr %i.ij, i64 1 monotonic, align 8, !noalias !950
  %i.il = icmp slt i64 %i.ik, 0
  br i1 %i.il, label %bb.as, label %bb.an

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i
  %i.im = shl nuw nsw i64 2, %i.ic
  %i.in = trunc nuw nsw i64 %i.im to i32
  %i.io = or disjoint i32 %i.in, 536870912
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i
  %.sroa.453.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i ], [ %i.iq, %bb.am ] ; 2 uses
  %exitcond.not.i.i.i106 = icmp eq i64 %.sroa.453.0.i.i, 256
  br i1 %exitcond.not.i.i.i106, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i, label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %i.iq, 256
  br i1 %exitcond.not.i.i.i, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %.sroa.453.1.i.i107 = phi i64 [ %i.iq, %bb.ak ], [ %.sroa.453.0.i.i, %bb.aj ] ; 5 uses
  %i.ip = trunc nuw i64 %.sroa.453.1.i.i107 to i8
  %i.iq = add nuw nsw i64 %.sroa.453.1.i.i107, 1  ; 3 uses
  %.lobit.i.i.i = lshr i64 %.sroa.453.1.i.i107, 7
  %i.ir = and i8 %i.ip, 127
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.lobit.i.i.i
  %i.it = load i128, ptr %i.is, align 16, !noalias !962, !noundef !5
  %i.iu = zext nneg i8 %i.ir to i128
  %i.iv = shl nuw i128 1, %i.iu
  %i.iw = and i128 %i.it, %i.iv
  %.not.i.i.i = icmp eq i128 %i.iw, 0
  br i1 %.not.i.i.i, label %bb.ak, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.ix = icmp ult i64 %.sroa.453.1.i.i107, 256
  br i1 %i.ix, label %bb.am, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i

bb.am:                                            ; preds = %bb.al
  %i.iy = trunc nuw nsw i64 %.sroa.453.1.i.i107 to i32
  %.sroa.417.0.insert.shift.i.i = shl nuw nsw i32 %i.iy, 8
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy14set_transition(ptr nonnull %i.m, ptr nonnull %i.q, i32 noundef %spec.select.i.i, i32 %.sroa.417.0.insert.shift.i.i, i32 noundef %i.io)
          to label %bb.aj unwind label %.body.thread58.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !950

bb.an:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.ja = load ptr, ptr %i.g, align 8, !noalias !948, !nonnull !5, !noundef !5 ; 3 uses
  %i.jb = load i64, ptr %i.dr, align 8, !noalias !948, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !948
  store ptr %i.ja, ptr %i.c, align 8, !noalias !964
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.jb, ptr %i.jc, align 8, !noalias !964
  %i.jd = load i64, ptr %i.w, align 8, !alias.scope !963, !noalias !950, !noundef !5 ; 3 uses
  %i.je = load i64, ptr %i.iz, align 8, !range !7, !alias.scope !963, !noalias !950, !noundef !5
  %i.jf = icmp eq i64 %i.jd, %i.je
  br i1 %i.jf, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iz)
          to label %bb.at unwind label %bb.ap, !noalias !950

bb.ap:                                            ; preds = %bb.ao
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = atomicrmw add ptr %i.ja, i64 -1 release, align 8, !noalias !965
  %i.ji = icmp eq i64 %i.jh, 1
  br i1 %i.ji, label %bb.aq, label %.body.thread.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.body.thread.i.i unwind label %bb.ar, !noalias !950

bb.ar:                                            ; preds = %bb.aq
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !950
  unreachable

bb.as:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.ao, %bb.an
  %i.jk = load ptr, ptr %i.ab, align 8, !alias.scope !963, !noalias !950, !nonnull !5, !noundef !5
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jk, i64 %i.jd ; 2 uses
  store ptr %i.ja, ptr %i.jl, align 8, !noalias !950
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i64 %i.jb, ptr %i.jm, align 8, !noalias !950
  %i.jn = add i64 %i.jd, 1
  store i64 %i.jn, ptr %i.w, align 8, !alias.scope !963, !noalias !950
end_hunk_2
begin_hunk_3_@_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy17cache_start_group:bb.a
  %i.at = trunc nuw nsw i64 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1072, !noalias !1069, !noundef !5 ; 2 uses
  %i.aw = load ptr, ptr %i.am, align 8, !alias.scope !1072, !noalias !1069, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.noexc.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.bp, %bb.m ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ar, %.noexc.i.i ], [ %i.bq, %bb.m ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.av ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.az, align 1, !noalias !1073 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.bo, %bb.l ], [ %i.bb, %bb.k ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i, %i.bd
  %i.bf = and i64 %i.be, %i.av
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [24 x i8], ptr %i.aw, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  %i.bj = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownShINtB2_10EquivalentNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE10equivalentBS_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef range(i64 0, -9223372036854775808) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %.noexc7.i.i unwind label %.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1069

.noexc7.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  br i1 %i.bj, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i.i, label %bb.l, !prof !6

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %bb.k
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %select.unfold.i.i, !prof !15

bb.l:                                             ; preds = %.noexc7.i.i
  %i.bn = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.bo = and i16 %i.bn, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i.i, %i.bp
  br label %bb.k

.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %bb.ay, %bb.ax, %select.unfold.i.i, %bb.j
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread4.i.i

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i.i: ; preds = %.noexc7.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !noalias !1069, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !1075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !noalias !1069
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1075
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15cache_start_one.exit.thread unwind label %bb.n, !noalias !1075

bb.n:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread.i unwind label %bb.o, !noalias !1075

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1075
  unreachable

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15cache_start_one.exit.thread: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getShEBW_.exit.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bm

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.bv = invoke { ptr, i64 } @_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA8to_state(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.p unwind label %.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1069 ; 2 uses

bb.p:                                             ; preds = %select.unfold.i.i
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1068
  store ptr %i.bw, ptr %i.g, align 8, !noalias !1076
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store i64 %i.bx, ptr %i.by, align 8, !noalias !1076
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1077, !noalias !1078, !noundef !5 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 2305843009213693952
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1077, !noalias !1078, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 2305843009213693952
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1077, !noalias !1078, !noundef !5 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 576460752303423488
  call void @llvm.assume(i1 %i.ch)
  %i.ci = shl nuw nsw i64 %i.cg, 4
  %i.cj = load i64, ptr %i.an, align 8, !alias.scope !1077, !noalias !1078, !noundef !5
  %i.ck = mul i64 %i.cj, 20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !1077, !noalias !1078, !noundef !5 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 2305843009213693952
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !1077, !noalias !1078, !noundef !5 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 2305843009213693952
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !1077, !noalias !1078, !noundef !5 ; 2 uses
  %i.ct = icmp ult i64 %i.cs, 2305843009213693952
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !1077, !noalias !1078, !noundef !5 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 2305843009213693952
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.ae, align 8, !range !7, !alias.scope !1077, !noalias !1078, !noundef !5
  %i.cy = load i64, ptr %i.aa, align 8, !range !7, !alias.scope !1077, !noalias !1078, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 328 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !1077, !noalias !1078, !noundef !5
  %i.db = add nuw nsw i64 %i.cd, %i.ca
  %i.dc = add nuw nsw i64 %i.db, %i.cm
  %i.dd = add nuw nsw i64 %i.dc, %i.cp
  %i.de = add nuw i64 %i.dd, %i.cs
  %i.df = add nuw i64 %i.de, %i.cv
  %reass.add.i.i.i.i.i = add i64 %i.df, %i.cx
  %reass.mul.i.i.i.i.i = shl i64 %reass.add.i.i.i.i.i, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 696 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !1078, !noundef !5
  %i.di = and i64 %i.dh, 63
  %i.dj = shl i64 4, %i.di
  %i.dk = add i64 %i.bx, 36
  %i.dl = add i64 %i.dk, %i.ci
  %i.dm = add i64 %i.dl, %i.ck
  %i.dn = add i64 %i.dm, %i.cy
  %i.do = add i64 %i.dn, %i.da
  %i.dp = add i64 %i.do, %reass.mul.i.i.i.i.i
  %i.dq = add i64 %i.dp, %i.dj
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 704
  %i.ds = load i64, ptr %i.dr, align 16, !noalias !1078, !noundef !5
  %.not68.i.i.i = icmp ugt i64 %i.dq, %i.ds
  br i1 %.not68.i.i.i, label %bb.q, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i

.body.thread61.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aq, %bb.ai, %bb.ag, %.invoke.i.i.i, %bb.ae, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.du = load i64, ptr %i.dt, align 16, !range !10, !noalias !1079, !noundef !5
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.x, %bb.s, %bb.q
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i unwind label %.body.thread61.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1080, !inline_history !0

._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load i64, ptr %i.bz, align 8, !noalias !1081
  br label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !1079
  %i.dy = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !1079, !noundef !5
  %.not14.i.i.i.i = icmp ult i64 %i.dz, %i.dx
  br i1 %.not14.i.i.i.i, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.eb = load i64, ptr %i.ea, align 16, !range !10, !noalias !1079, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !1079
  %i.ee = icmp eq i64 %i.eb, 1
  br i1 %i.ee, label %bb.u, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !1082, !noalias !1079, !noundef !5
  %i.eh = load i64, ptr %i.z, align 8, !range !17, !alias.scope !1082, !noalias !1079, !noundef !5
  %i.ei = trunc nuw i64 %i.eh to i1
  br i1 %i.ei, label %bb.v, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.ej, align 8, !alias.scope !1083, !noalias !1079, !noundef !5 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val5.i.i.i.i.i.i = load i64, ptr %i.ek, align 8, !alias.scope !1083, !noalias !1079, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  %4 = sub nuw i64 %.val5.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.el = sub nuw i64 %.val.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.el, i64 %4
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.v ], [ 0, %bb.u ]
  %i.em = add i64 %.sroa.02.0.i.i.i.i.i.i, %i.eg
  %i.en = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ed, i64 %i.cg) ; 2 uses
  %i.eo = extractvalue { i64, i1 } %i.en, 0
  %i.ep = extractvalue { i64, i1 } %i.en, 1
  br i1 %i.ep, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i
  %.sroa.013.0.i.i.i.i = phi i64 [ -1, %bb.w ], [ %i.eo, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i ]
  %i.eq = icmp ult i64 %i.em, %.sroa.013.0.i.i.i.i
  br i1 %i.eq, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i, label %bb.r

_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i: ; preds = %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i, %bb.p
  %i.er = phi i64 [ %.pre.i.i.i, %._RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i ], [ %i.ca, %bb.p ] ; 3 uses
  %i.es = icmp ult i64 %i.er, 2305843009213693952
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp samesign ugt i64 %i.er, 134217727
  br i1 %i.et, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i.i: ; preds = %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ev = load i64, ptr %i.eu, align 16, !range !10, !noalias !1084, !noundef !5
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !1084
  %i.ez = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !1084, !noundef !5
  %.not14.i.i.i.i.i = icmp ult i64 %i.fa, %i.ey
  br i1 %.not14.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.fc = load i64, ptr %i.fb, align 16, !range !10, !noalias !1084, !noundef !5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1084
  %i.ff = icmp eq i64 %i.fc, 1
  br i1 %i.ff, label %bb.aa, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !1085, !noalias !1084, !noundef !5
  %i.fi = load i64, ptr %i.z, align 8, !range !17, !alias.scope !1085, !noalias !1084, !noundef !5
  %i.fj = trunc nuw i64 %i.fi to i1
  br i1 %i.fj, label %bb.ab, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i32.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.fk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val.i.i.i34.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !1086, !noalias !1084, !noundef !5 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val5.i.i.i35.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !1086, !noalias !1084, !noundef !5 ; 3 uses
  %.not.i.i.i.i36.i.i.i = icmp ugt i64 %.val.i.i.i34.i.i.i, %.val5.i.i.i35.i.i.i
  %5 = sub nuw i64 %.val5.i.i.i35.i.i.i, %.val.i.i.i34.i.i.i
  %i.fm = sub nuw i64 %.val.i.i.i34.i.i.i, %.val5.i.i.i35.i.i.i
  %.sroa.0.0.i.i.i.i37.i.i.i = select i1 %.not.i.i.i.i36.i.i.i, i64 %i.fm, i64 %5
  br label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i32.i.i.i

_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i32.i.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.02.0.i.i.i33.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i37.i.i.i, %bb.ab ], [ 0, %bb.aa ]
  %i.fn = add i64 %.sroa.02.0.i.i.i33.i.i.i, %i.fh
  %i.fo = load i64, ptr %i.cf, align 8, !noalias !1084, !noundef !5 ; 2 uses
  %i.fp = icmp ult i64 %i.fo, 576460752303423488
  call void @llvm.assume(i1 %i.fp)
  %i.fq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fe, i64 %i.fo) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 0
  %i.fs = extractvalue { i64, i1 } %i.fq, 1
  br i1 %i.fs, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i32.i.i.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i32.i.i.i
  %.sroa.013.0.i.i.i.i.i = phi i64 [ -1, %bb.ac ], [ %i.fr, %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i32.i.i.i ]
  %i.ft = icmp ult i64 %i.fn, %.sroa.013.0.i.i.i.i.i
  br i1 %i.ft, label %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit5.i.i.i.i
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc38.i.i.i unwind label %.body.thread61.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1080, !inline_history !1

.noexc38.i.i.i:                                   ; preds = %bb.ae
  %i.fu = load i64, ptr %i.bz, align 8, !noalias !1081, !noundef !5 ; 4 uses
  %i.fv = icmp ult i64 %i.fu, 2305843009213693952
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ugt i64 %i.fu, 134217727
  br i1 %i.fw, label %bb.af, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i

bb.af:                                            ; preds = %.noexc38.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1087
  store i64 %i.fu, ptr %i.f, align 8, !noalias !1087
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.am, %bb.al, %bb.af
  %i.fx = phi ptr [ %i.f, %bb.af ], [ %i.e, %bb.al ], [ %i.d, %bb.am ]
  %i.fy = phi ptr [ @59, %bb.af ], [ @73, %bb.al ], [ @74, %bb.am ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy) #26
          to label %.cont.i.i.i unwind label %.body.thread61.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1078, !inline_history !1

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i: ; preds = %.noexc38.i.i.i, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i
  %.sroa.3.0.i.in.i.i.i = phi i64 [ %i.er, %_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i ], [ %i.fu, %.noexc38.i.i.i ]
  %i.fz = load i64, ptr %i.by, align 8, !noalias !1076, !noundef !5
  %.not.i9.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i9.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.ah unwind label %.body.thread61.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1078

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i
  %i.ga = zext nneg i8 %..i to i32
  %i.gb = shl nuw nsw i32 %i.ga, 28
  %.sroa.3.0.i.i.i.i = trunc nuw nsw i64 %.sroa.3.0.i.in.i.i.i to i32
  %.sroa.0.0.i40.i.i.i = or disjoint i32 %i.gb, %.sroa.3.0.i.i.i.i
  %i.gc = load ptr, ptr %i.g, align 8, !noalias !1076, !nonnull !5, !noundef !5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i8, ptr %i.gd, align 8, !noalias !1078, !noundef !5
  %i.gf = and i8 %i.ge, 1
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 27
  %spec.select.i.i.i = or disjoint i32 %i.gh, %.sroa.0.0.i40.i.i.i ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.gj = load i64, ptr %i.dg, align 8, !noalias !1078, !noundef !5
  %i.gk = and i64 %i.gj, 63
  %i.gl = shl nuw i64 1, %i.gk
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB20_7sources6repeat6RepeatBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gi, i64 noundef %i.gl, i32 noundef -2147483648)
          to label %bb.aj unwind label %.body.thread61.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1078

bb.aj:                                            ; preds = %bb.ai
  %i.gm = getelementptr inbounds nuw i8, ptr %i.o, i64 656 ; 3 uses
  %i.gn = load i128, ptr %i.gm, align 1
  %i.go = getelementptr i8, ptr %i.gm, i64 16
  %i.gp = load i128, ptr %i.go, align 1
  %i.gq = or i128 %i.gn, %i.gp
  %i.gr = icmp ne i128 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gu = load i64, ptr %i.dg, align 8, !noalias !1088, !noundef !5
  %i.gv = and i64 %i.gu, 63                       ; 4 uses
  %i.gw = icmp samesign ugt i64 %i.gv, 26
  br i1 %i.gw, label %bb.al, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gx = shl nuw i64 1, %i.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1089
  store i64 %i.gx, ptr %i.e, align 8, !noalias !1089
  br label %.invoke.i.i.i

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i: ; preds = %bb.ak
  %i.gy = icmp eq i64 %i.gv, 26
  br i1 %i.gy, label %bb.am, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i.i

bb.am:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1090
  store i64 134217728, ptr %i.d, align 8, !noalias !1090
  br label %.invoke.i.i.i

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i: ; preds = %bb.ap, %bb.an, %bb.ao, %bb.aj
  %i.gz = load i64, ptr %i.by, align 8, !noalias !1076, !noundef !5
  %i.ha = load i64, ptr %i.cz, align 8, !noalias !1078, !noundef !5
  %i.hb = add i64 %i.ha, %i.gz
  store i64 %i.hb, ptr %i.cz, align 8, !noalias !1078
  %i.hc = load ptr, ptr %i.g, align 8, !noalias !1076, !nonnull !5, !noundef !5
  %i.hd = atomicrmw add ptr %i.hc, i64 1 monotonic, align 8, !noalias !1078
  %i.he = icmp slt i64 %i.hd, 0
  br i1 %i.he, label %bb.aw, label %bb.ar

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i.i: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i
  %i.hf = shl nuw nsw i64 2, %i.gv
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = or disjoint i32 %i.hg, 536870912
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i.i
  %.sroa.456.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i.i ], [ %i.hj, %bb.aq ] ; 2 uses
  %exitcond.not.i.i.i.i82 = icmp eq i64 %.sroa.456.0.i.i.i, 256
  br i1 %exitcond.not.i.i.i.i82, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i, label %.lr.ph

bb.ao:                                            ; preds = %.lr.ph
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hj, 256
  br i1 %exitcond.not.i.i.i.i, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %bb.ao
  %.sroa.456.1.i.i.i83 = phi i64 [ %i.hj, %bb.ao ], [ %.sroa.456.0.i.i.i, %bb.an ] ; 5 uses
  %i.hi = trunc nuw i64 %.sroa.456.1.i.i.i83 to i8
  %i.hj = add nuw nsw i64 %.sroa.456.1.i.i.i83, 1 ; 3 uses
  %.lobit.i.i.i.i = lshr i64 %.sroa.456.1.i.i.i83, 7
  %i.hk = and i8 %i.hi, 127
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %.lobit.i.i.i.i
  %i.hm = load i128, ptr %i.hl, align 16, !noalias !1091, !noundef !5
  %i.hn = zext nneg i8 %i.hk to i128
  %i.ho = shl nuw i128 1, %i.hn
  %i.hp = and i128 %i.hm, %i.ho
  %.not.i.i.i.i = icmp eq i128 %i.hp, 0
  br i1 %.not.i.i.i.i, label %bb.ao, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  %i.hq = icmp ult i64 %.sroa.456.1.i.i.i83, 256
  br i1 %i.hq, label %bb.aq, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hr = trunc nuw nsw i64 %.sroa.456.1.i.i.i83 to i32
  %.sroa.417.0.insert.shift.i.i.i = shl nuw nsw i32 %i.hr, 8
  invoke fastcc void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_4Lazy14set_transition(ptr nonnull %i.o, ptr nonnull %i.z, i32 noundef %spec.select.i.i.i, i32 %.sroa.417.0.insert.shift.i.i.i, i32 noundef %i.hh)
          to label %bb.an unwind label %.body.thread61.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1078

bb.ar:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.ht = load ptr, ptr %i.g, align 8, !noalias !1076, !nonnull !5, !noundef !5 ; 3 uses
  %i.hu = load i64, ptr %i.by, align 8, !noalias !1076, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1076
  store ptr %i.ht, ptr %i.c, align 8, !noalias !1093
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !noalias !1093
  %i.hw = load i64, ptr %i.cf, align 8, !alias.scope !1092, !noalias !1078, !noundef !5 ; 3 uses
  %i.hx = load i64, ptr %i.hs, align 8, !range !7, !alias.scope !1092, !noalias !1078, !noundef !5
  %i.hy = icmp eq i64 %i.hw, %i.hx
  br i1 %i.hy, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %bb.ax unwind label %bb.at, !noalias !1078

bb.at:                                            ; preds = %bb.as
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = atomicrmw add ptr %i.ht, i64 -1 release, align 8, !noalias !1094
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.au, label %.body.thread.i.i.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.body.thread.i.i.i unwind label %bb.av, !noalias !1078

bb.av:                                            ; preds = %bb.au
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1078
  unreachable

bb.aw:                                            ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i
  call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %i.id = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !1092, !noalias !1078, !nonnull !5, !noundef !5
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.hw ; 2 uses
  store ptr %i.ht, ptr %i.if, align 8, !noalias !1078
end_hunk_3
begin_hunk_4_@llvm.umul.with.overflow.i64
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util11determinize4next(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext, ptr noalias noundef align 8 dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i32, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr dead_on_unwind noalias noundef writable sret([448 x i8]) align 8 captures(none) dereferenceable(448)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler6syntax(ptr noalias noundef align 8 dereferenceable(448), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire13try_read_u128(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 16 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10TransitionE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextDupeE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateE7reserveBL_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6resizeBK_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10TransitionENCNvXs3_B39_NtB39_5StateNtNtB21_3fmt5Debug3fmt0EE9from_iterB3f_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs98D8VPWzHuM_14regex_automata(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtBN_5clone5Clone5cloneCs98D8VPWzHuM_14regex_automata(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterENtB6_5Debug3fmtBY_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionjENtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9MatchKindNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRbNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs98D8VPWzHuM_14regex_automata4util6escapeNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_set(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB4_3NFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_12StartByteMapNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRuNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionIBx_jEENtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map16Utf8BoundedEntryENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCs4NRVxsYgnAr_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs98D8VPWzHuM_14regex_automata(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { noreturn }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 -2, i64 -9223372036854775801}
!9 = !{i8 0, i8 3}
!10 = !{i64 0, i64 3}
!11 = !{i8 -1, i8 3}
!12 = !{i8 0, i8 2}
!13 = !{i64 8}
!14 = !{i32 0, i32 3}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 4000000, i32 4001}
!17 = !{i64 0, i64 2}
!18 = !{i64 16}
!19 = !{i128 0, i128 2}
!20 = distinct !{!20, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterE8push_mutBM_"}
!21 = distinct !{!21, !20, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterE8push_mutBM_: argument 0"}
!22 = distinct !{!22, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeE8push_mutCs98D8VPWzHuM_14regex_automata"}
!23 = distinct !{!23, !22, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeE8push_mutCs98D8VPWzHuM_14regex_automata: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB7_8Compiler15c_unicode_class0Bd_"}
!25 = distinct !{!25, !24, !"_RNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB7_8Compiler15c_unicode_class0Bd_: argument 1"}
!26 = distinct !{!26, !24, !"_RNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB7_8Compiler15c_unicode_class0Bd_: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterE8push_mutBM_"}
!28 = distinct !{!28, !27, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterE8push_mutBM_: argument 0"}
!29 = !{!21}
!30 = !{!23}
!31 = !{!26, !25}
!32 = !{!28}
!33 = distinct !{!33, i1 true, !"_RNvXsd_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8CompilerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!34 = distinct !{!34, !33, !"_RNvXsd_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8CompilerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!35 = distinct !{!35, i1 true, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_"}
!36 = distinct !{!36, !35, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_: argument 0"}
!37 = distinct !{!37, i1 true, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB5_7BuilderNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!38 = distinct !{!38, !37, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB5_7BuilderNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!39 = distinct !{!39, !37, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB5_7BuilderNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!40 = distinct !{!40, i1 true, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateENtNtB7_5clone5Clone5cloneBR_"}
!41 = distinct !{!41, !40, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateENtNtB7_5clone5Clone5cloneBR_: argument 0"}
!42 = distinct !{!42, i1 true, !"_RNvXsk_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_9Utf8StateNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!43 = distinct !{!43, !42, !"_RNvXsk_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_9Utf8StateNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!44 = distinct !{!44, !42, !"_RNvXsk_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_9Utf8StateNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!45 = distinct !{!45, i1 true, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieENtNtB7_5clone5Clone5cloneBR_"}
!46 = distinct !{!46, !45, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieENtNtB7_5clone5Clone5cloneBR_: argument 0"}
!47 = distinct !{!47, i1 true, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_9RangeTrieNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!48 = distinct !{!48, !47, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_9RangeTrieNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!49 = distinct !{!49, i1 true, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterEENtNtB7_5clone5Clone5cloneB1n_"}
!50 = distinct !{!50, !49, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterEENtNtB7_5clone5Clone5cloneB1n_: argument 0"}
!51 = distinct !{!51, i1 true, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEENtNtB7_5clone5Clone5cloneCs98D8VPWzHuM_14regex_automata"}
!52 = distinct !{!52, !51, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEENtNtB7_5clone5Clone5cloneCs98D8VPWzHuM_14regex_automata: argument 0"}
!53 = distinct !{!53, i1 true, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map13Utf8SuffixMapENtNtB7_5clone5Clone5cloneBR_"}
!54 = distinct !{!54, !53, !"_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map13Utf8SuffixMapENtNtB7_5clone5Clone5cloneBR_: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3mapNtB5_13Utf8SuffixMapNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!56 = distinct !{!56, !55, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3mapNtB5_13Utf8SuffixMapNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!57 = distinct !{!57, !55, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3mapNtB5_13Utf8SuffixMapNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!58 = distinct !{!58, i1 true, !"_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB2_6Config14which_captures"}
!59 = distinct !{!59, !58, !"_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB2_6Config14which_captures: argument 1"}
!60 = distinct !{!60, !58, !"_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB2_6Config14which_captures: argument 0"}
!61 = distinct !{!61, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_"}
!62 = distinct !{!62, !61, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_: argument 0"}
!63 = distinct !{!63, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerEEB1g_"}
!64 = distinct !{!64, !63, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerEEB1g_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_"}
!66 = distinct !{!66, !65, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_: argument 0"}
!67 = !{!34}
!68 = !{!36}
!69 = !{!36, !34}
!70 = !{!38}
!71 = !{!39, !38, !36, !34}
!72 = !{!39, !36, !34}
!73 = !{!41}
!74 = !{!41, !34}
!75 = !{!43}
!76 = !{!44, !43, !41, !34}
!77 = !{!44, !41, !34}
!78 = !{!46}
!79 = !{!46, !34}
!80 = !{!48, !46, !34}
!81 = !{!50}
!82 = !{!50, !48, !46, !34}
!83 = !{!52}
!84 = !{!52, !48, !46, !34}
!85 = !{!54, !34}
!86 = !{!56}
!87 = !{!57}
!88 = !{!60, !59}
!89 = !{!66, !64, !62}
!90 = distinct !{!90, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_"}
!91 = distinct !{!91, !90, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_: argument 0"}
!92 = distinct !{!92, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!93 = distinct !{!93, !92, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!94 = distinct !{!94, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!95 = distinct !{!95, !94, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!96 = distinct !{!96, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!97 = distinct !{!97, !96, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!98 = !{!91}
!99 = !{!93}
!100 = !{!95}
!101 = !{!97}
!102 = !{!97, !95, !93, !91}
!103 = distinct !{!103, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverEBH_"}
!104 = distinct !{!104, !103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverEBH_: argument 0"}
!105 = distinct !{!105, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBJ_"}
!106 = distinct !{!106, !105, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBJ_: argument 0"}
!107 = distinct !{!107, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcShEECs98D8VPWzHuM_14regex_automata"}
!108 = distinct !{!108, !107, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcShEECs98D8VPWzHuM_14regex_automata: argument 0"}
!109 = distinct !{!109, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!110 = distinct !{!110, !109, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!111 = distinct !{!111, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverEBH_"}
!112 = distinct !{!112, !111, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverEBH_: argument 0"}
!113 = distinct !{!113, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBJ_"}
!114 = distinct !{!114, !113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateEBJ_: argument 0"}
!115 = distinct !{!115, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcShEECs98D8VPWzHuM_14regex_automata"}
!116 = distinct !{!116, !115, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcShEECs98D8VPWzHuM_14regex_automata: argument 0"}
!117 = distinct !{!117, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!118 = distinct !{!118, !117, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!119 = !{!104}
!120 = !{!106}
!121 = !{!108}
!122 = !{!110}
!123 = !{!110, !108, !106, !104}
!124 = !{!112}
!125 = !{!114}
!126 = !{!116}
!127 = !{!118}
!128 = !{!118, !116, !114, !112}
!129 = distinct !{!129, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEEB17_"}
!130 = distinct !{!130, !129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEEB17_: argument 0"}
!131 = distinct !{!131, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_"}
!132 = distinct !{!132, !131, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_: argument 0"}
!133 = distinct !{!133, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!134 = distinct !{!134, !133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!135 = distinct !{!135, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!136 = distinct !{!136, !135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!137 = distinct !{!137, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!138 = distinct !{!138, !137, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!139 = !{!130}
!140 = !{!132}
!141 = !{!134}
!142 = !{!136}
!143 = !{!138}
!144 = !{!138, !136, !134, !132, !130}
!145 = distinct !{!145, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa6ConfigEBH_"}
!146 = distinct !{!146, !145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa6ConfigEBH_: argument 0"}
!147 = distinct !{!147, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEEB17_"}
!148 = distinct !{!148, !147, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEEB17_: argument 0"}
!149 = distinct !{!149, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_"}
!150 = distinct !{!150, !149, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEEB13_: argument 0"}
!151 = distinct !{!151, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_"}
!152 = distinct !{!152, !151, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter9PrefilterEBH_: argument 0"}
!153 = distinct !{!153, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_"}
!154 = distinct !{!154, !153, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!155 = distinct !{!155, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!156 = distinct !{!156, !155, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!157 = !{!146}
!158 = !{!148}
!159 = !{!148, !146}
!160 = !{!150}
!161 = !{!152}
!162 = !{!154}
!163 = !{!156}
!164 = !{!156, !154, !152, !150, !148, !146}
!165 = distinct !{!165, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerEEB1g_"}
!166 = distinct !{!166, !165, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerEEB1g_: argument 0"}
end_hunk_4
