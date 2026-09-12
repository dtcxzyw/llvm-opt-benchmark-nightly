Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.02?download=true
inline.NumInlined: 351
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN14regex_automata3dfa5dense28DFA$LT$$RF$$u5b$u32$u5d$$GT$20from_bytes_unchecked17h91319caa791ae8ceE":bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.l, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.q, align 8
  %.sroa.3192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.3192.0..sroa_idx, align 16
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %.sroa.4193.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.ax

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = sub nuw i64 %2, %i.l
  call void @_ZN14regex_automata4util4wire10read_label17hb052979b6f8e195eE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 29)
  %i.s = load i32, ptr %i.k, align 8, !range !18, !noundef !3 ; 2 uses
  %.not382 = icmp eq i32 %i.s, 10
  br i1 %.not382, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4200.0.copyload = load i32, ptr %.sroa.4200.0..sroa_idx, align 4
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5201.0.copyload = load i64, ptr %.sroa.5201.0..sroa_idx, align 8
  %.sroa.6202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4206.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6202.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.t, align 8
  %.sroa.2204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.4200.0.copyload, ptr %.sroa.2204.0..sroa_idx, align 4
  %.sroa.3205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5201.0.copyload, ptr %.sroa.3205.0..sroa_idx, align 16
  store i64 2, ptr %0, align 16
  br label %bb.ax

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.w = add i64 %i.v, %i.l                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.x = icmp ugt i64 %i.w, %2
  br i1 %i.x, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.y = sub nuw i64 %2, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  call void @_ZN14regex_automata4util4wire21read_endianness_check17h9507496fc020a503E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.y)
  %i.aa = load i32, ptr %i.j, align 8, !range !18, !noundef !3 ; 2 uses
  %.not384 = icmp eq i32 %i.aa, 10
  br i1 %.not384, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.w, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.4212.0.copyload = load i32, ptr %.sroa.4212.0..sroa_idx, align 4
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5213.0.copyload = load i64, ptr %.sroa.5213.0..sroa_idx, align 8
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4218.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6214.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aa, ptr %i.ab, align 8
  %.sroa.2216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.4212.0.copyload, ptr %.sroa.2216.0..sroa_idx, align 4
  %.sroa.3217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5213.0.copyload, ptr %.sroa.3217.0..sroa_idx, align 16
  store i64 2, ptr %0, align 16
  br label %bb.ax

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ae = add i64 %i.ad, %i.w                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.af = icmp ugt i64 %i.ae, %2
  br i1 %i.af, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  %i.ag = sub nuw i64 %2, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  call void @_ZN14regex_automata4util4wire12read_version17h8ba18a49bfac029cE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ah, i64 noundef %i.ag, i32 noundef 2)
  %i.ai = load i32, ptr %i.i, align 8, !range !18, !noundef !3 ; 2 uses
  %.not386 = icmp eq i32 %i.ai, 10
  br i1 %.not386, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.ae, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.4224.0.copyload = load i32, ptr %.sroa.4224.0..sroa_idx, align 4
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5225.0.copyload = load i64, ptr %.sroa.5225.0..sroa_idx, align 8
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4230.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6226.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ai, ptr %i.aj, align 8
  %.sroa.2228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.4224.0.copyload, ptr %.sroa.2228.0..sroa_idx, align 4
  %.sroa.3229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5225.0.copyload, ptr %.sroa.3229.0..sroa_idx, align 16
  store i64 2, ptr %0, align 16
  br label %bb.ax

bb.o:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.am = add i64 %i.al, %i.ae                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.an = icmp ugt i64 %i.am, %2
  br i1 %i.an, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  %i.ao = sub nuw i64 %2, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  call void @_ZN14regex_automata4util4wire12try_read_u3217h1b4b6a8a58fd11a8E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %i.ao, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @60, i64 noundef 12)
  %i.aq = load i32, ptr %i.h, align 8, !range !18, !noundef !3 ; 2 uses
  %.not388 = icmp eq i32 %i.aq, 10
  br i1 %.not388, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.am, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #15
  unreachable

