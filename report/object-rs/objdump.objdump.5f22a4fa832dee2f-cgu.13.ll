Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.13?download=true
inline.NumInlined: 116
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsiZvaoMVVkxx_15object_examples7objdump5printNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBP_10StderrLockECs8aoZCP6pRcV_7objdump:bb.a
  store ptr %i.by, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 %i.ca, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store i8 %i.cc, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.thread272, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bd)
          to label %bb.h unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %bb.g
  %i.cq = load i64, ptr %i.bc, align 8, !range !23, !noundef !6 ; 2 uses
  %.not164 = icmp eq i64 %i.cq, -2
  br i1 %.not164, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.k

bb.k:                                             ; preds = %bb.eh, %bb.dk, %._crit_edge358, %._crit_edge, %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.cu = load i64, ptr %i.bh, align 8, !range !20, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !6 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 288230376151711744
  call void @llvm.assume(i1 %i.cx)
  %.idx365 = shl nuw nsw i64 %i.cw, 5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.ct, ptr %i.u, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr %i.ct, ptr %.sroa.599.0..sroa_idx, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.cu, ptr %.sroa.6100.0..sroa_idx, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store ptr %i.cy, ptr %.sroa.7101.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8245)
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringbEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringbEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.exit.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringbEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.exit.lr.ph: ; preds = %bb.k
  %.sroa.8245.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringbEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.exit

bb.l:                                             ; preds = %bb.i
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %.sroa.611.0.copyload, ptr %i.ay, align 8
  store i64 %.sroa.8.0.copyload, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr %i.ay, ptr %i.ax, align 8
  store ptr @_RNvXNtCseHTIzroA4w0_6object4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  %i.da = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @48, ptr noundef nonnull %i.ax)
          to label %bb.bo unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.m:                                             ; preds = %bb.i
  %i.db = inttoptr i64 %.sroa.8.0.copyload to ptr ; 2 uses
  %i.dc = load ptr, ptr %i.ce, align 8, !nonnull !6, !noundef !6
  %i.dd = load i64, ptr %i.cf, align 8, !noundef !6
  %i.de = invoke noundef zeroext i1 @_RNvNtCsiZvaoMVVkxx_15object_examples7objdump11find_member(ptr noalias nofree noundef nonnull align 8 %i.dc, i64 noundef %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %.sroa.10.0.copyload)
          to label %bb.n unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

bb.n:                                             ; preds = %bb.m
  br i1 %i.de, label %bb.o, label %.thread272

bb.o:                                             ; preds = %bb.n
  %i.df = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 3 to ptr))
          to label %bb.p unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not165 = icmp eq ptr %i.df, null
  br i1 %.not165, label %bb.q, label %_RINvNtCsiZvaoMVVkxx_15object_examples7objdump11dump_importNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBW_10StderrLockECs8aoZCP6pRcV_7objdump.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %.sroa.10.0.copyload)
          to label %bb.r unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.bb, ptr %i.ba, align 8
  store ptr @_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs8aoZCP6pRcV_7objdump, ptr %.sroa.4118.0..sroa_idx, align 8
  %i.dg = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @47, ptr noundef nonnull %i.ba)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #10
          to label %.thread255 unwind label %bb.bn

