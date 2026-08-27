Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.06?download=true
inline.NumInlined: 1559
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group:bb.a
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.10, 0
  br i1 %i.cr, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.11: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.thread.i.i.i.i.i.i.i.9
  %i.cs = load i32, ptr %2, align 1
  %i.ct = xor i32 1937075829, %i.cs
  %i.cu = getelementptr i8, ptr %2, i64 4
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = zext i16 %i.cv to i32
  %i.cx = xor i32 25701, %i.cw
  %i.cy = or i32 %i.ct, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.thread.i.i.i.i.i.i.i.9
  %i.dc = load i64, ptr %2, align 1
  %i.dd = xor i64 4195799526678293603, %i.dc
  %i.de = getelementptr i8, ptr %2, i64 5
  %i.df = load i64, ptr %i.de, align 1
  %i.dg = xor i64 8027510623413353081, %i.df
  %i.dh = or i64 %i.dd, %i.dg
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = zext i1 %i.di to i32
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i
  br i1 %i.cq, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.2

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.thread.i.i.i.i.i.i.i.9, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.10, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.11, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.4
  %i.dl = phi i1 [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.4 ], [ %i.cq, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.thread.i.i.i.i.i.i.i.9 ], [ %i.cq, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.11 ], [ %i.cq, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.10 ]
  %i.dm = phi i1 [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.4 ], [ %i.cp, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.thread.i.i.i.i.i.i.i.9 ], [ %i.cp, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.11 ], [ %i.cp, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.10 ] ; 2 uses
  %i.dn = icmp eq i64 %3, 18                      ; 3 uses
  br i1 %i.dn, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.1, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.1: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i
  %i.do = load i128, ptr %2, align 1
  %i.dp = xor i128 140194072295246486357016383295830191203, %i.do
  %i.dq = getelementptr i8, ptr %2, i64 16
  %i.dr = load i16, ptr %i.dq, align 1
  %i.ds = zext i16 %i.dr to i128
  %i.dt = xor i128 31092, %i.ds
  %i.du = or i128 %i.dp, %i.dt
  %i.dv = icmp ne i128 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.1, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i
  br i1 %i.dl, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.2

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1
  %i.dy = phi i1 [ true, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread ], [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1 ]
  %i.dz = phi i1 [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread ], [ %i.dn, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1 ]
  %i.ea = phi i1 [ %i.cp, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread ], [ %i.dm, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1 ]
  %i.eb = load i128, ptr %2, align 1
  %i.ec = xor i128 146819401967945596156570848845927902307, %i.eb
  %i.ed = getelementptr i8, ptr %2, i64 3
  %i.ee = load i128, ptr %i.ed, align 1
  %i.ef = xor i128 153460390928485099814616162014219300976, %i.ee
  %i.eg = or i128 %i.ec, %i.ef
  %i.eh = icmp ne i128 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.2

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.2: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1
  %i.ek = phi i1 [ true, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread ], [ %i.dy, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2 ], [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1 ]
  %i.el = phi i1 [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread ], [ %i.dz, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2 ], [ %i.dn, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1 ] ; 2 uses
  %i.em = phi i1 [ %i.cp, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread ], [ %i.ea, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2 ], [ %i.dm, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1 ]
  %i.en = phi i1 [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.thread ], [ true, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2 ], [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.1 ]
  br i1 %i.el, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.3, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.3

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.3: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.2
  %i.eo = load i128, ptr %2, align 1
  %i.ep = xor i128 154696116302340464612194297896262790243, %i.eo
  %i.eq = getelementptr i8, ptr %2, i64 16
  %i.er = load i16, ptr %i.eq, align 1
  %i.es = zext i16 %i.er to i128
  %i.et = xor i128 25701, %i.es
  %i.eu = or i128 %i.ep, %i.et
  %i.ev = icmp ne i128 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.3

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.3: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.3, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.2
  br i1 %i.e, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.4, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.4

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.4: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.3
  %i.ey = load i64, ptr %2, align 1
  %i.ez = xor i64 4195799526678293603, %i.ey
  %i.fa = getelementptr i8, ptr %2, i64 7
  %i.fb = load i64, ptr %i.fa, align 1
  %i.fc = xor i64 8751168572450238010, %i.fb
  %i.fd = or i64 %i.ez, %i.fc
  %i.fe = icmp ne i64 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.4

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.4: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.4, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.3
  br i1 %i.em, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.5, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.5

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.5: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.4
  %i.fh = load i128, ptr %2, align 1
  %i.fi = icmp ne i128 132141124257606146045196754453394975843, %i.fh
  %i.fj = zext i1 %i.fi to i32
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.5

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.5: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.5, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.4
  %i.fl = icmp eq i64 %3, 12                      ; 2 uses
  br i1 %i.fl, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.6, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.6

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.6: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.5
  %i.fm = load i64, ptr %2, align 1
  %i.fn = xor i64 4195799526678293603, %i.fm
  %i.fo = getelementptr i8, ptr %2, i64 8
  %i.fp = load i32, ptr %i.fo, align 1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = xor i64 1718773104, %i.fq
  %i.fs = or i64 %i.fn, %i.fr
  %i.ft = icmp ne i64 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.6

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.6: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.6, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.5
  br i1 %i.en, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.7, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.7

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.7: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.6
  %i.fw = load i128, ptr %2, align 1
  %i.fx = xor i128 154706623621103865918266242345407704163, %i.fw
  %i.fy = getelementptr i8, ptr %2, i64 3
  %i.fz = load i128, ptr %i.fy, align 1
  %i.ga = xor i128 146793563361879840647532572474248622192, %i.fz
  %i.gb = or i128 %i.fx, %i.ga
  %i.gc = icmp ne i128 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.7

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.7: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.7, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.6
  br i1 %i.ek, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.8, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.8

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.8: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.7
  %i.gf = load i64, ptr %2, align 1
  %i.gg = xor i64 4195799526678293603, %i.gf
  %i.gh = getelementptr i8, ptr %2, i64 5
  %i.gi = load i64, ptr %i.gh, align 1
  %i.gj = xor i64 7308349836371835513, %i.gi
  %i.gk = or i64 %i.gg, %i.gj
  %i.gl = icmp ne i64 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.8

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.8: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.8, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.7
  br i1 %i.el, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.9, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.9

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.9: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.8
  %i.go = load i128, ptr %2, align 1
  %i.gp = xor i128 148091515014581546518141897709711879267, %i.go
  %i.gq = getelementptr i8, ptr %2, i64 16
  %i.gr = load i16, ptr %i.gq, align 1
  %i.gs = zext i16 %i.gr to i128
  %i.gt = xor i128 29557, %i.gs
  %i.gu = or i128 %i.gp, %i.gt
  %i.gv = icmp ne i128 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.9

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.9: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.9, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.8
  br i1 %i.fl, label %_RNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0B5_.exit.i.i.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtB1A_7helpers19lint_eq_or_in_group0EB1A_.exit

_RNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0B5_.exit.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.9
  %i.gy = load i64, ptr %2, align 1
  %i.gz = xor i64 4207328954135311730, %i.gy
  %i.ha = getelementptr i8, ptr %2, i64 8
  %i.hb = load i32, ptr %i.ha, align 1
  %i.hc = zext i32 %i.hb to i64
  %i.hd = xor i64 1819042106, %i.hc
  %i.he = or i64 %i.gz, %i.hd
  %i.hf = icmp ne i64 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtB1A_7helpers19lint_eq_or_in_group0EB1A_.exit

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.1, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.2, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.3, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.4, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.5, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.6, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.7, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.8, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.9, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.10, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.11, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.1, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.3, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.4, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.5, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.6, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.7, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.8, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.9, %_RNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0B5_.exit.i.i.i.i
  %.sroa.0.0.i3.i.ph = phi ptr [ @999, %_RNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0B5_.exit.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @985, i64 504), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.9 ], [ @985, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @985, i64 56), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.1 ], [ getelementptr inbounds nuw (i8, ptr @985, i64 112), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.2 ], [ getelementptr inbounds nuw (i8, ptr @985, i64 168), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.3 ], [ getelementptr inbounds nuw (i8, ptr @985, i64 224), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.4 ], [ getelementptr inbounds nuw (i8, ptr @985, i64 280), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.5 ], [ getelementptr inbounds nuw (i8, ptr @985, i64 336), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.6 ], [ getelementptr inbounds nuw (i8, ptr @985, i64 392), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.7 ], [ getelementptr inbounds nuw (i8, ptr @985, i64 448), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.i.i.i.i.i.i.i.8 ], [ @195, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @195, i64 56), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.1 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 112), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.2 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 168), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.3 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 224), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.4 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 280), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.5 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 336), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.6 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 392), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.7 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 448), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.8 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 504), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.9 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 560), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.10 ], [ getelementptr inbounds nuw (i8, ptr @195, i64 616), %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBV_9generated5lints9LintGroupEE8call_mutBV_.exit.i.i.i.i.i.i.i.11 ] ; 2 uses
  %i.hi = load ptr, ptr %.sroa.0.0.i3.i.ph, align 8, !nonnull !4, !align !193, !noundef !4
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i.ph, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !4
  %i.hl = call noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.hi, i64 noundef %i.hk)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtB1A_7helpers19lint_eq_or_in_group0EB1A_.exit

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtB1A_7helpers19lint_eq_or_in_group0EB1A_.exit: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.9, %_RNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0B5_.exit.i.i.i.i, %bb.b, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ %i.hl, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints9LintGroupEB1g_ERB1G_NCINvXs_B2_IB15_B14_B1g_ENtNtNtB6_6traits8iterator8Iterator4findNCNvNtB1M_7helpers19lint_eq_or_in_group0E0EB1M_.exit.i ], [ false, %_RNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0B5_.exit.i.i.i.i ], [ false, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs6oosyzwIepl_6ide_db7helpers19lint_eq_or_in_group0INtB7_5FnMutTRRNtNtNtBU_9generated5lints9LintGroupEE8call_mutBU_.exit.thread.i.i.i.i.i.i.i.9 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i8 noundef range(i8 0, 4) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %.thread

default.unreachable31:                            ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.k, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !1090

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  store i64 2, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.l, align 8
  br label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory10___CALLSITE) #35 ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.05.0 = phi i8 [ %i.m, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.b ]
  %i.n = load ptr, ptr @_RNvNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory10___CALLSITE, align 8, !nonnull !4, !align !193, !noundef !4
  %i.o = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n, i8 noundef %.sroa.05.0)
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @_RNvNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory10___CALLSITE, align 8, !nonnull !4, !align !193, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.q, ptr %i.r, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pr = load i64, ptr %i.e, align 8, !alias.scope !1900, !noalias !1903
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit unwind label %bb.g, !noalias !1903

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #37
          to label %common.resume unwind label %bb.h, !noalias !1903

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1903
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %eh.lpad-body24, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit: ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !1874, !noundef !4
  switch i8 %i.y, label %default.unreachable31 [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.k
  ]