bb.r:                                             ; preds = %bb.p
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.6239.0.copyload = load i32, ptr %.sroa.6239.0..sroa_idx, align 4
  %.sroa.7240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = load <2 x i32>, ptr %.sroa.4237.0..sroa_idx, align 4
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load <2 x i64>, ptr %.sroa.7240.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 %i.aq, ptr %i.ar, align 8
  store <2 x i32> %i.as, ptr %.sroa.2243.0..sroa_idx, align 4
  store i32 %.sroa.6239.0.copyload, ptr %.sroa.4245.0..sroa_idx, align 4
  store <2 x i64> %i.at, ptr %.sroa.5246.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.ax

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.au = add i64 %i.am, 4                        ; 5 uses
  %i.av = icmp ugt i64 %i.au, %2
  br i1 %i.av, label %bb.u, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.aw = sub nuw i64 %2, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  call void @_ZN14regex_automata4util4wire12try_read_u3217h1b4b6a8a58fd11a8E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @155, i64 noundef 11), !noalias !172
  %i.ay = load i32, ptr %i.a, align 8, !range !18, !noalias !171, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.ay, 10
  br i1 %.not.i, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.au, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #15
  unreachable

bb.v:                                             ; preds = %bb.t
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.530.0.copyload.i = load i32, ptr %.sroa.530.0..sroa_idx.i, align 4, !noalias !171
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !171
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load <2 x i64>, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  store i32 %i.ay, ptr %i.az, align 8
  store i32 %.sroa.530.0.copyload.i, ptr %.sroa.2264.0..sroa_idx, align 4
  store <2 x i64> %i.ba, ptr %.sroa.3265.0..sroa_idx, align 16
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.5267.0..sroa_idx, align 16
  store i64 2, ptr %0, align 16
  br label %bb.ax

bb.w:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !noalias !171, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noalias !171, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  %3 = trunc i32 %i.bc to i8                      ; 3 uses
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 1
  %6 = lshr i8 %3, 2
  %7 = and i8 %6, 1
  %.sroa.6.9.insert.ext = zext nneg i8 %5 to i64
  %.sroa.6.9.insert.shift = shl nuw nsw i64 %.sroa.6.9.insert.ext, 8
  %8 = and i8 %3, 1
  %.sroa.6.9.insert.mask = zext nneg i8 %8 to i64
  %.sroa.6.9.insert.insert = or disjoint i64 %.sroa.6.9.insert.shift, %.sroa.6.9.insert.mask
  %.sroa.6.10.insert.ext = zext nneg i8 %7 to i64
  %.sroa.6.10.insert.shift = shl nuw nsw i64 %.sroa.6.10.insert.ext, 16
  %.sroa.6.10.insert.insert = or disjoint i64 %.sroa.6.9.insert.insert, %.sroa.6.10.insert.shift
  %.sroa.794.sroa.5.4.extract.trunc = trunc nuw nsw i64 %.sroa.6.10.insert.insert to i24
  %i.bf = add i64 %i.be, %i.au                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7108.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bg = icmp ugt i64 %i.bf, %2
  br i1 %i.bg, label %bb.y, label %bb.x, !prof !9

bb.x:                                             ; preds = %bb.w
  %i.bh = sub nuw i64 %2, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  call fastcc void @"_ZN14regex_automata3dfa5dense40TransitionTable$LT$$RF$$u5b$u32$u5d$$GT$20from_bytes_unchecked17hc188573348a2196dE"(ptr noalias noundef align 8 captures(address) dereferenceable(288) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bi, i64 noundef %i.bh)
  %i.bj = load ptr, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0338.0.copyload = load i64, ptr %i.bl, align 8 ; 3 uses
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7108.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4339.0..sroa_idx, i64 24, i1 false)
  br i1 %i.bk, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.bf, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #15
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.2335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2335.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7108.sroa.7, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0338.0.copyload, ptr %i.bm, align 8
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7108.sroa.7)
  br label %bb.ax

bb.aa:                                            ; preds = %bb.x
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5327.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5327, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.5327.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.5270.0..sroa_idx, i64 232, i1 false)
  %.sroa.5270.sroa.4.0..sroa.5270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %.sroa.5270.sroa.4.0.copyload = load i64, ptr %.sroa.5270.sroa.4.0..sroa.5270.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %.sroa.6271.0.copyload = load i64, ptr %.sroa.6271.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5327, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7108.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7108.sroa.7)
  %i.bn = add i64 %.sroa.6271.0.copyload, %i.bf   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bo = icmp ugt i64 %i.bn, %2
  br i1 %i.bo, label %bb.ac, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %bb.aa
  %i.bp = sub nuw i64 %2, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  call fastcc void @"_ZN14regex_automata3dfa5dense35StartTable$LT$$RF$$u5b$u32$u5d$$GT$20from_bytes_unchecked17h8d014fe95d61601bE"(ptr noalias noundef align 8 captures(address) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bq, i64 noundef %i.bp)
  %i.br = load i64, ptr %i.f, align 8, !range !15, !noundef !3 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7115, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false)
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.bn, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #15
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7115, i64 32, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7115)
  br label %bb.ax