bb.t:                                             ; preds = %bb.r
  %.not166 = icmp eq ptr %i.dg, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.di = load i64, ptr %i.bb, align 8, !range !24, !noundef !6
  %i.dj = icmp eq i64 %i.di, -1                   ; 2 uses
  br i1 %.not166, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.dj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.thread255 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.t
  br i1 %i.dj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit202, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i197 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.thread255 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i197: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit202 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit202: ; preds = %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.do = icmp eq i64 %.sroa.11.0.copyload, 0
  %i.dp = icmp eq i64 %.sroa.12.0.copyload, 0
  %or.cond504 = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond504, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit202
  %i.dq = icmp ult i64 %3, %.sroa.11.0.copyload
  %i.dr = sub nuw nsw i64 %3, %.sroa.11.0.copyload
  %.not.i = icmp ugt i64 %.sroa.12.0.copyload, %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.11.0.copyload
  %or.cond = select i1 %i.dq, i1 true, i1 %.not.i
  br i1 %or.cond, label %.thread272, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit202
  %.sroa.9.0 = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit202 ], [ %.sroa.12.0.copyload, %bb.ac ] ; 3 uses
  %.sroa.621.0 = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit202 ], [ %i.ds, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RINvMs3_NtCseHTIzroA4w0_6object4readNtB6_8FileKind8parse_atRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.621.0, i64 noundef %.sroa.9.0, i64 noundef 0)
          to label %bb.ae unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.val = load ptr, ptr %i.az, align 8, !noundef !6
  %.val195 = load i8, ptr %i.cg, align 8
  %.not.i203 = icmp eq ptr %.val, null
  %i.dt = icmp eq i8 %.val195, 3
  %spec.select.i = select i1 %.not.i203, i1 %i.dt, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br i1 %spec.select.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = invoke fastcc noundef ptr @_RINvNtCsiZvaoMVVkxx_15object_examples7objdump11dump_objectNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBW_10StderrLockECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.621.0, i64 noundef %.sroa.9.0)
          to label %bb.bm unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !25
  invoke void @_RINvMNtNtNtCseHTIzroA4w0_6object4read4coff6importNtB3_10ImportFile5parseRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.621.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.0)
          to label %.noexc206 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc206:                                        ; preds = %bb.ag
  %i.dv = load i8, ptr %i.ch, align 8, !range !30, !noalias !25, !noundef !6 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, -1
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !25
  %i.dx = load ptr, ptr %i.q, align 8, !noalias !25, !nonnull !6, !noundef !6
  %i.dy = load i64, ptr %i.ci, align 8, !noalias !25, !noundef !6
  store ptr %i.dx, ptr %i.p, align 8, !noalias !25
  store i64 %i.dy, ptr %i.co, align 8, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25
  store ptr %i.p, ptr %i.o, align 8, !noalias !25
  store ptr @_RNvXNtCseHTIzroA4w0_6object4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !25
  %i.dz = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @9, ptr noundef nonnull %i.o)
          to label %.noexc207 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc207:                                        ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25
  br label %_RINvNtCsiZvaoMVVkxx_15object_examples7objdump11dump_importNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBW_10StderrLockECs8aoZCP6pRcV_7objdump.exit

bb.ai:                                            ; preds = %.noexc206
  %i.ea = load ptr, ptr %i.q, align 8, !noalias !25, !nonnull !6, !noundef !6 ; 2 uses
  %i.eb = load ptr, ptr %i.ci, align 8, !noalias !25, !nonnull !6, !noundef !6
  %i.ec = load i64, ptr %i.cj, align 8, !noalias !25, !noundef !6
  %i.ed = load ptr, ptr %i.ck, align 8, !noalias !25, !nonnull !6, !noundef !6
  %i.ee = load i64, ptr %i.cl, align 8, !noalias !25, !noundef !6
  %i.ef = load ptr, ptr %i.cm, align 8, !noalias !25, !noundef !6 ; 2 uses
  %i.eg = load i64, ptr %i.cn, align 8, !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25
  %i.eh = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 53 to ptr))
          to label %.noexc208 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc208:                                        ; preds = %bb.ai
  %.not.i204 = icmp eq ptr %i.eh, null
  br i1 %.not.i204, label %bb.aj, label %_RINvNtCsiZvaoMVVkxx_15object_examples7objdump11dump_importNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBW_10StderrLockECs8aoZCP6pRcV_7objdump.exit.thread