bb.i:                                             ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit20, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit, %bb.t, %bb.l, %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %.sroa.07.0 = phi i1 [ false, %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit ], [ false, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit ], [ false, %bb.t ], [ true, %bb.l ], [ false, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit20 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.z = invoke { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.z unwind label %.body.thread27 ; 2 uses

bb.j:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !4 ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %bb.n

bb.k:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit, %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.ad = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory18path_segment_crate(ptr noundef nonnull align 8 %0)
          to label %bb.u unwind label %.body.thread27 ; 3 uses

bb.l:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  br label %bb.i

bb.m:                                             ; preds = %bb.j
  %i.ae = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory17path_segment_self(ptr noundef nonnull align 8 %0)
          to label %bb.o unwind label %.body.thread27 ; 3 uses

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %i.ab, ptr %i.ag, align 1
  store ptr %0, ptr %i.c, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB26_3ops5range5RangehENCNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory0EEB3k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.c)
          to label %bb.t unwind label %.body.thread27

.body.thread27:                                   ; preds = %bb.z, %bb.i, %bb.k, %bb.m, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %i.ah = load i64, ptr %i.w, align 8, !alias.scope !1905, !noundef !4 ; 3 uses
  %i.ai = load i64, ptr %i.d, align 8, !range !912, !alias.scope !1905, !noundef !4
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.p, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !1905, !noundef !4
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !noalias !1905
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %.body.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ae) #35
          to label %.body.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.o, %bb.p
  %i.aq = load ptr, ptr %i.v, align 8, !alias.scope !1905, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ah
  store ptr %i.ae, ptr %i.ar, align 8
  %i.as = add i64 %i.ah, 1
  store i64 %i.as, ptr %i.w, align 8, !alias.scope !1905
  br label %bb.i

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.u:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %i.at = load i64, ptr %i.w, align 8, !alias.scope !1908, !noundef !4 ; 3 uses
  %i.au = load i64, ptr %i.d, align 8, !range !912, !alias.scope !1908, !noundef !4
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.v, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit20

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentE8push_mutCs6oosyzwIepl_6ide_db.exit20 unwind label %bb.w
end_hunk_0