bb.ae:                                            ; preds = %bb.ab
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.3342, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5274.0..sroa_idx, i64 280, i1 false)
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %.sroa.6275.0.copyload = load i64, ptr %.sroa.6275.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2341, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7115, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7115)
  %i.bv = add i64 %.sroa.6275.0.copyload, %i.bn   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bw = icmp ugt i64 %i.bv, %2
  br i1 %i.bw, label %bb.ag, label %bb.af, !prof !9

bb.af:                                            ; preds = %bb.ae
  %i.bx = sub nuw i64 %2, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  call fastcc void @"_ZN14regex_automata3dfa5dense36MatchStates$LT$$RF$$u5b$u32$u5d$$GT$20from_bytes_unchecked17h2e202cf5bb24cd2bE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.by, i64 noundef %i.bx)
  %i.bz = load ptr, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7122, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false)
  br i1 %i.ca, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.bv, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #15
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7122, i64 32, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7122)
  br label %bb.ax

bb.ai:                                            ; preds = %bb.af
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5278.0.copyload = load i64, ptr %.sroa.5278.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2344, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7122, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7122)
  %i.cd = add i64 %.sroa.5278.0.copyload, %i.bv   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6126.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ce = icmp ugt i64 %i.cd, %2
  br i1 %i.ce, label %bb.ak, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.cf = sub nuw i64 %2, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  call void @_ZN14regex_automata3dfa7special7Special10from_bytes17h58dddd2561184366E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cg, i64 noundef %i.cf)
  %i.ch = load i64, ptr %i.d, align 8, !range !19, !noundef !3
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0357.0.copyload = load i32, ptr %i.cj, align 8 ; 3 uses
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6126.sroa.7, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4358.0..sroa_idx, i64 28, i1 false)
  br i1 %i.ci, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.cd, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #15
  unreachable

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.2354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2354.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6126.sroa.7, i64 28, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0357.0.copyload, ptr %i.ck, align 8
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6126.sroa.7)
  br label %bb.ax

bb.am:                                            ; preds = %bb.aj
  %.sroa.4280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.4280.0.copyload = load i64, ptr %.sroa.4280.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3347, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6126.sroa.7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6126.sroa.7)
  %i.cl = add i64 %.sroa.4280.0.copyload, %i.cd   ; 5 uses
  %i.cm = and i64 %.sroa.5270.sroa.4.0.copyload, 63 ; 2 uses
  %i.cn = lshr i64 %.sroa.0338.0.copyload, %i.cm
  %i.co = zext i32 %.sroa.0357.0.copyload to i64
  %i.cp = lshr i64 %i.co, %i.cm
  %.not392.not = icmp ult i64 %i.cp, %i.cn
  br i1 %.not392.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cq, align 8
  %.sroa.3300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %.sroa.3300.0..sroa_idx, align 16
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 55, ptr %.sroa.4301.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.ax

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cr = icmp ugt i64 %i.cl, %2
  br i1 %i.cr, label %bb.aq, label %bb.ap, !prof !9

bb.ap:                                            ; preds = %bb.ao
  %i.cs = sub nuw i64 %2, %i.cl
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  call void @"_ZN14regex_automata3dfa5accel31Accels$LT$$RF$$u5b$u32$u5d$$GT$20from_bytes_unchecked17he2851e9bc2efe886E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ct, i64 noundef %i.cs)
  %i.cu = load i32, ptr %i.c, align 8, !range !18, !noundef !3 ; 2 uses
  %.not394 = icmp eq i32 %i.cu, 10
  br i1 %.not394, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.cl, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #15
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4312.0.copyload = load i32, ptr %.sroa.4312.0..sroa_idx, align 4
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5313.0.copyload = load ptr, ptr %.sroa.5313.0..sroa_idx, align 8
  %.sroa.6314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load <2 x i64>, ptr %.sroa.6314.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.cu, ptr %i.cv, align 8
  store i32 %.sroa.4312.0.copyload, ptr %.sroa.2317.0..sroa_idx, align 4
end_hunk_0
begin_hunk_1_@"_ZN14regex_automata3dfa5dense40TransitionTable$LT$$RF$$u5b$u32$u5d$$GT$20from_bytes_unchecked17hc188573348a2196dE":bb.a
bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ah, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @129, ptr %.sroa.5183.0..sroa_idx, align 8
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 41, ptr %.sroa.6184.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