bb.aj:                                            ; preds = %.noexc208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 6
  %.sroa.037.0.copyload.i = load i16, ptr %i.ei, align 1, !noalias !31 ; 2 uses
  switch i16 %.sroa.037.0.copyload.i, label %bb.ao [
    i16 452, label %bb.ak
    i16 -21916, label %bb.al
    i16 -22975, label %bb.al
    i16 332, label %bb.am
    i16 -31132, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj, %bb.aj
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sink.i = phi i8 [ 11, %bb.an ], [ 10, %bb.am ], [ 1, %bb.al ], [ 4, %bb.ak ], [ 0, %bb.aj ]
  store i8 %.sink.i, ptr %i.n, align 1, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !25
  store ptr %i.n, ptr %i.m, align 8, !noalias !25
  store ptr @_RNvXs8_NtCseHTIzroA4w0_6object6commonNtB5_12ArchitectureNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !25
  %i.ej = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @1, ptr noundef nonnull %i.m)
          to label %.noexc209 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc209:                                        ; preds = %bb.ao
  %.not71.i = icmp eq ptr %i.ej, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25
  br i1 %.not71.i, label %bb.ap, label %_RINvNtCsiZvaoMVVkxx_15object_examples7objdump11dump_importNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBW_10StderrLockECs8aoZCP6pRcV_7objdump.exit.thread

bb.ap:                                            ; preds = %.noexc209
  %i.ek = icmp eq i16 %.sroa.037.0.copyload.i, -22975
  br i1 %i.ek, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !25
  store i8 1, ptr %i.l, align 1, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25
  store ptr %i.l, ptr %i.k, align 8, !noalias !25
  store ptr @_RNvXsg_NtCseHTIzroA4w0_6object6commonNtB5_15SubArchitectureNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !25
  %i.el = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @2, ptr noundef nonnull %i.k)
          to label %.noexc210 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc210:                                        ; preds = %bb.aq
  %.not72.i = icmp eq ptr %i.el, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25
  br i1 %.not72.i, label %bb.ar, label %_RINvNtCsiZvaoMVVkxx_15object_examples7objdump11dump_importNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBW_10StderrLockECs8aoZCP6pRcV_7objdump.exit.thread

bb.ar:                                            ; preds = %.noexc210, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !25
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ec)
          to label %.noexc211 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc211:                                        ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25
  store ptr %i.j, ptr %i.i, align 8, !noalias !25
  store ptr @_RNvXsa_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8aoZCP6pRcV_7objdump, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !25
  %i.em = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @3, ptr noundef nonnull %i.i)
          to label %bb.at unwind label %bb.as, !noalias !31 ; 2 uses

bb.as:                                            ; preds = %.noexc211
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #10
          to label %.thread255 unwind label %bb.bl, !noalias !31

bb.at:                                            ; preds = %.noexc211
  %.not73.i = icmp eq ptr %i.em, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25
  %i.eo = load i64, ptr %i.j, align 8, !range !24, !noalias !25, !noundef !6
  %i.ep = icmp eq i64 %i.eo, -1                   ; 2 uses
  br i1 %.not73.i, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i unwind label %bb.aw, !noalias !31

bb.aw:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread255 unwind label %bb.ax, !noalias !31

bb.ax:                                            ; preds = %bb.aw
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !noalias !31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit.i unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25
  br label %_RINvNtCsiZvaoMVVkxx_15object_examples7objdump11dump_importNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBW_10StderrLockECs8aoZCP6pRcV_7objdump.exit.thread

bb.ay:                                            ; preds = %bb.at
  br i1 %i.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit85.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i84.i unwind label %bb.ba, !noalias !31

bb.ba:                                            ; preds = %bb.az
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread255 unwind label %bb.bb, !noalias !31

bb.bb:                                            ; preds = %bb.ba
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !noalias !31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i84.i: ; preds = %bb.az
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit85.i unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs8aoZCP6pRcV_7objdump.exit85.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i84.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ed, i64 noundef %i.ee)
          to label %.noexc217 unwind label %.thread268.loopexit.split-lp.loopexit.split-lp.loopexit

end_hunk_0