.split280:                                        ; preds = %bb.n
  %i.ai = shl nuw nsw i64 1, %i.r
  %i.aj = zext i8 %.sroa.0164.sroa.4.0.copyload to i64
  %i.ak = add nuw nsw i64 %i.aj, 2
  %i.al = icmp samesign ugt i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split280
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.am, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @128, ptr %.sroa.5193.0..sroa_idx, align 8
  %.sroa.6194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 59, ptr %.sroa.6194.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.r:                                             ; preds = %.split280
  %i.an = shl i64 %i.h, %i.r                      ; 3 uses
  %i.ao = icmp ult i64 %i.an, 4611686018427387904
  %i.ap = shl nuw i64 %i.an, 2                    ; 2 uses
  br i1 %i.ao, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.aq, align 8
  %.sroa.3236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @126 to i64), ptr %.sroa.3236.0..sroa_idx, align 8
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 29, ptr %.sroa.4237.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %.not294.not = icmp ult i64 %i.ac, %i.ap
  br i1 %.not294.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ar, align 8
  %.sroa.3258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @127, ptr %.sroa.3258.0..sroa_idx, align 8
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 16, ptr %.sroa.4259.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.as = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.at = and i64 %i.as, 3
  %.not296 = icmp eq i64 %i.at, 0
  br i1 %.not296, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.au, align 8
  %.sroa.3273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.3273.0..sroa_idx, align 8
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.as, ptr %.sroa.4274.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(255) %.sroa.5131.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.0276, i64 255, i1 false)
  %i.av = add nuw nsw i64 %i.t, %i.j
  %i.aw = add nuw nsw i64 %i.av, %i.ap
  %i.ax = add nuw nsw i64 %i.aw, %.sroa.4165.0.copyload
  store ptr %i.ad, ptr %0, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %.sroa.4130.0..sroa_idx, align 8
  %.sroa.5131.sroa.4.0..sroa.5131.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 271
  store i8 %.sroa.0164.sroa.4.0.copyload, ptr %.sroa.5131.sroa.4.0..sroa.5131.0..sroa_idx.sroa_idx, align 1
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.r, ptr %.sroa.6132.0..sroa_idx, align 8
  %.sroa.7133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.ax, ptr %.sroa.7133.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %bb.o, %bb.p, %bb.q, %bb.s, %bb.u, %bb.w, %bb.j, %bb.x, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN14regex_automata3dfa5dense49TransitionTable$LT$alloc..vec..Vec$LT$u32$GT$$GT$5remap17h026fc773065d3499E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(288) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 279
  %i.b = load i8, ptr %i.a, align 1, !noundef !3
  %i.c = zext i8 %i.b to i64
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !6
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %2, align 8, !nonnull !3, !align !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.d)
  %i.s = add nuw nsw i64 %i.c, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %.sroa.01.018 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.i ] ; 4 uses
  %i.t = add nuw nsw i64 %.sroa.01.018, 1
  %i.u = add nuw nsw i64 %.sroa.01.018, %i.d      ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.018, %i.r
  br i1 %exitcond.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noundef !3
  %i.x = zext i32 %i.w to i64
  %i.y = load ptr, ptr %i.j, align 8, !noalias !391, !nonnull !3, !align !6, !noundef !3
  %i.z = load i64, ptr %i.y, align 8, !noalias !391, !noundef !3
  %i.aa = and i64 %i.z, 63                        ; 2 uses
  %i.ab = lshr i64 %i.x, %i.aa                    ; 3 uses
  %i.ac = load i64, ptr %i.m, align 8, !noalias !391, !noundef !3 ; 2 uses
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.n, align 8, !noalias !391, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = load i32, ptr %i.af, align 4, !noalias !391, !noundef !3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = lshr i64 %i.ah, %i.aa                   ; 3 uses
  %i.aj = load i64, ptr %i.p, align 8, !noalias !391, !noundef !3 ; 2 uses
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ab, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #15, !noalias !391
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ai, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #15, !noalias !391
  unreachable

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.u, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #15
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.q, align 8, !noalias !391, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ai
  %i.an = load i32, ptr %i.am, align 4, !noalias !391, !noundef !3
  store i32 %i.an, ptr %i.v, align 4
  %exitcond32.not = icmp eq i64 %.sroa.01.018, %i.s
  br i1 %exitcond32.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata3dfa5dense5Flags10from_bytes17h1f661ccfb4f61629E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 11), (16, 24)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN14regex_automata4util4wire12try_read_u3217h1b4b6a8a58fd11a8E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @155, i64 noundef 11)
  %i.b = load i32, ptr %i.a, align 8, !range !18, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.b, 10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.732.0.copyload = load i32, ptr %.sroa.732.0..sroa_idx, align 4
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.833.0.copyload = load i64, ptr %.sroa.833.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load <2 x i32>, ptr %.sroa.530.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <2 x i32> %i.c, ptr %.sroa.235.0..sroa_idx, align 4
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.732.0.copyload, ptr %.sroa.437.0..sroa_idx, align 4
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.copyload, ptr %.sroa.639.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = trunc i32 %i.e to i8                     ; 3 uses
  %i.i = and i8 %i.h, 1
  %3 = lshr i8 %i.h, 1
  %i.j = and i8 %3, 1
  %4 = lshr i8 %i.h, 2
  %5 = and i8 %4, 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.i, ptr %6, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.j, ptr %.sroa.420.0..sroa_idx, align 1
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %5, ptr %.sroa.521.0..sroa_idx, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.833.0.copyload.sink = phi i64 [ %i.g, %bb.c ], [ %.sroa.833.0.copyload, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.833.0.copyload.sink, ptr %i.k, align 8
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3dfa5dense6Config4quit17hc4423c7693556305E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %1, i8 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 117
  %i.c = load i8, ptr %i.b, align 1, !range !10, !noundef !3 ; 2 uses
  %.not7 = icmp eq i8 %i.c, 2
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %i.c to i1
  %.not = xor i1 %i.d, true
  %i.e = icmp sgt i8 %2, -1
  %or.cond = or i1 %i.e, %.not
  %brmerge = or i1 %3, %or.cond
  br i1 %brmerge, label %bb.c, label %bb.d, !prof !392

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = load i128, ptr %1, align 16, !range !393, !noundef !3
  %.not8 = icmp eq i128 %i.f, 0
  br i1 %.not8, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @157, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #15
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E"(ptr noalias noundef align 16 dereferenceable(128) %1) #17
          to label %bb.m unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %3, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.0..sroa_idx, i8 0, i64 32, i1 false)
  store i128 1, ptr %1, align 16
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN14regex_automata4util8alphabet7ByteSet6remove17hda57ab0163baa15aE(ptr noalias noundef nonnull align 16 dereferenceable(32) %i.l, i8 noundef %2)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.k, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %1, i64 128, i1 false)
  ret void

bb.k:                                             ; preds = %bb.g
  invoke void @_ZN14regex_automata4util8alphabet7ByteSet3add17ha327b483db45c86cE(ptr noalias noundef nonnull align 16 dereferenceable(32) %i.l, i8 noundef %2)
          to label %bb.j unwind label %bb.e

bb.l:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.m:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN14regex_automata3dfa5dense6Config8get_quit17hffd167ffc5d3bfb3E(ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %.sroa.01.0.copyload = load i128, ptr %0, align 16
  %i.b = trunc nuw i128 %.sroa.01.0.copyload to i1
  br i1 %i.b, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h93bddebf94a86308E.exit"

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  %i.c = call noundef zeroext i1 @_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.a, i8 noundef %1), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h93bddebf94a86308E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h93bddebf94a86308E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3dfa5dense6Config9prefilter17h51f349276c3872fcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !407, !noundef !3 ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.e = icmp eq i8 %i.c, 2
  br i1 %i.e, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.f = load ptr, ptr %i.a, align 16, !alias.scope !412, !nonnull !3, !noundef !3
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !412
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E"(ptr noalias noundef align 16 dereferenceable(128) %1) #17
          to label %bb.i unwind label %bb.h

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit": ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 118 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !10, !noundef !3
  %.not = icmp eq i8 %i.k, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %1, i64 128, i1 false)
  ret void

bb.g:                                             ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit"
  %i.l = load i8, ptr %i.b, align 8, !range !20, !noundef !3
  %.not4 = icmp eq i8 %i.l, 3
  %. = select i1 %.not4, ptr @159, ptr %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %., i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !10, !noundef !3
  %.not5 = icmp ne i8 %i.n, 2
  %i.o = zext i1 %.not5 to i8
  store i8 %i.o, ptr %i.j, align 2
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata3dfa5dense7Builder10build_many17h61aecdd9dc18f2cdE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([800 x i8]) align 16 captures(none) dereferenceable(800) %0, ptr nofree noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [160 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [168 x i8], align 8               ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %i.s = alloca [120 x i8], align 8               ; 16 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h800be8c82c92677eE":bb.a
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$regex_automata..dfa..dense..Flags$u20$as$u20$core..fmt..Debug$GT$3fmt17h856d3ebecb1eb9c4E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(3) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @179, i64 noundef 9, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @180, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 24, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$regex_automata..dfa..dense..State$u20$as$u20$core..fmt..Debug$GT$3fmt17h7aea9b2bb1ba693bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 8 uses
  %i.h = alloca [4 x i8], align 4                 ; 9 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 8388608
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 63
  %i.t = select i1 %i.p, i64 %i.s, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.u, align 8           ; 3 uses
  %.val37 = load ptr, ptr %1, align 8             ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val38, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.sroa.16.sroa.0.sroa.10.sroa.0.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.0 = phi i8 [ 2, %bb.a ], [ %.sroa.16.sroa.0.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.8.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.0 = phi i8 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.27.0 = phi i32 [ undef, %bb.a ], [ %.sroa.27.4, %bb.n ] ; 3 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.a ], [ %.sroa.11.2, %bb.n ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.i, %bb.a ], [ %.sroa.6.2, %bb.n ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.n ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.6.0, %i.l
  br i1 %i.al, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.backedge.i
  %.sroa.16.sroa.0.sroa.10.sroa.0.1 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ] ; 3 uses
  %.sroa.16.sroa.0.sroa.0.1 = phi i8 [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ] ; 4 uses
  %.sroa.16.sroa.10.sroa.8.1 = phi i24 [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.1 = phi i8 [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ] ; 2 uses
  %.sroa.27.1 = phi i32 [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 2 uses
  %i.am = phi i32 [ %i.bb, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 4 uses
  %i.an = phi i64 [ %i.aq, %.backedge.i ], [ %.sroa.11.0, %bb.b ] ; 4 uses
  %i.ao = phi ptr [ %i.ap, %.backedge.i ], [ %.sroa.6.0, %bb.b ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  %i.aq = add i64 %i.an, 1                        ; 5 uses
  %.val7.i.i = load i32, ptr %i.ao, align 4, !noalias !792, !noundef !3 ; 6 uses
  %i.ar = icmp eq i64 %i.aq, %i.k
  br i1 %i.ar, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = icmp ugt i64 %i.an, 255
  br i1 %i.as, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i", !prof !9

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 35, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !792
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i": ; preds = %bb.c
  %.sroa.4.0.insert.ext.i.i.i = trunc nuw nsw i64 %i.an to i32
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i, 8
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"

bb.e:                                             ; preds = %.lr.ph.i
  %i.at = call i32 @_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE(i64 noundef %i.an), !noalias !792
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i": ; preds = %bb.e, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i"
  %.sroa.01.0.i.i.i = phi i32 [ %i.at, %bb.e ], [ %.sroa.4.0.insert.shift.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i" ] ; 5 uses
  %i.au = lshr i32 %.sroa.01.0.i.i.i, 8
  %.sroa.454.0.extract.trunc.i = trunc nuw i32 %i.au to i24 ; 6 uses
  %i.av = and i32 %.sroa.01.0.i.i.i, 255
  %.not.i49 = icmp eq i32 %i.av, 2
  br i1 %.not.i49, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %bb.f

bb.f:                                             ; preds = %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"
  %.not63.i = icmp eq i8 %.sroa.16.sroa.0.sroa.0.1, 2
  br i1 %.not63.i, label %bb.h, label %bb.g

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i": ; preds = %.backedge.i, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i", %bb.b
  %.sroa.16.sroa.0.sroa.10.sroa.0.3 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.3 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.3 = phi i24 [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ], [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.3 = phi i8 [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.27.3 = phi i32 [ %.sroa.27.0, %bb.b ], [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0, %bb.b ], [ %i.aq, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ], [ %i.aq, %.backedge.i ]
  %.sroa.6.1 = phi ptr [ %i.l, %bb.b ], [ %i.l, %.backedge.i ], [ %i.ap, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ]
  %.sroa.16.sroa.0.sroa.10.0.insert.ext75 = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.3 to i64
  %.sroa.16.sroa.0.sroa.10.0.insert.shift76 = shl nuw nsw i64 %.sroa.16.sroa.0.sroa.10.0.insert.ext75, 8
  %.sroa.16.sroa.10.sroa.8.0.insert.ext63 = zext i24 %.sroa.16.sroa.10.sroa.8.3 to i64
  %.sroa.16.sroa.10.sroa.0.0.insert.ext59 = zext i8 %.sroa.16.sroa.10.sroa.0.3 to i64
  %i.aw = shl nuw i64 %.sroa.16.sroa.10.sroa.8.0.insert.ext63, 40
  %i.ax = shl nuw nsw i64 %.sroa.16.sroa.10.sroa.0.0.insert.ext59, 32
  %.sroa.16.sroa.10.0.insert.shift56 = or disjoint i64 %i.ax, %i.aw
  %.sroa.16.sroa.0.0.insert.insert54 = or disjoint i64 %.sroa.16.sroa.10.0.insert.shift56, %.sroa.16.sroa.0.sroa.10.0.insert.shift76
  %.not61.i = icmp eq i8 %.sroa.16.sroa.0.sroa.0.3, 2
  %.not62.i = icmp eq i32 %.sroa.27.3, 0
  %or.cond66.i = select i1 %.not61.i, i1 true, i1 %.not62.i
  %i.ay = zext i8 %.sroa.16.sroa.0.sroa.0.3 to i64
  %.sroa.084.0.insert.ext = select i1 %or.cond66.i, i64 2, i64 %i.ay
  %.sroa.084.0.insert.insert = or disjoint i64 %.sroa.16.sroa.0.0.insert.insert54, %.sroa.084.0.insert.ext
  br label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"

bb.g:                                             ; preds = %bb.f
  %i.az = icmp ne i32 %i.am, %.val7.i.i
  %i.ba = trunc i32 %.sroa.01.0.i.i.i to i1
  %or.cond.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i, label %bb.i, label %.backedge.i

bb.h:                                             ; preds = %bb.f
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc69 = trunc i32 %.sroa.01.0.i.i.i to i8 ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.16.sroa.0.sroa.10.sroa.0.2 = phi i24 [ %.sroa.454.0.extract.trunc.i, %bb.h ], [ %.sroa.454.0.extract.trunc.i, %bb.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc69, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.16.sroa.0.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc69, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.27.2 = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %.sroa.27.1, %bb.g ] ; 2 uses
  %i.bb = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %i.am, %bb.g ]
  %i.bc = icmp eq ptr %i.ap, %i.l
  br i1 %i.bc, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.01.0.i.i.i to i8 ; 4 uses
  %.not64.i = icmp eq i32 %i.am, 0
  br i1 %.not64.i, label %.backedge.i, label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit"

"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit": ; preds = %bb.i
  %.sroa.16.sroa.0.sroa.10.0.insert.ext.le = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.1 to i64
  %.sroa.16.sroa.0.sroa.10.0.insert.shift.le = shl nuw nsw i64 %.sroa.16.sroa.0.sroa.10.0.insert.ext.le, 8
  %.sroa.16.sroa.0.sroa.0.0.insert.ext.le = zext i8 %.sroa.16.sroa.0.sroa.0.1 to i64
  %.sroa.16.sroa.0.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.16.sroa.0.sroa.10.0.insert.shift.le, %.sroa.16.sroa.0.sroa.0.0.insert.ext.le
  %.sroa.16.sroa.10.sroa.8.0.insert.ext.le = zext i24 %.sroa.16.sroa.10.sroa.8.1 to i64
  %.sroa.16.sroa.10.sroa.0.0.insert.ext.le = zext i8 %.sroa.16.sroa.10.sroa.0.1 to i64
  %i.bd = shl nuw i64 %.sroa.16.sroa.10.sroa.8.0.insert.ext.le, 40
  %i.be = shl nuw nsw i64 %.sroa.16.sroa.10.sroa.0.0.insert.ext.le, 32
  %.sroa.16.sroa.10.0.insert.shift.le = or disjoint i64 %i.be, %i.bd
  %.sroa.16.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.16.sroa.10.0.insert.shift.le, %.sroa.16.sroa.0.sroa.0.0.insert.insert.le
  br label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"

"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit": ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit", %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i"
  %.sroa.084.0 = phi i64 [ %.sroa.084.0.insert.insert, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.0.insert.insert.le, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ] ; 4 uses
  %.sroa.16.sroa.0.sroa.10.sroa.0.4 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.454.0.extract.trunc.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.0.sroa.0.4 = phi i8 [ 2, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.10.sroa.8.4 = phi i24 [ %.sroa.16.sroa.10.sroa.8.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.454.0.extract.trunc.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.10.sroa.0.4 = phi i8 [ %.sroa.16.sroa.10.sroa.0.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.1089.0 = phi i32 [ %.sroa.27.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.am, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.27.4 = phi i32 [ %.sroa.27.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.val7.i.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.aq, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.ap, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %i.bf = and i64 %.sroa.084.0, 255
  %.not.i.not.not.not = icmp ne i64 %i.bf, 2      ; 2 uses
  br i1 %.not.i.not.not.not, label %bb.j, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread"

bb.j:                                             ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"
  %i.bg = add i64 %.sroa.0.0, 1
  %.sroa.084.4.extract.shift = lshr i64 %.sroa.084.0, 32 ; 2 uses
  %.sroa.084.4.extract.trunc = trunc nuw i64 %.sroa.084.4.extract.shift to i32
  %.sroa.084.0.extract.trunc = trunc i64 %.sroa.084.0 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.084.0.extract.trunc, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.084.4.extract.trunc, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bh = zext i32 %.sroa.1089.0 to i64
  %storemerge = lshr i64 %i.bh, %i.t
  store i64 %storemerge, ptr %i.f, align 8
  %.not33 = icmp eq i64 %.sroa.0.0, 0
  %i.bi = trunc i64 %.sroa.084.0 to i8
  %i.bj = trunc i64 %.sroa.084.4.extract.shift to i8
  br i1 %.not33, label %bb.k, label %.split

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread": ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit", %.loopexit
  ret i1 %.not.i.not.not.not

bb.k:                                             ; preds = %.split._crit_edge, %bb.j
  %i.bk = phi i8 [ %.pre134, %.split._crit_edge ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bl = phi i8 [ %.pre, %.split._crit_edge ], [ %i.bi, %bb.j ]
  %i.bm = icmp eq i8 %i.bl, %i.bk
  br i1 %i.bm, label %bb.l, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

.split:                                           ; preds = %bb.j
  %i.bn = load ptr, ptr %i.v, align 8, !invariant.load !3, !noalias !793, !nonnull !3
  %i.bo = call noundef zeroext i1 %i.bn(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 2), !noalias !793, !inline_history !29
  br i1 %i.bo, label %.loopexit, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre = load i8, ptr %i.h, align 4, !range !22
  %.pre134 = load i8, ptr %i.g, align 4, !range !22
  br label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.bp = trunc nuw i8 %i.bk to i1
  br i1 %i.bp, label %.split101, label %bb.m

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43: ; preds = %.split101, %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.424.0..sroa_idx, align 8
  store ptr %i.g, ptr %i.aa, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.428.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ab, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.432.0..sroa_idx, align 8
  store ptr @185, ptr %i.c, align 8
  store i64 3, ptr %i.ac, align 8
  store ptr null, ptr %i.ad, align 8
  store ptr %i.b, ptr %i.ae, align 8
  store i64 3, ptr %i.af, align 8
  %i.bq = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bq, label %.loopexit, label %bb.n

.split101:                                        ; preds = %bb.l
  %i.br = load i16, ptr %i.y, align 2, !noundef !3
  %i.bs = load i16, ptr %i.z, align 2, !noundef !3
  %i.bt = icmp eq i16 %i.br, %i.bs
  br i1 %i.bt, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %i.w, align 1, !noundef !3
  %i.bv = load i8, ptr %i.x, align 1, !noundef !3
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48: ; preds = %.split101, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.416.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ag, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.420.0..sroa_idx, align 8
  store ptr @186, ptr %i.e, align 8
  store i64 2, ptr %i.ah, align 8
  store ptr null, ptr %i.ai, align 8
  store ptr %i.d, ptr %i.aj, align 8
  store i64 2, ptr %i.ak, align 8
  %i.bx = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.bx, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

.loopexit:                                        ; preds = %.split, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !26, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE.42", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$regex_automata..dfa..dense..BuildError$u20$as$u20$core..fmt..Debug$GT$3fmt17h53be7675f216f3b2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @194, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$regex_automata..dfa..dense..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17h83625ae712b34767E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !28, !noundef !3
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 -9223372036854775801)
  switch i64 %i.r, label %default.unreachable [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit51
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit56
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit61
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.s, align 8
  %.val35 = load ptr, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val36, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !3, !noalias !796, !nonnull !3
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 1 %.val35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @196, i64 noundef 18), !noalias !796, !inline_history !29
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7e3eea522b74381aE", ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @198, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1, ptr %i.aa, align 8
  %.val33 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @199, ptr %i.l, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.415.0..sroa_idx, align 8
  store ptr @201, ptr %i.m, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ad, align 8
end_hunk_2
